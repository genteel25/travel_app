import 'package:travel_app/util/util.dart';

class Button extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  const Button({
    Key? key,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(text),
    );
  }
}
