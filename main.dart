import 'package:flutter/material.dart';
import 'fpage.dart';

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
        '/': (context) => PageA(),
        '/spage': (context) => PageB(),
        '/thpage': (context) => PageC(),
      },
    );
  }
}
