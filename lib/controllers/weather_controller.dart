import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provoks_weather_app/models/weather_model.dart';
import 'package:http/http.dart' as http;

class WeatherController with ChangeNotifier {
  Weather? _weather;

  Weather? get weather => _weather;

  Future<void> fetchWeather(String cityName) async {
    final apiKey = "0801bc6827ff3d40e6ad22d4baadda08";
    final url =
        "https://api.openweathermap.org/data/2.5/forecast?q=$cityName&appid=$apiKey";

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        _weather = Weather.fromJson(data);
        notifyListeners();
        print(response.body);
      } else {
        Exception('Failed to fetch weather data');
      }
    } catch (error) {
      Exception('Failed to fetch weather data');
    }
  }

  Future<void> postWeather () async{
    
  }
 }
