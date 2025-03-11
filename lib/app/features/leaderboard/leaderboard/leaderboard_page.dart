part of 'imports.dart';

class LeaderboardPage extends GetView<LeaderboardController> {
  const LeaderboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Leaderboard",
          style: context.title,
        ),
        actions: [
          CupertinoButton(
            onPressed: () {
              Get.toNamed(AppRoutes.liveQuiz);
            },
            child: const Icon(
              CupertinoIcons.play,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: StreamBuilder<List<LeaderboardUserModel>>(
            stream: controller.connectLeaderboard(),
            builder: (context, snapshot) {
              if (snapshot.hasError || snapshot.data == null) {
                return Center(
                  child: Text(snapshot.error.toString()),
                );
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: Text("Wait"),
                );
              }

              final users = snapshot.data!;

              return ImplicitlyAnimatedList<LeaderboardUserModel>(
                items: users,
                areItemsTheSame: (oldItem, newItem) => oldItem.id == newItem.id,
                itemBuilder: (context, animation, user, index) {
                  return SizeFadeTransition(
                    animation: animation,
                    child: _UserItem(user: user),
                  );
                },
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
