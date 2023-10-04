window.addEventListener('load', function () {
    let myLatLng = { lat: 6.9147, lng: 79.9729 };  // my location 

    const map = new google.maps.Map(document.getElementById("map"),   //create map
        {
            mapTypeControl: false,
            center: myLatLng,
            zoom: 13,
        }
    );        //end of the parameter

    let inputFromPlace = document.getElementById('fromPlaces');  //get locations
    let inputToPlace = document.getElementById('toPlaces');

    const options = {
        
        fields: ["address_components", "geometry"],
        types: ["address"],
    }

    const autocompleteFromField = new google.maps.places.Autocomplete(inputFromPlace, options);
    const autocompleteToField = new google.maps.places.Autocomplete(inputToPlace, options);

    inputFromPlace.focus();

    // let resultField = document.getElementById('result');
    let resultFieldDistance = document.getElementById('resultDistance');
    let inmeter = document.getElementById('inmeter');
    let resultFieldDuration = document.getElementById('resultDuration');

    let form = document.getElementById('formDestination');

    form.addEventListener('submit', function (e) {
        e.preventDefault();
        if (inputFromPlace.value.trim() !== "" && inputToPlace.value.trim() !== "") {
            calcRoute();
        }
    });

    let directionsService = new google.maps.DirectionsService();

    let directionsRenderer = new google.maps.DirectionsRenderer();   //create a DirectionsRenderer object which we will use to display the route
    directionsRenderer.setMap(map);

    function calcRoute() {
        let origin = inputFromPlace.value;
        let destination = inputToPlace.value;

        let request = {
            origin: origin,
            destination: destination,
            travelMode: google.maps.TravelMode.DRIVING,
            // travelMode: google.maps.TravelMode.WALKING,
            unitSystem: google.maps.UnitSystem.metric
        }

        directionsService.route(request, (result, status) => {
            if (status === google.maps.DirectionsStatus.OK) {
                // resultField.innerHTML = "";
                resultFieldDistance.innerHTML = result.routes[0].legs[0].distance.text ;
                resultFieldDuration.innerHTML = result.routes[0].legs[0].duration.text;
                // inseconds.innerHTML =result.routes[0].legs[0].duration.value;
                inmeter.innerHTML = result.routes[0].legs[0].distance.value;
                directionsRenderer.setDirections(result);
            }
            else {
                directionsRenderer.setDirections({routes: []})

                map.setCenter(myLatLng);
                Swal.fire(
                    'Are You Sure?',
                    'Couldnt Drive Through Oceans 🙄',
                    'question'
                  )
                // resultField.innerHTML = "Location Denied Through Oceans";
            }
        });
    }
})

