INSERT INTO "decidim_content_blocks" ("decidim_organization_id", "manifest_name", "scope", "settings", "published_at", "weight", "images") VALUES
(1,	'hero',	'homepage',	NULL,	'2020-04-22 08:05:30.989317',	10,	'{}'),
(1,	'sub_hero',	'homepage',	NULL,	'2020-04-22 08:05:31.011785',	20,	'{}'),
(1,	'highlighted_content_banner',	'homepage',	NULL,	'2020-04-22 08:05:31.020832',	30,	'{}'),
(1,	'how_to_participate',	'homepage',	NULL,	'2020-04-22 08:05:31.0311',	40,	'{}'),
(1,	'last_activity',	'homepage',	NULL,	'2020-04-22 08:05:31.039948',	50,	'{}'),
(1,	'stats',	'homepage',	NULL,	'2020-04-22 08:05:31.047591',	60,	'{}'),
(1,	'footer_sub_hero',	'homepage',	NULL,	'2020-04-22 08:05:31.054693',	70,	'{}'),
(1,	'upcoming_events',	'homepage',	NULL,	'2020-04-22 08:05:31.061716',	80,	'{}');

INSERT INTO "decidim_contextual_help_sections" ("section_id", "organization_id", "content") VALUES
('participatory_processes',	1,	'{"de": "<p>A <strong>Partizipationsprozess</strong> ist eine Folge von Partizipations Aktivitäten (zB zuerst eine Umfrage ausfüllen, dann Vorschläge machen, so dass sie diskutiert in face-to-face oder virtuellen Sitzungen, und sie schließlich die Priorisierung) mit dem Ziel , die Definition und Treffen eine Entscheidung zu einem bestimmten Thema.</p> <p>Beispiele für partizipatorische Prozesse sind: ein Verfahren zur Wahl von Ausschussmitgliedern (bei dem die Kandidaturen zuerst präsentiert, anschließend debattiert und schließlich eine Kandidatur ausgewählt wird), die Bürgerhaushalte (bei denen Vorschläge gemacht, wirtschaftlich bewertet und mit dem verfügbaren Geld abgestimmt werden). ein strategischer Planungsprozess, die gemeinschaftliche Ausarbeitung einer Vorschrift oder Norm, die Gestaltung eines städtischen Raums oder die Erstellung eines öffentlichen Planes.</p>\n", "en": "<p>A <strong>participatory process</strong> is a sequence of participatory activities (e.g. first filling out a survey, then making proposals, discussing them in face-to-face or virtual meetings, and finally prioritizing them) with the aim of defining and making a decision on a specific topic.</p> <p>Examples of participatory processes are: a process of electing committee members (where candidatures are first presented, then debated and finally a candidacy is chosen), participatory budgets (where proposals are made, valued economically and voted on with the money available), a strategic planning process, the collaborative drafting of a regulation or norm, the design of an urban space or the production of a public policy plan.</p>\n"}'),
('assemblies',	1,	'{"de": "<p>Eine Versammlung ist eine Gruppe von Mitgliedern einer Organisation, die sich regelmäßig treffen, um Entscheidungen über einen bestimmten Bereich oder einen bestimmten Bereich der Organisation zu treffen.</p> <p>Versammlungen halten Meetings ab, einige sind privat und andere sind offen. Wenn sie offen sind, ist es möglich, an ihnen teilzunehmen (z. B. Teilnahme, wenn die Kapazität es erlaubt, Punkte auf die Tagesordnung setzen oder Vorschläge und Entscheidungen dieses Organs kommentieren).</p> <p>Beispiele: Eine Generalversammlung (die einmal im Jahr zusammentritt, um die wichtigsten Aktionslinien der Organisation sowie ihre Exekutivorgane per Abstimmung festzulegen), ein Gleichstellungsbeirat (der alle zwei Monate zusammentritt, um Vorschläge zur Verbesserung der Geschlechterbeziehungen vorzulegen In der Organisation sind eine Evaluierungskommission (die sich jeden Monat zur Überwachung eines Prozesses trifft) oder eine Garantieeinrichtung (die Vorfälle, Missbräuche oder Vorschläge zur Verbesserung der Entscheidungsverfahren sammelt) Beispiele für Versammlungen.</p>\n", "en": "<p>An <strong>assembly</strong> is a group of members of an organization who meet periodically to make decisions about a specific area or scope of the organization.</p> <p>Assemblies hold meetings, some are private and some are open. If they are open, it is possible to participate in them (for example: attending if the capacity allows it, adding points to the agenda, or commenting on the proposals and decisions taken by this organ).</p> <p>Examples: A general assembly (which meets once a year to define the organisation''s main lines of action as well as its executive bodies by vote), an equality advisory council (which meets every two months to make proposals on how to improve gender relations in the organisation), an evaluation commission (which meets every month to monitor a process) or a guarantee body (which collects incidents, abuses or proposals to improve decision-making procedures) are all examples of assemblies.</p>\n"}');

