import 'package:travel_app/util/util.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      name: "onboarding",
      path: "/",
      builder: (context, state) => const OnboardingScreen(),
      routes: [
        GoRoute(
          name: "signin",
          path: "signin",
          builder: (context, state) => const SigninScreen(),
        ),
      ],
    )
  ],
);
