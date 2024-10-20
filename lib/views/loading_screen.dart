import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/utilities/functions/get_location.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    GetLocation.getLocation();
    print('On State');
  }

  @override
  Widget build(BuildContext context) {
    print('On Build');
    return Scaffold();
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print('On Deactivate');
  }
}
