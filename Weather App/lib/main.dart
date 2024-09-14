import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:wheather_app/block/bloc/weather_bloc.dart';
import 'package:wheather_app/data/determine-position.dart';
import 'package:wheather_app/screens/home_screen.dart';

void main() {
  runApp(Wheather_App());
}

class Wheather_App extends StatelessWidget {
  const Wheather_App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: determineposition(),
        builder: (context, snap) {
          if (snap.hasData) {
            return BlocProvider<WeatherBloc>(
              create: (context) => WeatherBloc()
                ..add(
                  FetchWeather(snap.data as Position),
                ),
              child: home_screen(),
            );
          } else {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        },
      ),
    );
  }
}
