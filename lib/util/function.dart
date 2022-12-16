import 'package:travel_app/util/util.dart';

ThemeMode checkThemeMode(BuildContext context) {
  return getThemeManager(context).initialTheme.themeMode!;
}

goToNewScreen(BuildContext context, String routeName) {
  GoRouter.of(context).go(routeName);
}

pushToNewScreen(BuildContext context, String routeName) {
  GoRouter.of(context).push(routeName);
}

popScreen(BuildContext context) {
  GoRouter.of(context).pop();
}

bool checkCurrentThemeMode(BuildContext context) {
  return getThemeManager(context).isDarkMode;
}
