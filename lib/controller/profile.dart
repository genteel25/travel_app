import 'package:travel_app/util/util.dart';

part '../view/profile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => ProfileController();
}

class ProfileController extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return ProfileView(this);
  }
}
