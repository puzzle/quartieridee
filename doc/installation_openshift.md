# Installation auf Openshift

# Vorgehen

## Projekt aufsetzen

Projekt festlegen
```bash
openshift_user=<user>
project=pitc-quartieridee-int
cluster=<openshift cluster>
```

In Cluster einloggen

```bash
oc login $cluster -u $openshift_user
```

Projekt anlegen

```bash
oc new-project $project
```

Benötigte User berechtigen

```bash
oc policy add-role-to-user admin <user>
...
```

Quartieridee-Configmanagement clonen

```bash
git clone git@ssh.gitlab.puzzle.ch:pitc_ruby/quartieridee-configmanagement.git
cd quartieridee-configmanagement
cm_path=${pwd}
```

Wenn nötig im Projektoverlay `persistence.yaml` anpassen (Standardmässig sind alle PVs 1 GiB gross).

Dann overlay testen

```bash
kustomize build overlays/$project | tail # Failt bei Problemen
```

Und committen:

```bash
git add overlays/$project
git status
git commit -m "Add overlay $project"
git push
```

Im Binkli-Repo

```bash
binkli_path=$(pwd)
git pull
```

Umgebungs-YAML im Ordner `projects` gemäss der Ausgabe der folgenden Anweisung  anpassen:

```bash
cat projects/puzzletime/puzzle/integration.yml |\
  sed "s/pitc-puzzletime-int/$project/g; /^#/d" |\
  sed '1d'
```

Projekt aufsetzen

```bash
bin/cli stages | grep quartieridee # Richtige umgebung kopieren (ganze Zeile)
stage='<stage>' # <stage> mit Umgebung ersetzen

oc login https://ose3-master.puzzle.ch:8443 -u $openshift_user
bin/cli pull_secrets $stage

oc login https://openshift.puzzle.ch -u $openshift_user
bin/cli create $stage
 
git add projects
git commit -m "Make $project a light project"
git push
```

Wieder ins Konfigmanagement-Repo wechseln. Dort die OpenShift-Konfiguration einspielen

```bash
cd $cm_path
bin/apply_config $project
```

Im `ingress.yml` das Zertifikat mit folgendem ersetzen.

```bash
oc get secrets certificate-ca -o json | jq -r '.data["tls.crt"]' | base64 -d 
```

Dann nochmals prüfen und anwenden

```bash
kustomize build overlays/$project | tail # Failt bei Problemen
git add overlays/$project
git status
git commit -m "Modify ingress certificate"
git push
bin/apply_config $project
```



Warten, bis die Images importiert werden (Tags sind sichtbar)

```bash
watch 'oc get is; oc get pods'
```

### DB

Image taggen, damit DBs raufkommen

```bash
oc get is -o name -l used-in-deployment=true |\
    cut -d '/' -f 2 |\
    grep postgresql |\
    xargs -n 1 -I % oc tag %:latest %:release
```

Warten bis DB pod läuft

Auf neuem Cluster

```bash
pod=$(oc get pod -o name | grep -P 'postgresql-(?!backup)' | cut -d / -f 2)
oc rsh $pod
psql
CREATE database "quartieridee_production";
\c quartieridee_production
CREATE EXTENSION IF NOT EXISTS "ltree";
CREATE EXTENSION IF NOT EXISTS "pg_trgm";
\q
exit
```

## Umgebung starten

Images taggen, damit Rails raufkommt

```bash
oc get is -o name -l used-in-deployment=true |\
    cut -d '/' -f 2 |\
    xargs -n 1 -I % oc tag %:latest %:release
```

Auf Pods warten:

```bash
oc get pod -w
```

URL ausgeben, ansurfen und profitieren:

```bash
echo "https://$(oc get route rails -o json | jq -r .spec.host)"
```

## Jenkins Zugriff auf das OpenShift-Projekt geben

Damit Jenkins OpenShift steuern kann, muss ein entsprechendes Token in den [Credentials](https://jenkins.puzzle.ch/view/ose3-rails/job/rails-on-openshift/job/pitc-puzzletime-deploy/credentials/) hinterlegt werden.

Nach dem Aufsetzen des Projekts findet man das Token mittels

```bash
oc get secret | grep jenkins-token | tail -n 1 | cut -f 1 -d' ' |\
  xargs oc get secret -o json  |\
  jq -r .data.token |\
  base64 -d |\
  xargs echo
```

Den ausgegebenen Wert kopieren.

Danach in Jenkins ein neues Secret erstellen (siehe unten) oder das bestehende editieren.

* _Add Credentials_ klicken
* Ausfüllen
  * Kind: _Username with password_
  * Username: leer
  * Password: Kopiertes Token von oben
  * Id: `<Openshift-Projektname>_ose_token`
  * Description: Wie Id

## DNS-Einträge anpassen

Bei der DNS Verwaltung müssen die Einträge angepasst/erstellt werden.
