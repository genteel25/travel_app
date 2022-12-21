import 'package:flutter/gestures.dart';
import 'package:travel_app/service/session_manager.dart';
import 'package:travel_app/util/util.dart';
import 'package:travel_app/widget/asset.dart';
import 'package:travel_app/widget/textfield.dart';

part '../view/signin.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  State<SigninScreen> createState() => SigninController();
}

class SigninController extends State<SigninScreen> {
  bool showPassword = false;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  changePasswordIcon() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SigninView(this);
  }
}
