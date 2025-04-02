part of 'imports.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.backgroundColor,
      appBar: AppBar(
        backgroundColor: context.backgroundColor,
        surfaceTintColor: context.backgroundColor,
        leadingWidth: 60,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              TokenService.to.clearToken();
              Get.offNamed(AppRoutes.splash);
            },
            child: SizedBox(
              height: 40,
              width: 40,
              child: Image.asset(BrandConstants.logo),
            ),
          ),
        ),
        centerTitle: false,
        title: Obx(
          () => Text(
            controller.isLoading.value
                ? "..."
                : "Salom, ${controller.home?.value.firstName}!",
          ),
        ),
        actions: [
          Obx(
            () => controller.isLoading.value
                ? CupertinoButton(
                    onPressed: () {
                      controller.load();
                    },
                    child: Icon(
                      CupertinoIcons.refresh,
                      color: context.textPrimary,
                    ),
                  )
                : CupertinoButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      clipBehavior: Clip.antiAlias,
                      child: SizedBox(
                        height: 40,
                        width: 40,
                        child: CachedNetworkWidget(
                          controller.home?.value.avatar ?? mockUser.image,
                        ),
                      ),
                    ),
                  ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: Obx(
        () => controller.isLoading.value
            ? const Center(
                child: CupertinoActivityIndicator(),
              )
            : SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 20,
                ),
                child: controller.home?.value == null
                    ? Center(
                        child: Text(
                          "Something went wrong!",
                          style: context.title,
                        ),
                      )
                    : const Column(
                        children: [
                          _QuickInfo(),
                          SizedBox(height: 15),
                          _LastRead(),
                          SizedBox(height: 30),
                          _Challenges(),
                          SizedBox(height: 30),
                          _Heatmap(),
                          SizedBox(height: 30),
                          _Streak(),
                          SizedBox(height: 200),
                        ],
                      ),
              ),
      ),
    );
  }
}
