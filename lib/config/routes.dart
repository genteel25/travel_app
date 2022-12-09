import 'package:travel_app/controller/onboarding.dart';
import 'package:travel_app/util/util.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      name: "home",
      path: "/",
      builder: (context, state) => const OnboardingScreen(),
    )
  ],
);
