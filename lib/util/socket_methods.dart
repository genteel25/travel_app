import 'package:travel_app/util/socket_io.dart';
import 'package:travel_app/util/util.dart';

List<dynamic>? datas;

class SocketMethods {
  final _socketClient = SocketClient.instance.socket!;

  void createRoom() {
    _socketClient.emit("createRoom", {
      "name": "Ajagbe Quadri",
    });
  }

  void sendMessage() {
    _socketClient.on("send_message", (data) {
      if (data["action"] == "create") {
        datas = data['data'];
        print(datas);
      }
    });
  }
}
