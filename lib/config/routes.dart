import 'package:travel_app/controller/forgot_password.dart';
import 'package:travel_app/controller/otp.dart';
import 'package:travel_app/service/session_manager.dart';
import 'package:travel_app/util/util.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      name: "home",
      path: "/",
      builder: (context, state) => const OnboardingScreen(),
    ),
    GoRoute(
      name: "signin",
      path: "/signin",
      builder: (context, state) => const SigninScreen(),
    ),
    GoRoute(
      name: "signup",
      path: "/signup",
      builder: (context, state) => const SignupScreen(),
    ),
    GoRoute(
      path: "/forgotpassword",
      builder: (context, state) => const ForgotPasswordScreen(),
    ),
    GoRoute(
      path: "/otp",
      builder: (context, state) => const OtpScreen(),
    ),
    GoRoute(
      path: "/home",
      builder: (context, state) => const BottomBarScreen(),
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
  redirect: (_, state) {
    bool newUser = false;
    SessionManager().getNewUser().then((user) => {
          newUser = user,
        });
    if (!newUser) {
      return "/signin";
    }
    return null;
  },
  // debugLogDiagnostics: true,
);