INSERT INTO "decidim_organizations" ("name", "host", "default_locale", "available_locales", "created_at", "updated_at", "description", "logo", "twitter_handler", "show_statistics", "favicon", "instagram_handler", "facebook_handler", "youtube_handler", "github_handler", "official_img_header", "official_img_footer", "official_url", "reference_prefix", "secondary_hosts", "available_authorizations", "header_snippets", "cta_button_text", "cta_button_path", "enable_omnipresent_banner", "omnipresent_banner_title", "omnipresent_banner_short_description", "omnipresent_banner_url", "highlighted_content_banner_enabled", "highlighted_content_banner_title", "highlighted_content_banner_short_description", "highlighted_content_banner_action_title", "highlighted_content_banner_action_subtitle", "highlighted_content_banner_action_url", "highlighted_content_banner_image", "tos_version", "badges_enabled", "send_welcome_notification", "welcome_notification_subject", "welcome_notification_body", "users_registration_mode", "id_documents_methods", "id_documents_explanation_text", "user_groups_enabled", "smtp_settings", "colors", "force_users_to_authenticate_before_access_organization", "omniauth_settings", "rich_text_editor_in_public_views", "admin_terms_of_use_body", "time_zone") VALUES
('Quartieridee Wipkingen',	'localhost',	'de',	'{en,de}',	'2020-04-22 08:05:30.883513',	'2020-04-22 08:05:30.929182',	NULL,	NULL,	NULL,	'1',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'quwi',	'{}',	'{}',	NULL,	NULL,	NULL,	'0',	NULL,	NULL,	NULL,	'0',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'2020-04-22 08:05:30.922317',	'1',	'1',	NULL,	NULL,	0,	'{online}',	'{}',	'1',	'{"from": "quartieridee@puzzle.ch", "port": 1025, "address": "mail", "user_name": "quartieridee@puzzle.ch", "encrypted_password": null}',	'{}',	'0',	'{"omniauth_settings_developer_icon": "", "omniauth_settings_developer_enabled": false}',	'0',	NULL,	'UTC');

INSERT INTO "decidim_searchable_resources" ("content_a", "content_b", "content_c", "content_d", "locale", "datetime", "decidim_scope_id", "decidim_participatory_space_type", "decidim_participatory_space_id", "decidim_organization_id", "resource_type", "resource_id", "created_at", "updated_at") VALUES
('Puzzle',	'',	'',	'',	'en',	'2020-04-22 08:05:31.243452',	NULL,	NULL,	NULL,	1,	'Decidim::User',	1,	'2020-04-22 08:05:31.392264',	'2020-04-22 08:05:31.392264'),
('Puzzle',	'',	'',	'',	'de',	'2020-04-22 08:05:31.243452',	NULL,	NULL,	NULL,	1,	'Decidim::User',	1,	'2020-04-22 08:05:31.396777',	'2020-04-22 08:05:31.396777');

