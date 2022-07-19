import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nawras_manager/Constants/AppTextStyle.dart';
import 'package:nawras_manager/Constants/ColorConstants.dart';

class MapTab extends StatefulWidget {
  @override
  _MapTabState createState() => _MapTabState();
}

class _MapTabState extends State<MapTab> {

    Completer<GoogleMapController> _controller = Completer();

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      zoomGesturesEnabled: true,
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(
        target: LatLng(36.19252839076768, 43.99821551014503),
        zoom: 14.0,
      ),
    );
  }
}
