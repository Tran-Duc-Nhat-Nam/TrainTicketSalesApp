import 'dart:convert';
import 'dart:developer';

import 'package:mobile/environment.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class BookingWebSocket {
  WebSocketChannel _channel;

  BookingWebSocket._(this._channel);

  static Future<BookingWebSocket> connect(int tripId, int carId) async {
    final channel = WebSocketChannel.connect(
      Uri.parse('${Environment.webSocketUrl}/booking'),
    );

    await channel.ready.then(
      (value) {
        channel.sink.add(json.encode({
          'tripId': tripId,
          'carId': carId,
        }));
        log("Done", name: "Ready");
      },
    );
    return BookingWebSocket._(channel);
  }

  Future<void> reconnect() async {
    _channel = WebSocketChannel.connect(
      Uri.parse('${Environment.webSocketUrl}/booking'),
    );

    await _channel.ready.onError(
      (error, stackTrace) => reconnect(),
    );
  }

  Future<void> listen(Function(dynamic data) onListen,
      {Function(dynamic error)? onError}) async {
    _channel.stream
        .listen(onListen, onError: onError ?? (error) => reconnect());
  }

  void book(int tripId, int seatId, int customerId) {
    final jsonData = json.encode({
      'tripId': tripId,
      'seatId': seatId,
      'customerId': customerId,
    });
    _channel.sink.add(jsonData);
  }

  void close() {
    log("Closing...", name: "Web socket");
    _channel.sink.close();
  }

  bool isOpen() {
    return _channel.closeCode == null;
  }
}
