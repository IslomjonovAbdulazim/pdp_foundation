part of 'imports.dart';

class BNBPage extends StatelessWidget {
  static const List<Widget> pages = [
    HomePage(),
    LeaderboardPage(),
    ThemesPage(),
  ];

  const BNBPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<BnbController>();
    return Scaffold(
      body: Obx(() => pages[controller.currentIndex.value]), // Dynamic body
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            currentIndex: controller.currentIndex.value,
            onTap: (index) => controller.changePage(index),
            selectedItemColor: context.textPrimary,
            unselectedItemColor: context.textSecondary,
            items: [
              const BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.house_fill),
                label: "Home",
              ),
              const BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chart_bar_alt_fill),
                label: "Leaderboard",
              ),
              const BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.book_fill),
                label: "Study",
              ),
            ],
          )),
    );
  }
}
