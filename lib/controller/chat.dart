import 'package:travel_app/logic/socket_methods.dart';
import 'package:travel_app/util/util.dart';

part '../view/chat.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => ChatController();
}

class ChatController extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ChatView(this);
  }
}
