import 'package:travel_app/util/util.dart';

class InputField extends StatelessWidget {
  const InputField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.lightest,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.lightGrey,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.r),
          borderSide: const BorderSide(width: 0),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.r),
          borderSide: const BorderSide(width: 0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.r),
          borderSide: BorderSide(
            width: 3.w,
            color: AppColors.grey.withOpacity(0.25),
          ),
        ),
      ),
    );
  }
}
