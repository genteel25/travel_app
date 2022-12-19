import 'package:travel_app/controller/forgot_password.dart';
import 'package:travel_app/controller/otp.dart';
import 'package:travel_app/model/user_response.dart';
import 'package:travel_app/util/util.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: "/",
      builder: (context, state) => const OnboardingScreen(),
      routes: [
        GoRoute(
          path: "signin",
          builder: (context, state) => const SigninScreen(),
        ),
        GoRoute(
          path: "signup",
          builder: (context, state) => const SignupScreen(),
        ),
        GoRoute(
          path: "forgotpassword",
          builder: (context, state) => const ForgotPasswordScreen(),
        ),
        GoRoute(
          path: "otp",
          builder: (context, state) => const OtpScreen(),
        ),
      ],
    ),
    GoRoute(
      path: "/home",
      builder: (context, state) {
        return const BottomBarScreen();
      },
    ),
    GoRoute(
      path: "/chat",
      builder: (context, state) {
        return ChatScreen(
          user: state.extra! as Map<String, dynamic>,
        );
      },
    ),
    GoRoute(
      path: "/profile",
      builder: (context, state) {
        return const ProfileScreen();
      },
    ),
  ],
  debugLogDiagnostics: true,
);
