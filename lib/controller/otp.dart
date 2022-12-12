import 'package:pinput/pinput.dart';
import 'package:travel_app/util/util.dart';

part '../view/otp.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => OtpController();
}

class OtpController extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return OtpView(this);
  }
}
