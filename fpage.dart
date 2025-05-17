import 'package:flutter/material.dart';

class FPage extends StatelessWidget {  // Переименовано
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather Station'),
        centerTitle: true,
        backgroundColor: Colors.teal[700],
        elevation: 10,
      ),
      backgroundColor: Colors.teal[100],
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/sun.png', height: 150),
            SizedBox(height: 40),
            FilledButton.icon(
              icon: Icon(Icons.cloud),
              label: Text('View Forecast'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber[800]),
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 20, horizontal: 40)),
              ),
              onPressed: () => Navigator.pushNamed(context, '/spage'),
            ),
          ],
        ),
      ),
    );
  }
}
