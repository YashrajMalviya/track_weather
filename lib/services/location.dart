import 'package:geolocator/geolocator.dart';

//fetching device current location by geolocator package
class Location {
  late double latitude;
  late double longitude;

  // method for getting device location permission and getting device current location
  Future<void> getCurrentLocation() async {
    try {
      // await Geolocator.requestPermission()
      //     .then((value) {})
      //     .onError((error, stackTrace) {
      //   print('error' + error.toString());
      // });
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
