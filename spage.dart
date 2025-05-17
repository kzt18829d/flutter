import 'package:flutter/material.dart';

class SPage extends StatelessWidget {  // Переименовано
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detailed Forecast'),
        backgroundColor: Colors.indigo[900],
        actions: [
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {},
          )
        ],
      ),
      backgroundColor: Colors.indigo[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('25°C\nMostly Sunny', 
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple[300],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Text('Hourly Analysis →', 
                    style: TextStyle(fontSize: 18)),
              ),
              onPressed: () => Navigator.pushNamed(context, '/thpage'),
            ),
          ],
        ),
      ),
    );
  }
}
