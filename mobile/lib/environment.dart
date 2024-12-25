final class Environment {
  static const String restApiUrl = String.fromEnvironment('REST_API_URL', defaultValue: 'http://192.168.30.189:7777');
  static const String webSocketUrl = String.fromEnvironment('WEB_SOCKET_URL', defaultValue: 'ws://192.168.30.189:7777');
}