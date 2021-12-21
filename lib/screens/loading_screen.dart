import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weatherapp_flutter/services/networking.dart';
import 'package:weatherapp_flutter/services/location.dart';
import 'location_screen.dart';

const apiKey = '0c82af59e9ce5c4de5d7b88d6d59ecaf';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    geoLocatorData();
  }

  void geoLocatorData() async {
    Location location = Location();
    List val = await location.getCurrentLocation();
    LocationWeather locationWeather = LocationWeather(val);
    var weatherData = await locationWeather.locationWeatherData();

    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(
        locationWeather: weatherData,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}