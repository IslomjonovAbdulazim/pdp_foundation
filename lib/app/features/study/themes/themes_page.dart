part of 'imports.dart';

class ThemesPage extends GetView<ThemesController> {
  const ThemesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => controller.isLoading.value
            ? const Center(
                child: CircularProgressIndicator.adaptive(),
              )
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SafeArea(
                  child: Stack(
                    children: [
                      CustomScrollView(
                        slivers: [
                          SliverAppBar(
                            surfaceTintColor: context.backgroundColor,
                            floating: true,
                            pinned: true,
                            stretch: true,
                            centerTitle: true,
                            title: const Text("Study"),
                            actions: [
                              CupertinoButton(
                                onPressed: controller.load,
                                child: const Icon(CupertinoIcons.refresh),
                              ),
                            ],
                          ),
                          SliverList(
                            delegate: SliverChildBuilderDelegate(
                              (context, index) =>
                                  _ThemeItem(theme: controller.themes[index]),
                              childCount: controller.themes.length,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
