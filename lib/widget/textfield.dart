import 'package:travel_app/util/util.dart';

enum InputType { normal, password }

class InputField extends StatelessWidget {
  final String hintText;
  InputType? type;
  VoidCallback? onPressed;
  bool? show;
  InputField({
    Key? key,
    required this.hintText,
    this.onPressed,
    this.show,
    this.type = InputType.normal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // obscuringCharacter: "*",
      obscureText: type == InputType.password && show != true
          ? true
          : show == false
              ? false
              : false,
      decoration: InputDecoration(
        suffixIcon: type == InputType.password && show == true
            ? InkWell(
                onTap: onPressed,
                child: const Icon(
                  Icons.remove_red_eye_outlined,
                  color: Colors.grey,
                ),
              )
            : show == false
                ? InkWell(
                    onTap: onPressed,
                    child: const Icon(
                      Icons.visibility_off_outlined,
                      color: Colors.grey,
                    ),
                  )
                : null,
        hintText: hintText,
      ),
      cursorColor: AppColors.lightest,
      style: checkThemeMode(context) == ThemeMode.dark
          ? AppTextStyles.medium.copyWith(color: AppColors.lightest)
          : AppTextStyles.medium.copyWith(
              color: AppColors.dark,
            ),
    );
  }
}
