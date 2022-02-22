import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';


class Aroundme_page extends StatefulWidget {
  const Aroundme_page({Key? key}) : super(key: key);

  @override
  _Aroundme_pageState createState() => _Aroundme_pageState();
}

class _Aroundme_pageState extends State<Aroundme_page> {
  List<Marker> allMarkers = [];

  late String _currentAddress =" ";


  Future<void> getLocation() async {
    Position position = await Geolocator.getCurrentPosition();
    print(position.latitude);
    print(position.longitude);

    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );

      Placemark place = placemarks[0];

      setState(() {
        _currentAddress = "${place.locality}, ${place.postalCode}, ${place.country}";
      });
    } catch (e) {
      print(e);
    }
    //print(_currentAddress);

    allMarkers.add(Marker(
      markerId:  MarkerId('Raad Marks'),
      draggable: true,
      onTap: (){
        print ("Raad Tapped on a Marker");
      },
      position: LatLng(position.latitude, position.longitude),
    ),
    );

  }

  @override
  void initState() {
    super.initState();
    getLocation();
  }


  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF8CA6DB),
          title: Text("Around Me"),
        ),
        body: Center(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                  target: LatLng(23.8013504, 90.4574398),
                  zoom: 12.0
              ),
              markers: Set.from(allMarkers),
            ),
          ),
        ),
      ),
    );
  }
}