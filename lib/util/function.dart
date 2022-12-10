import 'package:travel_app/util/util.dart';

ThemeMode checkThemeMode(BuildContext context) {
  return getThemeManager(context).initialTheme.themeMode!;
}
