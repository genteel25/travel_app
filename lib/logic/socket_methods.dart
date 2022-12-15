import 'package:travel_app/util/util.dart';

class SocketMethods {
  final _socketClient = SocketClient.instance.socket!;

  void createRoom() {
    _socketClient.emit("createRoom", {
      "name": "Ajagbe Quadri",
    });
  }

  void sendMessage() {
    _socketClient.emit("send_message", {
      "message": "Some messages",
    });
  }
}
