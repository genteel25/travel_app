import 'package:travel_app/util/util.dart';

class Button extends StatelessWidget {
  const Button({Key? key, required this.text, this.onPressed})
      : super(key: key);

  final Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed ?? () {},
      child: Text(text),
    );
  }
}
