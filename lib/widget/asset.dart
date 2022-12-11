import 'package:travel_app/util/util.dart';

enum AssetType { image, svg }

class AssetHelper extends StatelessWidget {
  AssetType? type;
  final String path;
  double? width;
  AssetHelper({
    Key? key,
    this.type = AssetType.image,
    this.width,
    required this.path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return type == AssetType.image
        ? Image.asset(
            path,
            width: width ?? 12.w,
          )
        : SvgPicture.asset(
            path,
            width: width ?? 12.w,
          );
  }
}