INSERT INTO "decidim_static_page_topics" ("title", "description", "organization_id", "weight", "show_in_footer") VALUES
('{"de": "Allgemeine Hilfe", "en": "General Help"}',	'{"de": "Lesen Sie mehr über Quartieridee Wipkingen", "en": "Read more about Quartieridee Wipkingen"}',	1,	0,	'0');

INSERT INTO "decidim_static_pages" ("title", "slug", "content", "decidim_organization_id", "created_at", "updated_at", "weight", "show_in_footer", "topic_id") VALUES
('{"de": "Standardtitel für faq", "en": "Default title for faq", "fr": "Titre par défaut pour faq", "it": "Titolo predefinito per faq"}',	'faq',	'{"de": "Fügen Sie der statischen Seite faq im Admin-Dashboard sinnvollen Inhalt hinzu.", "en": "Please add meaningful content to the faq static page on the admin dashboard.", "fr": "Ajoutez un contenu pertinent à la page faq en allant sur l''interface d''administration.", "it": "Si prega di aggiungere contenuto significativo alla pagina statica faq sul pannello di amministrazione."}',	1,	'2020-04-22 08:05:30.915424',	'2020-04-22 08:05:30.915424',	NULL,	'1',	NULL),
('{"de": "Standardtitel für terms-and-conditions", "en": "Default title for terms-and-conditions", "fr": "Titre par défaut pour terms-and-conditions", "it": "Titolo predefinito per terms-and-conditions"}',	'terms-and-conditions',	'{"de": "Fügen Sie der statischen Seite terms-and-conditions im Admin-Dashboard sinnvollen Inhalt hinzu.", "en": "Please add meaningful content to the terms-and-conditions static page on the admin dashboard.", "fr": "Ajoutez un contenu pertinent à la page terms-and-conditions en allant sur l''interface d''administration.", "it": "Si prega di aggiungere contenuto significativo alla pagina statica terms-and-conditions sul pannello di amministrazione."}',	1,	'2020-04-22 08:05:30.922317',	'2020-04-22 08:05:30.922317',	NULL,	'1',	NULL),
('{"de": "Standardtitel für accessibility", "en": "Default title for accessibility", "fr": "Titre par défaut pour accessibility", "it": "Titolo predefinito per accessibility"}',	'accessibility',	'{"de": "Fügen Sie der statischen Seite accessibility im Admin-Dashboard sinnvollen Inhalt hinzu.", "en": "Please add meaningful content to the accessibility static page on the admin dashboard.", "fr": "Ajoutez un contenu pertinent à la page accessibility en allant sur l''interface d''administration.", "it": "Si prega di aggiungere contenuto significativo alla pagina statica accessibility sul pannello di amministrazione."}',	1,	'2020-04-22 08:05:30.938337',	'2020-04-22 08:05:30.938337',	NULL,	'1',	NULL),
('{"de": "Was kann ich in Quartieridee Wipkingen?", "en": "What can I do in Quartieridee Wipkingen?"}',	'help',	'{"de": "<p>In Quartieridee Wipkingen Sie durch die Leerzeichen, die Sie im oberen Menü sehen, an verschiedenen Themen teilnehmen: Prozesse, Baugruppen, Initiativen, Konsultationen.</p> <p>In jedem Bereich finden Sie verschiedene Optionen für die Teilnahme: Vorschläge machen - einzeln oder mit anderen -, an Debatten teilnehmen, Prioritäten für umzusetzende Projekte setzen, persönliche Treffen und andere Aktionen besuchen.</p>\n", "en": "<p>In Quartieridee Wipkingen you can participate and decide on different topics, through the spaces you see in the top menu: Processes, Assemblies, Initiatives, Consultations.</p> <p>Within each one you will find different options to participate: make proposals - individually or with other people-, take part in debates, prioritize projects to implement, attend face-to-face meetings and other actions.</p>\n"}',	1,	'2020-04-22 08:05:30.95932',	'2020-04-22 08:05:30.95932',	0,	'0',	1),
('{"de": "Was ist ein partizipativer Prozess?", "en": "What is a participatory process?"}',	'participatory_processes',	'{"de": "<p>A <strong>Partizipationsprozess</strong> ist eine Folge von Partizipations Aktivitäten (zB zuerst eine Umfrage ausfüllen, dann Vorschläge machen, so dass sie diskutiert in face-to-face oder virtuellen Sitzungen, und sie schließlich die Priorisierung) mit dem Ziel , die Definition und Treffen eine Entscheidung zu einem bestimmten Thema.</p> <p>Beispiele für partizipatorische Prozesse sind: ein Verfahren zur Wahl von Ausschussmitgliedern (bei dem die Kandidaturen zuerst präsentiert, anschließend debattiert und schließlich eine Kandidatur ausgewählt wird), die Bürgerhaushalte (bei denen Vorschläge gemacht, wirtschaftlich bewertet und mit dem verfügbaren Geld abgestimmt werden). ein strategischer Planungsprozess, die gemeinschaftliche Ausarbeitung einer Vorschrift oder Norm, die Gestaltung eines städtischen Raums oder die Erstellung eines öffentlichen Planes.</p>\n", "en": "<p>A <strong>participatory process</strong> is a sequence of participatory activities (e.g. first filling out a survey, then making proposals, discussing them in face-to-face or virtual meetings, and finally prioritizing them) with the aim of defining and making a decision on a specific topic.</p> <p>Examples of participatory processes are: a process of electing committee members (where candidatures are first presented, then debated and finally a candidacy is chosen), participatory budgets (where proposals are made, valued economically and voted on with the money available), a strategic planning process, the collaborative drafting of a regulation or norm, the design of an urban space or the production of a public policy plan.</p>\n"}',	1,	'2020-04-22 08:05:30.964434',	'2020-04-22 08:05:30.964434',	NULL,	'0',	1),
('{"de": "Was sind Gremien?", "en": "What are assemblies?"}',	'assemblies',	'{"de": "<p>Eine Versammlung ist eine Gruppe von Mitgliedern einer Organisation, die sich regelmäßig treffen, um Entscheidungen über einen bestimmten Bereich oder einen bestimmten Bereich der Organisation zu treffen.</p> <p>Versammlungen halten Meetings ab, einige sind privat und andere sind offen. Wenn sie offen sind, ist es möglich, an ihnen teilzunehmen (z. B. Teilnahme, wenn die Kapazität es erlaubt, Punkte auf die Tagesordnung setzen oder Vorschläge und Entscheidungen dieses Organs kommentieren).</p> <p>Beispiele: Eine Generalversammlung (die einmal im Jahr zusammentritt, um die wichtigsten Aktionslinien der Organisation sowie ihre Exekutivorgane per Abstimmung festzulegen), ein Gleichstellungsbeirat (der alle zwei Monate zusammentritt, um Vorschläge zur Verbesserung der Geschlechterbeziehungen vorzulegen In der Organisation sind eine Evaluierungskommission (die sich jeden Monat zur Überwachung eines Prozesses trifft) oder eine Garantieeinrichtung (die Vorfälle, Missbräuche oder Vorschläge zur Verbesserung der Entscheidungsverfahren sammelt) Beispiele für Versammlungen.</p>\n", "en": "<p>An <strong>assembly</strong> is a group of members of an organization who meet periodically to make decisions about a specific area or scope of the organization.</p> <p>Assemblies hold meetings, some are private and some are open. If they are open, it is possible to participate in them (for example: attending if the capacity allows it, adding points to the agenda, or commenting on the proposals and decisions taken by this organ).</p> <p>Examples: A general assembly (which meets once a year to define the organisation''s main lines of action as well as its executive bodies by vote), an equality advisory council (which meets every two months to make proposals on how to improve gender relations in the organisation), an evaluation commission (which meets every month to monitor a process) or a guarantee body (which collects incidents, abuses or proposals to improve decision-making procedures) are all examples of assemblies.</p>\n"}',	1,	'2020-04-22 08:05:30.981305',	'2020-04-22 08:05:30.981305',	NULL,	'0',	1);

