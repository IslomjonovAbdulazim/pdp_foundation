part of 'imports.dart';

class _Top3 extends StatelessWidget {
  final List<LeaderboardUserModel> top3users;

  const _Top3({required this.top3users});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            child: CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                Get.toNamed(AppRoutes.userProfile, arguments: top3users[2]);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: context.selection,
                          width: 4,
                        ),
                        image: DecorationImage(
                          image: NetworkImage(
                            top3users[1].avatar ?? "",
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    top3users[1].firstName,
                    style: context.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 2),
                  Text(
                    "${top3users[1].rating} pts",
                    style: context.number,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                Get.toNamed(AppRoutes.userProfile, arguments: top3users[2]);
              },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: context.selection,
                            width: 4,
                          ),
                          image: DecorationImage(
                            image: NetworkImage(
                              top3users[0].avatar!,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      top3users[0].firstName,
                      style: context.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 2),
                    Text(
                      "${top3users[0].rating} pts",
                      style: context.number,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                Get.toNamed(AppRoutes.userProfile, arguments: top3users[2]);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: context.selection,
                          width: 4,
                        ),
                        image: DecorationImage(
                          image: NetworkImage(
                            top3users[2].avatar!,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    top3users[2].firstName,
                    style: context.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 2),
                  Text(
                    "${top3users[2].rating} pts",
                    style: context.number,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _UserItem extends StatelessWidget {
  final LeaderboardUserModel user;

  const _UserItem({required this.user});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        Get.toNamed(AppRoutes.userProfile, arguments: user);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
        decoration: BoxDecoration(
          color: context.cardColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 30,
              child: Text(
                "${user.place}",
                style: context.number,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: user.avatar == null
                  ? Container(
                      height: 30,
                      width: 30,
                      color: Colors.red,
                    )
                  : Image.network(
                      user.avatar!,
                      height: 40,
                      width: 40,
                      fit: BoxFit.cover,
                    ),
            ),
            const SizedBox(width: 10),
            Text(
              user.firstName,
              style: context.name,
            ),
            const SizedBox(width: 3),
            Text(
              user.lastName,
              style: context.name,
            ),
            const Spacer(),
            Text(
              "${user.rating} pts",
              style: context.number,
            ),
          ],
        ),
      ),
    );
  }
}
