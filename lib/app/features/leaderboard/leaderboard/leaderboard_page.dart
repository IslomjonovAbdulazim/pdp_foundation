part of 'imports.dart';

class LeaderboardPage extends GetView<LeaderboardController> {
  const LeaderboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: StreamBuilder<List<LeaderboardUserModel>>(
            stream: controller.connectLeaderboard(),
            builder: (context, snapshot) {
              if (snapshot.hasError || snapshot.data == null)
                return Center(
                  child: Text(snapshot.error.toString()),
                );
              if (snapshot.connectionState == ConnectionState.waiting)
                return Center(
                  child: Text("Wait"),
                );
              return ListView.builder(
                itemCount: snapshot.data?.length ?? 0,
                itemBuilder: (context, index) =>
                    _UserItem(user: snapshot.data![index]),
              );
            },
          ),
        ),
      ),
    );
  }
}

/*
// SliverAppBar(
              //   expandedHeight: 300,
              //   surfaceTintColor: context.backgroundColor,
              //   floating: true,
              //   pinned: true,
              //   stretch: true,
              //   centerTitle: true,
              //   title: const Text("Leaderboard"),
              //   flexibleSpace: FlexibleSpaceBar(
              //     // background: _Top3(top3users: controller.leaderboardList.value.sublist(0, 3)),
              //   ),
              //   actions: [
              //     CupertinoButton(
              //       onPressed: () {
              //         Get.toNamed(AppRoutes.liveQuiz);
              //       },
              //       child: const Icon(
              //         CupertinoIcons.play,
              //       ),
              //     ),
              //   ],
              // ),
              // SliverList(
              //   delegate: SliverChildBuilderDelegate(
              //     (context, index) =>
              //         _UserItem(user: controller.leaderboardList.value[index + 3]),
              //     childCount:
              //         mockLeaderboard.length - 3, // Number of items in the list
              //   ),
              // ),
 */
