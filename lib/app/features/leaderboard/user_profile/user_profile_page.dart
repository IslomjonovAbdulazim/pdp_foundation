part of 'imports.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Get.arguments as LeaderboardUserEntity;
    return Scaffold(
      backgroundColor: context.backgroundColor,
      appBar: AppBar(
        backgroundColor: context.backgroundColor,
        surfaceTintColor: context.backgroundColor,
        title: Text(user.fullname),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 20,
        ),
        child: Column(
          children: [
            _Avatar(),
            SizedBox(height: 30),
            _QuickInfo(),
            SizedBox(height: 30),
            _Heatmap(),
            SizedBox(height: 30),
            _Streak(),
            SizedBox(height: 200),
          ],
        ),
      ),
    );
  }
}
