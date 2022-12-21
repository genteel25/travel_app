import 'package:travel_app/service/session_manager.dart';
import 'package:travel_app/util/util.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await ScreenUtil.ensureScreenSize();
  await ThemeManager.initialise();
  newUser = await SessionManager().getNewUser();
  isLoggedIn = await SessionManager().getSession();
  print(isLoggedIn);
  runApp(const MyApp());
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => ThemeBuilder(
          defaultThemeMode: ThemeMode.dark,
          darkTheme: AppTheme.darkTheme,
          lightTheme: AppTheme.lightTheme,
          builder: (context, regularTheme, darkTheme, themeMode) =>
              MultiBlocProvider(
                providers: [
                  BlocProvider<UserBloc>(create: (context) => UserBloc()),
                  BlocProvider<AuthBloc>(create: (context) => AuthBloc()),
                ],
                child: MaterialApp.router(
                  theme: regularTheme,
                  darkTheme: darkTheme,
                  themeMode: themeMode,
                  debugShowCheckedModeBanner: false,
                  routeInformationParser: router.routeInformationParser,
                  routerDelegate: router.routerDelegate,
                ),
              )),
    );
  }
}
