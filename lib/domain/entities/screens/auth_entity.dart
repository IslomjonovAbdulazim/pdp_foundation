class AuthEntity {
  final String deviceID;
  final String deviceName;
  final String deviceVersion;
  final String deviceOS;
  final DateTime time;

  AuthEntity({
    required this.deviceID,
    required this.deviceName,
    required this.deviceVersion,
    required this.deviceOS,
    required this.time,
  });
}
