import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:stayhook_main/Widgets/bottombar_widget.dart';
import 'package:stayhook_main/Widgets/button1_widget.dart';
import 'package:stayhook_main/Widgets/button_widget.dart';

class MapScreen extends StatefulWidget {
  final String device;
  const MapScreen({super.key, required this.device});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final TextEditingController searchController = TextEditingController();
  final String apiKey = 'AIzaSyDriLXG4DRqtZq0gjO5Q7fKYl6XqNy70fw';
  final Set<Marker> _markers = {};
  var _currentAddress = "";
  var lat = "";
  var long = "";

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  static const CameraPosition _kGooglePlex =
      CameraPosition(target: LatLng(21.7679, 78.8718), zoom: 2.5);

  @override
  void initState() {
    super.initState();
    // getLatLong();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
           Column(children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.25,
              child: GoogleMap(
                myLocationButtonEnabled: false,
                mapType: MapType.normal,
                zoomControlsEnabled: false,
                initialCameraPosition: _kGooglePlex,
                markers: Set<Marker>.of(_markers),
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
                onTap: (latlang) async {
                  if (_markers.length >= 1) {
                    _markers.clear();
                  }
                  lat = latlang.latitude.toString();
                  long = latlang.longitude.toString();
                  await placemarkFromCoordinates(
                          latlang.latitude, latlang.longitude)
                      .then((List<Placemark> placeMarks) {
                    Placemark place = placeMarks[0];
                    setState(() {
                      _currentAddress =
                          '${place.street}, ${place.subLocality}, ${place.subAdministrativeArea}, ${place.postalCode}';
                    });
                  }).catchError((e) {
                    debugPrint(e);
                  });
                  _onAddMarkerButtonPressed(latlang);
                },
              ),


            ),

            SizedBox(
              height: 10,
            ),
            Text(
              "Your Location",
              style: GoogleFonts.dmSans(
                color: const Color(0xff7c7c7c),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),

            Divider(
              height: 20,
              thickness: 2,
              indent: 10,
              endIndent: 10,
              color: Color(0xffdadada),
            ),
            Text(
              "Tower-B4, Panchsheel Green, Ittaria, Uttar Pradesh 201009, India ",
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(
                color: const Color(0xff000000),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: GestureDetector(
                  onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>
                   BottomNavBar(device: '')));
                  },
                  child: ButtonWidget(
                      text:  'Use This Location' ,
                      width:  MediaQuery.of(context).size.width / 1.5, )
                )),

          ]),
            Padding(
              padding: const EdgeInsets.only(top: 50,left: 10,right: 10),
              child: Card(
                elevation: 3,
                shadowColor: Colors.black,
                shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: const BoxDecoration(
                    color: Color(0xfff2f3f2),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: TextField(
                      autofocus: false,
                      controller: searchController,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          prefixIcon: const Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Icon(
                              Icons.search,
                              color: Colors.black,
                              size: 25,
                            ),
                          ),
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                "assets/icons/close.png",
                                width: 16,
                                color: (searchController.text.isNotEmpty)
                                    ? Colors.black
                                    : Colors.grey.shade100,
                              )),
                          border: InputBorder.none,
                          hintText: "Search for area or location",
                          hintStyle: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          )),
                      onSubmitted: (_) {}),
                ),
              ),
            ),




          ],
        ),
      ),
    );
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.medium);
  }

  getLatLong() async {
    final GoogleMapController controller = await _controller.future;
    Future<Position> data = _determinePosition();
    data.then((value) {
      setState(() async {
        await _getAddressFromLatLng(value);
        lat = value.latitude.toString();
        long = value.longitude.toString();
        await _markers.add(Marker(
          markerId: MarkerId(""),
          position: LatLng(value.latitude, value.longitude),
          icon: BitmapDescriptor.defaultMarker,
        ));
        await controller.animateCamera(CameraUpdate.newCameraPosition(
          CameraPosition(
            target: LatLng(value.latitude, value.longitude),
            zoom: 19,
          ),
        ));
        /* Timer(
            const Duration(milliseconds: 2000),
                () =>
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (context) =>
                            BottomNavBar(device: widget.device)),
                        (route) => false));*/
      });
    }).catchError((error) {
      print("Error $error");
    });
  }

  Future<void> _getAddressFromLatLng(Position position) async {
    await placemarkFromCoordinates(position.latitude, position.longitude)
        .then((List<Placemark> placemarks) {
      Placemark place = placemarks[0];
      setState(() {
        _currentAddress =
            '${place.street}, ${place.subLocality}, ${place.locality}, ${place.administrativeArea}, ${place.postalCode}';
      });
    }).catchError((e) {
      debugPrint(e);
    });
  }

  void _onAddMarkerButtonPressed(LatLng latlang) {
    setState(() {
      _markers.add(Marker(
        markerId: MarkerId(""),
        position: latlang,
        icon: BitmapDescriptor.defaultMarker,
      ));
    });
  }
}
