// = require leaflet
// = require leaflet-tilelayer-swiss
// = require leaflet-svg-icon
// = require leaflet.markercluster
// = require jquery-tmpl
// = require_self

L.DivIcon.SVGIcon.DecidimIcon = L.DivIcon.SVGIcon.extend({
  options: {
    fillColor: "#ef604d",
    opacity: 0
  },
  _createPathDescription: function() {
    return "M14 1.17a11.685 11.685 0 0 0-11.685 11.685c0 11.25 10.23 20.61 10.665 21a1.5 1.5 0 0 0 2.025 0c0.435-.435 10.665-9.81 10.665-21A11.685 11.685 0 0 0 14 1.17Zm0 17.415A5.085 5.085 0 1 1 19.085 13.5 5.085 5.085 0 0 1 14 18.585Z";
  },
  _createCircle: function() {
    return ""
  }
});

const popupTemplateId = "marker-popup";
$.template(popupTemplateId, $(`#${popupTemplateId}`).html());

const addMarkers = (markersData, markerClusters, map) => {
  const bounds = new L.LatLngBounds(markersData.map((markerData) => [markerData.latitude, markerData.longitude]));

  markersData.forEach((markerData) => {
    let marker = L.marker(L.CRS.EPSG2056.unproject(markerData.lv95), {
      icon: new L.DivIcon.SVGIcon.DecidimIcon()
    });
    let node = document.createElement("div");

    $.tmpl(popupTemplateId, markerData).appendTo(node);

    marker.bindPopup(node, {
      maxwidth: 640,
      minWidth: 500,
      keepInView: true,
      className: "map-info"
    }).openPopup();

    markerClusters.addLayer(marker);
  });

  map.addLayer(markerClusters);
  map.fitBounds(bounds, { padding: [100, 100], maxZoom: 25 });
};

const loadMap = (mapId, markersData) => {
  let markerClusters = L.markerClusterGroup();

  if (window.Decidim.currentMap) {
    window.Decidim.currentMap.remove();
    window.Decidim.currentMap = null;
  }
  const map = L.map(mapId, {
    crs: L.CRS.EPSG2056,
  });

  L.tileLayer.swiss().addTo(map);

  if (markersData.length > 0) {
    addMarkers(markersData, markerClusters, map);
  }

  map.scrollWheelZoom.disable();
  map.options.minZoom = 2;
  map.options.maxZoom = 25;

  return map;
};

window.Decidim = window.Decidim || {};

window.Decidim.loadMap = loadMap;
window.Decidim.currentMap =  null;
window.Decidim.mapConfiguration = {};

$(() => {
  const mapId = "map";
  const $map = $(`#${mapId}`);

  // Transform global WGS84 coordinates to swiss LV95 coordinates
  const markersData = $map.data("markers-data").map(data => {
    return { ...data, lv95: L.CRS.EPSG2056.project({ lng: data.longitude, lat: data.latitude }) };
  });

  if ($map.length > 0) {
    if (markersData.length > 0) {
      $map.css("display", "block");
      window.Decidim.currentMap = loadMap(mapId, markersData);
    }
  }
});
