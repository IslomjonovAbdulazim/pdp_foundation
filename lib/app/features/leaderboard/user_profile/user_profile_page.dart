part of 'imports.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Get.arguments as LeaderboardUserEntity;
    return Scaffold(
      appBar: AppBar(
        title: Text(user.fullname),
      ),
    );
  }
}
