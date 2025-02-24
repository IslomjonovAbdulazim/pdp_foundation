part of 'imports.dart';

class _QuickInfo extends StatelessWidget {
  const _QuickInfo({super.key});

  @override
  Widget build(BuildContext context) {
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
                  "${mockUser.firstname} ${mockUser.lastname}",
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

class _LastRead extends StatelessWidget {
  const _LastRead();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        color: context.cardColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: CircularProgressIndicator(
                      color: context.textPrimary,
                      value: mockLastReadTheme.progress / 100,
                      strokeCap: StrokeCap.round,
                      strokeWidth: 5,
                      backgroundColor: context.dividerColor,
                    ),
                  ),
                  Text(
                    "${mockLastReadTheme.progress}%",
                    style: context.name,
                  ),
                ],
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Chapter ${mockLastReadTheme.themeID}",
                      style: context.name,
                    ),
                    const SizedBox(height: 2),
                    Text(
                      mockLastReadTheme.title,
                      style: context.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      "Continue Your Journey!",
                      style: context.body,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          CupertinoButton(
            color: context.textPrimary,
            borderRadius: BorderRadius.circular(20),
            onPressed: () {},
            child: Center(
              child: Text(
                "Continue Studying",
                style: context.button,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Challenges extends StatelessWidget {
  const _Challenges();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Text(
                "Challenges of the Day",
                style: context.name,
              ),
              const Spacer(),
              CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                child: Text(
                  "View all",
                  style: context.body,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 250,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: mockDailyChallenges
                  .map(
                    (challenge) => __ChallengeItem(challenge: challenge),
                  )
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}

class __ChallengeItem extends StatelessWidget {
  final DailyChallenges challenge;

  const __ChallengeItem({required this.challenge});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: context.cardColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  challenge.title,
                  style: context.biggerName,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                "${challenge.points}",
                style: context.name,
              ),
              SvgPicture.asset(
                IconConstants.points,
                height: 30,
                width: 30,
              ),
            ],
          ),
          const SizedBox(height: 5),
          Text(
            challenge.description,
            style: context.body,
          ),
          const Spacer(),
          CupertinoButton(
            color: context.textPrimary,
            borderRadius: BorderRadius.circular(20),
            onPressed: () {},
            child: Center(
              child: Text(
                "Challenge",
                style: context.button,
              ),
            ),
          ),
        ],
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