INSERT INTO "decidim_users" ("email", "encrypted_password", "reset_password_token", "reset_password_sent_at", "remember_created_at", "sign_in_count", "current_sign_in_at", "last_sign_in_at", "current_sign_in_ip", "last_sign_in_ip", "created_at", "updated_at", "invitation_token", "invitation_created_at", "invitation_sent_at", "invitation_accepted_at", "invitation_limit", "invited_by_type", "invited_by_id", "invitations_count", "decidim_organization_id", "confirmation_token", "confirmed_at", "confirmation_sent_at", "unconfirmed_email", "name", "locale", "avatar", "delete_reason", "deleted_at", "admin", "managed", "roles", "email_on_notification", "nickname", "personal_url", "about", "accepted_tos_version", "newsletter_token", "newsletter_notifications_at", "type", "extended_data", "following_count", "followers_count", "notification_types", "failed_attempts", "unlock_token", "locked_at", "officialized_at", "officialized_as", "admin_terms_accepted_at") VALUES
('quartieridee@puzzle.ch',	'$2a$11$qH.DkeQt71p//V1Bllp1PeK/iIaDmejUT9pqb2czv8LIBTTvFoF5G',	NULL,	NULL,	NULL,	1,	'2020-04-22 08:49:22.573739',	'2020-04-22 08:49:22.573739',	'172.30.0.1',	'172.30.0.1',	'2020-04-22 08:05:31.243452',	'2020-04-22 08:49:22.574528',	NULL,	'2020-04-22 08:05:31.242681',	'2020-04-22 08:05:31.242681',	'2020-04-22 08:49:22.49214',	NULL,	NULL,	NULL,	0,	1,	NULL,	'2020-04-22 08:49:22.49214',	NULL,	NULL,	'Puzzle',	NULL,	NULL,	NULL,	NULL,	'1',	'0',	'{}',	'0',	'puzzle',	NULL,	NULL,	'2020-04-22 08:05:30.922317',	'',	NULL,	'Decidim::User',	'{}',	0,	0,	'all',	0,	NULL,	NULL,	NULL,	NULL,	NULL);

