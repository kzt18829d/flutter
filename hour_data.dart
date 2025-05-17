class HourData {
  final String time;
  final String icon;
  final String temp;

  HourData(this.time, this.icon, this.temp);
}

// Данные для демонстрации
final demoHourlyData = [
  HourData('9 AM', '☀️', '24°C'),
  HourData('12 PM', '⛅', '26°C'),
  HourData('3 PM', '🌤️', '28°C'),
  HourData('6 PM', '🌥️', '25°C'),
];
