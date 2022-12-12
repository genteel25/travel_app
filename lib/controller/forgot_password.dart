import 'package:travel_app/util/util.dart';
import 'package:travel_app/widget/asset.dart';
import 'package:travel_app/widget/textfield.dart';

part '../view/forgot_password.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => ForgotPasswordController();
}

class ForgotPasswordController extends State<ForgotPasswordScreen> {
  bool showModal = false;

  changeModalVisibility() {
    setState(() {
      showModal = !showModal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ForgotPasswordView(this);
  }
}
