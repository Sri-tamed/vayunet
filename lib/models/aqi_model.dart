class AQIModel {
  final int aqi;
  final String city;
  final String status;

  AQIModel({
    required this.aqi,
    required this.city,
    required this.status,
  });

  factory AQIModel.fromJson(Map<String, dynamic> json) {
    return AQIModel(
      aqi: json['data']['aqi'],
      city: json['data']['city']['name'],
      status: _getStatus(json['data']['aqi']),
    );
  }

  static String _getStatus(int value) {
    if (value <= 50) return "Good";
    if (value <= 100) return "Moderate";
    if (value <= 150) return "Unhealthy for Sensitive";
    if (value <= 200) return "Unhealthy";
    return "Hazardous";
  }
}