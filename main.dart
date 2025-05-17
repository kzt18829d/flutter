import 'package:flutter/material.dart';
import 'fpage.dart';
import 'spage.dart';
import 'thpage.dart';
import 'hour_data.dart';

void main() => runApp(WeatherExplorer());

class WeatherExplorer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => FPage(),
        '/forecast': (context) => SPage(),
        '/hourly': (context) => THPage(hourlyData: demoHourlyData),
      },
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(child: Text('Page not found')),
      ),
    );
  }
}
