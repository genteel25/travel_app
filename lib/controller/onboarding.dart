import 'package:travel_app/util/util.dart';
import 'package:travel_app/widget/button.dart';
import 'package:travel_app/widget/typo.dart';

part '../view/onboarding.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => OnboardingController();
}

class OnboardingController extends State<OnboardingScreen> {
  final PageController controller = PageController();
  int pageIndex = 0;
  double width = 0;

  setPageIndex(int value) {
    setState(() {
      pageIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return OnboardingView(this);
  }
}
