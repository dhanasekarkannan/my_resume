
class AppModel {
  final String appPlatform;
  final String? version;
  final String deviceId;
  final String deviceInfo;
  final String? priority;
  final String? appURL;
  final String? updateMsg;

  AppModel({
    required this.version,
    required this.appPlatform,
     this.appURL,
     this.deviceId = "",
     this.deviceInfo = "",
     this.priority = "0",
     this.updateMsg = "",
  });
}
