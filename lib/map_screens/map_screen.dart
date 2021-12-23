import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'blocs/application_bloc.dart';

class mapScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _mapScreenState();
  }
}

class _mapScreenState extends State<mapScreen> {
  @override
  Widget build(BuildContext context) {
    final applicationBloc = Provider.of<ApplicationBloc>(context);
    return Scaffold(
          body: (applicationBloc.currentLocation==null)
        ? Center(
            child: CircularProgressIndicator(),
          )
        : ListView(
            children: [
              TextField(),
              Container(
                height: 500,
                child: GoogleMap(
                  mapType: MapType.normal,
                  myLocationEnabled: true,
                  initialCameraPosition: CameraPosition(
                    target: LatLng(applicationBloc.currentLocation.latitude, applicationBloc.currentLocation.longitude),
                    zoom: 14,
                  ),
                ),
              ),
            ],
          ),
        );
  }
}
