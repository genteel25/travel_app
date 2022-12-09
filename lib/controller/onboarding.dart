import 'package:travel_app/util/util.dart';

part '../view/onboarding.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => OnboardingController();
}

class OnboardingController extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return OnboardingView(this);
  }
}
