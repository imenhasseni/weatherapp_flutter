import 'package:flutter/material.dart';

class CityScreen extends StatefulWidget {
  final String home;
  CityScreen({required this.home});
  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  late String home;

  @override
  void initState() {
    super.initState();
    home = widget.home;
  }

  late String cityName;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(home),
          fit: BoxFit.cover,
          colorFilter:
          ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Nunito',
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Colors.blueGrey,),
                    filled: true,
                    fillColor: Colors.white10,
                    labelText: 'City Name',
                    labelStyle: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20,
                      fontFamily: 'Nunito',
                    ),
                    hintText: 'Enter the City',
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onChanged: (value) {
                    cityName = value;
                  },
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, cityName);
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.blueGrey,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'Get Weather',
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 20,
                          fontFamily: 'Nunito',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}