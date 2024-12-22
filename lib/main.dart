import 'package:flutter/material.dart';
import 'package:provoks_weather_app/controllers/weather_controller.dart';
import 'package:provoks_weather_app/screens/weather_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => WeatherController()),
      ],
      child: MaterialApp(
        title: 'Weather App Provoks',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: WeatherScreen(),
      ),
    );
  }
}
