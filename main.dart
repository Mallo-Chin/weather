import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget weatherCard(
      String country, IconData countryIcon, String city, String condition, int temp, IconData weatherIcon) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(countryIcon, color: const Color.fromARGB(255, 18, 219, 234), size: 20), // Country icon
                  SizedBox(width: 8),
                  Text(
                    country,
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
              Text(
                city,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Icon(weatherIcon, color: const Color.fromARGB(255, 249, 249, 249), size: 20), // Weather icon
                  SizedBox(width: 8),
                  Text(
                    condition,
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Icon(weatherIcon, color: const Color.fromARGB(255, 245, 233, 8), size: 40), // Weather icon in the right column
              Text(
                "$temp°C",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          title: Row(
            children: [
              SizedBox(width: 10), // Space between the icon and text
              Text("Weather", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),), // Text title
            ],
          ),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              weatherCard("Current Location", Icons.location_on, "Dhaka", "Thunder", 20 , Icons.thunderstorm),
              SizedBox(height: 20),
              Text(
                "Around the world",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              weatherCard("United States", Icons.location_on, "California", "Clear", 6, Icons.sunny_snowing),
              weatherCard("China", Icons.location_on, "Beijing", "Mostly sunny", 5, Icons.sunny),
              weatherCard("Russia", Icons.location_on, "Moscow", "Cloudy", -04, Icons.cloudy_snowing),
            ],
          ),
        ),
      ),
    );
  }
}