import {
  GoogleMap,
  MarkerF,
  useLoadScript,
  DirectionsRenderer,
} from "@react-google-maps/api";
import { useState, useEffect } from "react";

const containerStyle = {
  width: "100%",
  height: "400px",
};
const libraries = ["places"];

export default function MapShow({ mapKey, origin, destination }) {
  const { isLoaded } = useLoadScript({
    googleMapsApiKey: mapKey,
    libraries: libraries,
  });

  const [directionsResponse, setDirectionsResponse] = useState(null);
  const [map, setMap] = useState(null);

  useEffect(() => {
    const calculateRoute = async () => {
      if (!isLoaded) return;

      const directionsService = new window.google.maps.DirectionsService();
      const results = await directionsService.route({
        origin: origin,
        destination: destination,
        travelMode: window.google.maps.TravelMode.DRIVING,
      });

      setDirectionsResponse(results);

      if (map) {
        const bounds = new window.google.maps.LatLngBounds();
        results.routes[0].legs[0].steps.forEach((step) => {
          bounds.extend(step.start_location);
          bounds.extend(step.end_location);
        });
        map.fitBounds(bounds); // Adjust map to fit the route bounds
      }
    };

    calculateRoute();
  }, [isLoaded, origin, destination, map]);

  if (!isLoaded) return <div>Loading...</div>;

  return (
    <div>
      <GoogleMap
        mapContainerStyle={containerStyle}
        center={origin}
        zoom={7}
        onLoad={(mapInstance) => setMap(mapInstance)} // Set map instance on load
      >
        <MarkerF position={origin} />
        <MarkerF position={destination} />

        {directionsResponse && (
          <DirectionsRenderer directions={directionsResponse} />
        )}
      </GoogleMap>
    </div>
  );
}
