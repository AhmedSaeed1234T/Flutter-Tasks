import 'package:geolocator/geolocator.dart';

Future<Position> determineposition() async {
  bool serviceEnable;
  LocationPermission permission;
  serviceEnable = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnable) {
    return Future.error("Location Service are Disable");
  }
  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return Future.error("Location Permission are Denied");
    }
  }
  if (permission == LocationPermission.deniedForever) {
    return Future.error("Location Permission are permently Denied");
  }
  return await Geolocator.getCurrentPosition();
}