INSERT INTO "versions" ("item_type", "item_id", "event", "whodunnit", "object", "created_at", "object_changes") VALUES
('Decidim::Organization',	1,	'create',	NULL,	NULL,	'2020-04-22 08:05:30.883513',	'---
id:
- 
- 1
name:
- 
- Quartieridee Wipkingen
host:
- 
- localhost
default_locale:
- 
- de
available_locales:
- []
- - en
  - de
created_at:
- 
- &1 2020-04-22 08:05:30.883513515 Z
updated_at:
- 
- *1
reference_prefix:
- 
- quwi
badges_enabled:
- false
- true
send_welcome_notification:
- false
- true
user_groups_enabled:
- false
- true
smtp_settings:
- 
- ''{"from":"quartieridee@puzzle.ch","user_name":"quartieridee@puzzle.ch","address":"mail","port":1025,"encrypted_password":null}''
omniauth_settings:
- 
- ''{"omniauth_settings_developer_enabled":false,"omniauth_settings_developer_icon":""}''
'),
('Decidim::StaticPage',	1,	'create',	NULL,	NULL,	'2020-04-22 08:05:30.915424',	'---
id:
- 
- 1
title:
- 
- ''{"en":"Default title for faq","de":"Standardtitel für faq","fr":"Titre par défaut
  pour faq","it":"Titolo predefinito per faq"}''
slug:
- 
- faq
content:
- 
- ''{"en":"Please add meaningful content to the faq static page on the admin dashboard.","de":"Fügen
  Sie der statischen Seite faq im Admin-Dashboard sinnvollen Inhalt hinzu.","fr":"Ajoutez
  un contenu pertinent à la page faq en allant sur l''''interface d''''administration.","it":"Si
  prega di aggiungere contenuto significativo alla pagina statica faq sul pannello
  di amministrazione."}''
decidim_organization_id:
- 
- 1
created_at:
- 
- &1 2020-04-22 08:05:30.915424098 Z
updated_at:
- 
- *1
show_in_footer:
- false
- true
'),
('Decidim::StaticPage',	2,	'create',	NULL,	NULL,	'2020-04-22 08:05:30.922317',	'---
id:
- 
- 2
title:
- 
- ''{"en":"Default title for terms-and-conditions","de":"Standardtitel für terms-and-conditions","fr":"Titre
  par défaut pour terms-and-conditions","it":"Titolo predefinito per terms-and-conditions"}''
slug:
- 
- terms-and-conditions
content:
- 
- ''{"en":"Please add meaningful content to the terms-and-conditions static page on
  the admin dashboard.","de":"Fügen Sie der statischen Seite terms-and-conditions
  im Admin-Dashboard sinnvollen Inhalt hinzu.","fr":"Ajoutez un contenu pertinent
  à la page terms-and-conditions en allant sur l''''interface d''''administration.","it":"Si
  prega di aggiungere contenuto significativo alla pagina statica terms-and-conditions
  sul pannello di amministrazione."}''
decidim_organization_id:
- 
- 1
created_at:
- 
- &1 2020-04-22 08:05:30.922317384 Z
updated_at:
- 
- *1
show_in_footer:
- false
- true
'),
('Decidim::Organization',	1,	'update',	NULL,	'{"id": 1, "host": "localhost", "logo": null, "name": "Quartieridee Wipkingen", "colors": {}, "favicon": null, "time_zone": "UTC", "created_at": "2020-04-22T08:05:30.883Z", "updated_at": "2020-04-22T08:05:30.883Z", "description": null, "tos_version": null, "official_url": null, "smtp_settings": {"from": "quartieridee@puzzle.ch", "port": 1025, "address": "mail", "user_name": "quartieridee@puzzle.ch", "encrypted_password": null}, "badges_enabled": true, "default_locale": "de", "github_handler": null, "cta_button_path": null, "cta_button_text": null, "header_snippets": null, "secondary_hosts": [], "show_statistics": true, "twitter_handler": null, "youtube_handler": null, "facebook_handler": null, "reference_prefix": "quwi", "available_locales": ["en", "de"], "instagram_handler": null, "omniauth_settings": {"omniauth_settings_developer_icon": "", "omniauth_settings_developer_enabled": false}, "official_img_footer": null, "official_img_header": null, "user_groups_enabled": true, "id_documents_methods": ["online"], "omnipresent_banner_url": null, "admin_terms_of_use_body": null, "users_registration_mode": "enabled", "available_authorizations": [], "omnipresent_banner_title": null, "enable_omnipresent_banner": false, "send_welcome_notification": true, "welcome_notification_body": null, "welcome_notification_subject": null, "id_documents_explanation_text": {}, "highlighted_content_banner_image": null, "highlighted_content_banner_title": null, "rich_text_editor_in_public_views": false, "highlighted_content_banner_enabled": false, "omnipresent_banner_short_description": null, "highlighted_content_banner_action_url": null, "highlighted_content_banner_action_title": null, "highlighted_content_banner_action_subtitle": null, "highlighted_content_banner_short_description": null, "force_users_to_authenticate_before_access_organization": false}',	'2020-04-22 08:05:30.929182',	'---
updated_at:
- 2020-04-22 08:05:30.883513515 Z
- 2020-04-22 08:05:30.929182966 Z
tos_version:
- 
- 2020-04-22 08:05:30.922317384 Z
'),
('Decidim::StaticPage',	3,	'create',	NULL,	NULL,	'2020-04-22 08:05:30.938337',	'---
id:
- 
- 3
title:
- 
- ''{"en":"Default title for accessibility","de":"Standardtitel für accessibility","fr":"Titre
  par défaut pour accessibility","it":"Titolo predefinito per accessibility"}''
slug:
- 
- accessibility
content:
- 
- ''{"en":"Please add meaningful content to the accessibility static page on the admin
  dashboard.","de":"Fügen Sie der statischen Seite accessibility im Admin-Dashboard
  sinnvollen Inhalt hinzu.","fr":"Ajoutez un contenu pertinent à la page accessibility
  en allant sur l''''interface d''''administration.","it":"Si prega di aggiungere contenuto
  significativo alla pagina statica accessibility sul pannello di amministrazione."}''
decidim_organization_id:
- 
- 1
created_at:
- 
- &1 2020-04-22 08:05:30.938337883 Z
updated_at:
- 
- *1
show_in_footer:
- false
- true
'),
('Decidim::StaticPage',	4,	'create',	NULL,	NULL,	'2020-04-22 08:05:30.95932',	'---
id:
- 
- 4
title:
- 
- ''{"en":"What can I do in Quartieridee Wipkingen?","de":"Was kann ich in Quartieridee
  Wipkingen?"}''
slug:
- 
- help
content:
- 
- ''{"en":"\u003cp\u003eIn Quartieridee Wipkingen you can participate and decide on
  different topics, through the spaces you see in the top menu: Processes, Assemblies,
  Initiatives, Consultations.\u003c/p\u003e \u003cp\u003eWithin each one you will
  find different options to participate: make proposals - individually or with other
  people-, take part in debates, prioritize projects to implement, attend face-to-face
  meetings and other actions.\u003c/p\u003e\n","de":"\u003cp\u003eIn Quartieridee
  Wipkingen Sie durch die Leerzeichen, die Sie im oberen Menü sehen, an verschiedenen
  Themen teilnehmen: Prozesse, Baugruppen, Initiativen, Konsultationen.\u003c/p\u003e
  \u003cp\u003eIn jedem Bereich finden Sie verschiedene Optionen für die Teilnahme:
  Vorschläge machen - einzeln oder mit anderen -, an Debatten teilnehmen, Prioritäten
  für umzusetzende Projekte setzen, persönliche Treffen und andere Aktionen besuchen.\u003c/p\u003e\n"}''
decidim_organization_id:
- 
- 1
created_at:
- 
- &1 2020-04-22 08:05:30.959320932 Z
updated_at:
- 
- *1
weight:
- 
- 0
topic_id:
- 
- 1
'),
('Decidim::StaticPage',	5,	'create',	NULL,	NULL,	'2020-04-22 08:05:30.964434',	'---
id:
- 
- 5
title:
- 
- ''{"en":"What is a participatory process?","de":"Was ist ein partizipativer Prozess?"}''
slug:
- 
- participatory_processes
content:
- 
- ''{"en":"\u003cp\u003eA \u003cstrong\u003eparticipatory process\u003c/strong\u003e
  is a sequence of participatory activities (e.g. first filling out a survey, then
  making proposals, discussing them in face-to-face or virtual meetings, and finally
  prioritizing them) with the aim of defining and making a decision on a specific
  topic.\u003c/p\u003e \u003cp\u003eExamples of participatory processes are: a process
  of electing committee members (where candidatures are first presented, then debated
  and finally a candidacy is chosen), participatory budgets (where proposals are made,
  valued economically and voted on with the money available), a strategic planning
  process, the collaborative drafting of a regulation or norm, the design of an urban
  space or the production of a public policy plan.\u003c/p\u003e\n","de":"\u003cp\u003eA
  \u003cstrong\u003ePartizipationsprozess\u003c/strong\u003e ist eine Folge von Partizipations
  Aktivitäten (zB zuerst eine Umfrage ausfüllen, dann Vorschläge machen, so dass sie
  diskutiert in face-to-face oder virtuellen Sitzungen, und sie schließlich die Priorisierung)
  mit dem Ziel , die Definition und Treffen eine Entscheidung zu einem bestimmten
  Thema.\u003c/p\u003e \u003cp\u003eBeispiele für partizipatorische Prozesse sind:
  ein Verfahren zur Wahl von Ausschussmitgliedern (bei dem die Kandidaturen zuerst
  präsentiert, anschließend debattiert und schließlich eine Kandidatur ausgewählt
  wird), die Bürgerhaushalte (bei denen Vorschläge gemacht, wirtschaftlich bewertet
  und mit dem verfügbaren Geld abgestimmt werden). ein strategischer Planungsprozess,
  die gemeinschaftliche Ausarbeitung einer Vorschrift oder Norm, die Gestaltung eines
  städtischen Raums oder die Erstellung eines öffentlichen Planes.\u003c/p\u003e\n"}''
decidim_organization_id:
- 
- 1
created_at:
- 
- &1 2020-04-22 08:05:30.964434551 Z
updated_at:
- 
- *1
topic_id:
- 
- 1
'),
('Decidim::StaticPage',	6,	'create',	NULL,	NULL,	'2020-04-22 08:05:30.981305',	'---
id:
- 
- 6
title:
- 
- ''{"en":"What are assemblies?","de":"Was sind Gremien?"}''
slug:
- 
- assemblies
content:
- 
- ''{"en":"\u003cp\u003eAn \u003cstrong\u003eassembly\u003c/strong\u003e is a group
  of members of an organization who meet periodically to make decisions about a specific
  area or scope of the organization.\u003c/p\u003e \u003cp\u003eAssemblies hold meetings,
  some are private and some are open. If they are open, it is possible to participate
  in them (for example: attending if the capacity allows it, adding points to the
  agenda, or commenting on the proposals and decisions taken by this organ).\u003c/p\u003e
  \u003cp\u003eExamples: A general assembly (which meets once a year to define the
  organisation''''s main lines of action as well as its executive bodies by vote), an
  equality advisory council (which meets every two months to make proposals on how
  to improve gender relations in the organisation), an evaluation commission (which
  meets every month to monitor a process) or a guarantee body (which collects incidents,
  abuses or proposals to improve decision-making procedures) are all examples of assemblies.\u003c/p\u003e\n","de":"\u003cp\u003eEine
  Versammlung ist eine Gruppe von Mitgliedern einer Organisation, die sich regelmäßig
  treffen, um Entscheidungen über einen bestimmten Bereich oder einen bestimmten Bereich
  der Organisation zu treffen.\u003c/p\u003e \u003cp\u003eVersammlungen halten Meetings
  ab, einige sind privat und andere sind offen. Wenn sie offen sind, ist es möglich,
  an ihnen teilzunehmen (z. B. Teilnahme, wenn die Kapazität es erlaubt, Punkte auf
  die Tagesordnung setzen oder Vorschläge und Entscheidungen dieses Organs kommentieren).\u003c/p\u003e
  \u003cp\u003eBeispiele: Eine Generalversammlung (die einmal im Jahr zusammentritt,
  um die wichtigsten Aktionslinien der Organisation sowie ihre Exekutivorgane per
  Abstimmung festzulegen), ein Gleichstellungsbeirat (der alle zwei Monate zusammentritt,
  um Vorschläge zur Verbesserung der Geschlechterbeziehungen vorzulegen In der Organisation
  sind eine Evaluierungskommission (die sich jeden Monat zur Überwachung eines Prozesses
  trifft) oder eine Garantieeinrichtung (die Vorfälle, Missbräuche oder Vorschläge
  zur Verbesserung der Entscheidungsverfahren sammelt) Beispiele für Versammlungen.\u003c/p\u003e\n"}''
decidim_organization_id:
- 
- 1
created_at:
- 
- &1 2020-04-22 08:05:30.981305652 Z
updated_at:
- 
- *1
topic_id:
- 
- 1
');
