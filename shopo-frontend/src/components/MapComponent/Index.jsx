import {
  GoogleMap,
  MarkerF,
  useLoadScript,
  StandaloneSearchBox,
  Autocomplete,
} from "@react-google-maps/api";
import { useState, useCallback, useEffect, useRef } from "react";
import InputCom from "../Helpers/InputCom";

const containerStyle = {
  width: "100%",
  height: "400px",
};
const libraries = ["places"];
export default function MapComponent({
  searchEnabled,
  searchInputValue,
  searchInputHandler,
  searchInputError = false,
  mapKey,
  mapStatus,
  location,
  locationHandler,
}) {
  // == == == all references
  const searchBoxRef = useRef(null);
  // == == == all state store
  const [markerPosition, setMarkerPosition] = useState(null);
  const [mapCenter, setMapCenter] = useState(null);
  const { isLoaded } = useLoadScript({
    googleMapsApiKey: mapKey, // Use environment variable for API key
    libraries: libraries,
  });
  // permission
  const getUserLocation = useCallback(() => {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(
        (position) => {
          if (location) {
            setMarkerPosition(location);
            setMapCenter(location);
            getPlaceName(location.lat, location.lng);
          } else {
            const { latitude, longitude } = position.coords;
            setMarkerPosition({ lat: latitude, lng: longitude });
            setMapCenter({ lat: latitude, lng: longitude });
            locationHandler({
              lat: latitude,
              lng: longitude,
            });
            getPlaceName(latitude, longitude);
          }
        },
        (error) => {
          console.error("Error getting location", error);
          // Fallback to a default location (optional)

          setMapCenter({ lat: 37.7749, lng: -122.4194 });
        }
      );
    } else {
      console.error("Geolocation is not supported by this browser.");
      // Fallback to a default location (optional)
      setMapCenter({ lat: 37.7749, lng: -122.4194 });
    }
  }, []);
  // == == == methods
  const getPlaceName = useCallback((lat, lng) => {
    const geocoder = new window.google.maps.Geocoder();
    geocoder.geocode({ location: { lat, lng } }, (results, status) => {
      if (status === "OK" && results[0]) {
        const placeName = results[0].formatted_address;
        searchInputHandler(placeName);
      } else {
        console.error("Geocoder failed due to: " + status);
      }
    });
  }, []);
  const onPlacesChanged = useCallback(() => {
    const places = searchBoxRef.current.getPlaces();
    if (places && places.length > 0) {
      const place = places[0];
      if (place) {
        const location = place.geometry.location;
        const lat = location.lat();
        const lng = location.lng();
        setMapCenter({ lat, lng });
        setMarkerPosition({ lat, lng });
        locationHandler({ lat, lng });
        if (mapStatus) {
          searchInputHandler(place?.name);
        }
      }
    }
  }, []);

  const onMapClick = useCallback((e) => {
    const lat = e.latLng.lat();
    const lng = e.latLng.lng();
    setMarkerPosition({
      lat: lat,
      lng: lng,
    });
    locationHandler({
      lat: lat,
      lng: lng,
    });
    getPlaceName(lat, lng);
  }, []);

  // Handler when the marker is dragged to a new location
  const onMarkerDragEnd = useCallback((e) => {
    const lat = e.latLng.lat();
    const lng = e.latLng.lng();
    setMarkerPosition({
      lat: lat,
      lng: lng,
    });
    locationHandler({
      lat: lat,
      lng: lng,
    });
    getPlaceName(lat, lng);
  }, []);

  // == == == effects
  useEffect(() => {
    // Get user's location when the component mounts
    if (isLoaded) {
      getUserLocation();
    }
  }, [isLoaded, getUserLocation]);

  if (!isLoaded) return <div>Loading...</div>;

  return (
    <div>
      {searchEnabled && (
        <div>
          {/* Search Input for Places Autocomplete */}
          <StandaloneSearchBox
            onLoad={(ref) => (searchBoxRef.current = ref)}
            onPlacesChanged={onPlacesChanged}
          >
            <div>
              <InputCom
                value={searchInputValue}
                inputHandler={(e) => searchInputHandler(e.target.value)}
                label="Address"
                placeholder="Your Address here"
                inputClasses="w-full h-[50px]"
                error={searchInputError}
              />
              {searchInputError ? (
                <span className="text-sm mt-1 text-qred">
                  {searchInputError}
                </span>
              ) : (
                ""
              )}
            </div>
          </StandaloneSearchBox>
        </div>
      )}

      {mapStatus === 1 && (
        <GoogleMap
          mapContainerStyle={containerStyle}
          center={mapCenter}
          zoom={12}
          onClick={onMapClick} // Set marker on map click
        >
          <MarkerF
            position={markerPosition}
            draggable={true} // Make the marker draggable
            onDragEnd={onMarkerDragEnd}
          />
          {/* Add more markers or functionality as needed */}
        </GoogleMap>
      )}
    </div>
  );
}
