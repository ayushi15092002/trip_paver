import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:trip_paver/map_screens/services/geolocator_service.dart';

class ApplicationBloc with ChangeNotifier {
  final geoLocatorService = GeoLocatorService();

  //variables
  Position currentLocation;

  ApplicationBloc(){
    setCurrentLocation();
  }
  setCurrentLocation() async{
    currentLocation = await geoLocatorService.getCurrentLocation();
  }
}