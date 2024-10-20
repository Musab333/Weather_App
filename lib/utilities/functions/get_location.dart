import 'package:geolocator/geolocator.dart';

class GetLocation {
  static void getLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      print(position);
    } on Exception catch (e) {
      print(e);
    }
  }
}
