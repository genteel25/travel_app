part of '../controller/calendar.dart';

class CalendarView extends StatelessView<CalendarScreen, CalendarController> {
  const CalendarView(CalendarController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "Calendar Page",
        style: AppTextStyles.bolds.copyWith(color: AppColors.white),
      )),
    );
  }
}
