part of 'imports.dart';

class _Avatar extends StatelessWidget {
  const _Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Get.arguments as LeaderboardUserEntity;
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(1000),
          child: CachedNetworkWidget(user.image),
        ),
      ],
    );
  }
}

class _QuickInfo extends StatelessWidget {
  const _QuickInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Get.arguments as LeaderboardUserEntity;
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        color: context.cardColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "#${mockUser.rank}",
                  style: context.title,
                ),
                const SizedBox(width: 5),
                Text(
                  " All Time",
                  style: context.smallName,
                ),
                const Spacer(),
                Text(
                  user.fullname,
                  style: context.biggerName,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "${mockUser.points}",
                  style: context.title,
                ),
                const SizedBox(width: 5),
                SvgPicture.asset(
                  IconConstants.points,
                  height: 30,
                  width: 30,
                ),
                Text(
                  "pts.",
                  style: context.name,
                ),
                const Spacer(),
                Text(
                  "streak",
                  style: context.name,
                ),
                SvgPicture.asset(
                  IconConstants.streak,
                  height: 30,
                  width: 30,
                ),
                const SizedBox(width: 5),
                Text(
                  "${mockUser.streaks}",
                  style: context.title,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _Heatmap extends StatelessWidget {
  const _Heatmap();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Text(
                "Heatmap",
                style: context.name,
              ),
              const Spacer(),
              const SizedBox(width: 5),
              Text(
                "${mockUser.points}",
                style: context.title,
              ),
              SvgPicture.asset(
                IconConstants.points,
                height: 30,
                width: 30,
              ),
              Text(
                "pts.",
                style: context.name,
              ),
            ],
          ),
        ),
        CustomHeatmap(
          startDate: DateTime.now().subtract(const Duration(days: 300)),
          endDate: DateTime.now().add(
            const Duration(days: 100),
          ),
          data: {for (var entry in heatmapData) entry.time: entry.lvl},
        ),
      ],
    );
  }
}

class _Streak extends StatelessWidget {
  const _Streak();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Text(
                "Active Dates",
                style: context.name,
              ),
              const Spacer(),
              Text(
                "Current streak",
                style: context.smallName,
              ),
              const SizedBox(width: 5),
              Text(
                "${mockStreakEntity.currentStreak}",
                style: context.title,
              ),
              SvgPicture.asset(
                IconConstants.streak,
                height: 25,
                width: 25,
              ),
            ],
          ),
        ),
        StreakCalendarWidget(activeDates: mockStreakEntity.activeDates),
      ],
    );
  }
}
