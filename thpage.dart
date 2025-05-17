import 'hour_data.dart';

class THPage extends StatelessWidget {
  final List<HourData> hourlyData;

  const THPage({required this.hourlyData});

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
      body: ListView.builder(
        padding: EdgeInsets.all(20),
        itemCount: hourlyData.length,
        itemBuilder: (context, index) => _buildHourCard(hourlyData[index]),
      ),
    );
  }

  @protected
  Widget _buildHourCard(HourData data) {
    return Card(
      elevation: 3,
      child: ListTile(
        leading: Text(data.icon, style: TextStyle(fontSize: 30)),
        title: Text(data.time, style: TextStyle(fontWeight: FontWeight.bold)),
        trailing: Text(data.temp, style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
