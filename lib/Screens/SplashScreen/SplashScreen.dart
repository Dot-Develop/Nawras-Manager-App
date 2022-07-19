import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nawras_manager/Constants/ColorConstants.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 1500), () {
      Navigator.pushNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child:CircularProgressIndicator(backgroundColor: PaletteColors.darkRedColorApp,)),);
  }
}