import 'package:travel_app/util/util.dart';

class TypoWidget extends StatelessWidget {
  final String data;
  final TextStyle textStyle;
  TextAlign? textAlign;
  bool? wrap;
  TextOverflow? overflow;
  TypoWidget({
    Key? key,
    required this.data,
    required this.textStyle,
    this.textAlign,
    this.overflow,
    this.wrap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: textStyle,
      softWrap: wrap ?? true,
      overflow: overflow ?? TextOverflow.visible,
      textAlign: textAlign ?? TextAlign.center,
    );
  }
}
