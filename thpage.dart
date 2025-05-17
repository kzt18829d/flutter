import 'package:flutter/material.dart';

class THPage extends StatelessWidget {  // Переименовано
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hourly Report'),
        backgroundColor: Colors.deepPurple[800],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      backgroundColor: Colors.deepPurple[50],
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          _buildHourCard('9 AM', '☀️', '24°C'),
          _buildHourCard('12 PM', '⛅', '26°C'),
          _buildHourCard('3 PM', '🌤️', '28°C'),
          _buildHourCard('6 PM', '🌥️', '25°C'),
          SizedBox(height: 20),
          OutlinedButton(
            child: Text('Back to Home'),
            onPressed: () => Navigator.popUntil(context, (route) => route.isFirst),
          ),
        ],
      ),
    );
  }

  Widget _buildHourCard(String time, String icon, String temp) {
    return Card(
      elevation: 3,
      child: ListTile(
        leading: Text(icon, style: TextStyle(fontSize: 30)),
        title: Text(time, style: TextStyle(fontWeight: FontWeight.bold)),
        trailing: Text(temp, style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
