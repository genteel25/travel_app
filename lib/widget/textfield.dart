import 'package:travel_app/util/util.dart';

class InputField extends StatelessWidget {
  const InputField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.lightest,
      style: checkThemeMode(context) == ThemeMode.dark
          ? AppTextStyles.medium.copyWith(color: AppColors.lightest)
          : AppTextStyles.medium.copyWith(
              color: AppColors.dark,
            ),
    );
  }
}
