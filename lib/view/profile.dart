part of '../controller/profile.dart';

class ProfileView extends StatelessView<ProfileScreen, ProfileController> {
  const ProfileView(ProfileController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "Profile Page",
        style: AppTextStyles.bolds.copyWith(color: AppColors.white),
      )),
    );
  }
}
