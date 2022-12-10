import 'package:travel_app/util/util.dart';

part '../view/signin.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  State<SigninScreen> createState() => SigninController();
}

class SigninController extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return SigninView(this);
  }
}
