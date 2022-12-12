import 'package:travel_app/controller/forgot_password.dart';
import 'package:travel_app/controller/home.dart';
import 'package:travel_app/controller/otp.dart';
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
        GoRoute(
          name: "signup",
          path: "signup",
          builder: (context, state) => const SignupScreen(),
        ),
        GoRoute(
          name: "forgotpassword",
          path: "forgotpassword",
          builder: (context, state) => const ForgotPasswordScreen(),
        ),
        GoRoute(
          name: "otp",
          path: "otp",
          builder: (context, state) => const OtpScreen(),
        ),
        GoRoute(
          name: "home",
          path: "home",
          builder: (context, state) => const HomeScreen(),
        ),
      ],
    ),
  ],
);
