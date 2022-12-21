import 'package:travel_app/controller/forgot_password.dart';
import 'package:travel_app/controller/otp.dart';
import 'package:travel_app/util/util.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      name: "home",
      path: "/",
      redirect: (_, state) {
        if (isLoggedIn == true) {
          return "/home";
        } else if (newUser == false) {
          return "/signin";
        }
        return null;
      },
      builder: (context, state) => const OnboardingScreen(),
    ),
    GoRoute(
      name: "signup",
      path: "/signup",
      builder: (context, state) {
        return const SignupScreen();
      },
    ),
    GoRoute(
      name: "signin",
      path: "/signin",
      builder: (context, state) {
        return const SigninScreen();
      },
    ),
    GoRoute(
      name: "forgotpassword",
      path: "/forgotpassword",
      builder: (context, state) => const ForgotPasswordScreen(),
    ),
    GoRoute(
      name: "otp",
      path: "/otp",
      builder: (context, state) => const OtpScreen(),
    ),
    GoRoute(
      name: "main",
      path: "/home",
      builder: (context, state) => const BottomBarScreen(),
    ),
    GoRoute(
      name: "chat",
      path: "/chat",
      builder: (context, state) {
        return ChatScreen(
          user: state.extra! as Map<String, dynamic>,
        );
      },
    ),
    GoRoute(
      name: "profile",
      path: "/profile",
      builder: (context, state) {
        return const ProfileScreen();
      },
    ),
  ],
  debugLogDiagnostics: true,
);
