import 'package:travel_app/model/user_response.dart';
import 'package:travel_app/util/socket_methods.dart';
import 'package:travel_app/util/util.dart';

part '../view/chat.dart';

class ChatScreen extends StatefulWidget {
  final Map<String, dynamic> user;
  const ChatScreen({Key? key, required this.user}) : super(key: key);

  @override
  State<ChatScreen> createState() => ChatController();
}

class ChatController extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ChatView(this);
  }
}
