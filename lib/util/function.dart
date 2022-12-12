import 'package:travel_app/util/util.dart';

ThemeMode checkThemeMode(BuildContext context) {
  return getThemeManager(context).initialTheme.themeMode!;
}

goToNewScreen(BuildContext context, String routeName) {
  return context.go(routeName);
}

pushToNewScreen(BuildContext context, String routeName) {
  return GoRouter.of(context).push(routeName);
}

popScreen(BuildContext context) {
  return GoRouter.of(context).pop();
}
