import 'package:flutter/gestures.dart';
import 'package:travel_app/controller/otp.dart';
import 'package:travel_app/util/util.dart';
import 'package:travel_app/widget/asset.dart';
import 'package:travel_app/widget/textfield.dart';

part '../view/signup.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => SignupController();
}

class SignupController extends State<SignupScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  bool showPassword = false;

  changePasswordIcon() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SignupView(this);
  }
}
