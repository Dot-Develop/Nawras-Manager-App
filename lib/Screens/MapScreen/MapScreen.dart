// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
// class MapScreen extends StatefulWidget {
//   @override
//   _MapScreenState createState() => _MapScreenState();
// }
//
// class _MapScreenState extends State<MapScreen> {
//   Completer<GoogleMapController> _controller = Completer();
//
//   void _onMapCreated(GoogleMapController controller) {
//     _controller.complete(controller);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text('Map'),
//       ),
//       body: GoogleMap(
//         onMapCreated: _onMapCreated,
//         initialCameraPosition: CameraPosition(
//           target: LatLng(36.19252839076768, 43.99821551014503),
//           zoom: 14.0,
//         ),
//       ),
//     );
//   }
// }
