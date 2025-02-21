part of 'imports.dart';

class LeaderboardPage extends StatelessWidget {
  const LeaderboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 300,
              surfaceTintColor: context.backgroundColor,
              floating: true,
              pinned: true,
              stretch: true,
              centerTitle: true,
              title: const Text("Leaderboard"),
              flexibleSpace: FlexibleSpaceBar(
                background: _Top3(top3users: mockLeaderboard.sublist(0, 3)),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => _UserItem(user: mockLeaderboard[index + 3]),
                childCount: mockLeaderboard.length - 3, // Number of items in the list
              ),
            ),
          ],
        ),
      ),
    );
  }
}
