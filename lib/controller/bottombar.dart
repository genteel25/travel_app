import 'package:travel_app/controller/calendar.dart';
import 'package:travel_app/controller/home.dart';
import 'package:travel_app/controller/message.dart';
import 'package:travel_app/controller/profile.dart';
import 'package:travel_app/util/util.dart';

part '../view/bottombar.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomBarScreen> createState() => BottomBarController();
}

class BottomBarController extends State<BottomBarScreen> {
  int currentIndex = 0;

  setPage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    setPage(0);
  }

  @override
  Widget build(BuildContext context) {
    return BottomBarView(this);
  }
}
