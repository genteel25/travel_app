import 'package:travel_app/util/util.dart';

part '../view/calendar.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  State<CalendarScreen> createState() => CalendarController();
}

class CalendarController extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return CalendarView(this);
  }
}
