import 'package:travel_app/util/util.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await ThemeManager.initialise();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => ThemeBuilder(
        defaultThemeMode: ThemeMode.system,
        darkTheme: AppTheme.darkTheme,
        lightTheme: AppTheme.lightTheme,
        builder: (context, regularTheme, darkTheme, themeMode) => MaterialApp(
          theme: regularTheme,
          darkTheme: darkTheme,
          themeMode: themeMode,
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: Center(
              child: Container(
                child: const Text("Travel App"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
