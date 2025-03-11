part of 'imports.dart';

class TopicPage extends GetView<TopicController> {
  const TopicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                leadingWidth: 30,
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(3),
                  child: LinearProgressIndicator(
                    borderRadius: BorderRadius.circular(10),
                    color: context.textPrimary,
                    minHeight: 3,
                    backgroundColor: context.dividerColor,
                    value: controller.theme.value.progress / 100,
                  ),
                ),
                surfaceTintColor: context.backgroundColor,
                pinned: true,
                stretch: false,
                centerTitle: true,
                title: Text(controller.theme.value.name),
                actions: [
                  // CupertinoButton(
                  //   padding: EdgeInsets.zero,
                  //   onPressed: () {
                  //     Get.toNamed(AppRoutes.liveQuiz);
                  //   },
                  //   child: Icon(
                  //     CupertinoIcons.play,
                  //     color: context.textPrimary,
                  //   ),
                  // ),
                ],
              ),
              Obx(
                () => controller.isLoading.value
                    ? const SliverToBoxAdapter(
                        child: SizedBox(
                          height: 300,
                          width: 300,
                          child: Center(
                            child: CircularProgressIndicator.adaptive(),
                          ),
                        ),
                      )
                    : SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) =>
                              _TopicItem(topic: controller.topics[index]),
                          childCount: controller.topics.length,
                        ),
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
