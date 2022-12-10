import 'package:travel_app/util/util.dart';

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

  scrollNavigator() {
    if (pageIndex == 2) {
      print("Last Screen");
    } else {
      controller.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return OnboardingView(this);
  }
}
