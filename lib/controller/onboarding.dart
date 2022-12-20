import 'package:travel_app/service/session_manager.dart';
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

  scrollNavigator() async {
    if (pageIndex == 2) {
      GoRouter.of(context).push("/signin");
      await SessionManager().newUser();
    } else {
      controller.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    }
  }

  // IO.Socket socket = IO.io(
  //     'http://localhost:3000',
  //     OptionBuilder().setTransports(['websocket']) // for Flutter or Dart VM
  //         .setExtraHeaders({'foo': 'bar'}) // optional
  //         .build());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return OnboardingView(this);
  }
}
