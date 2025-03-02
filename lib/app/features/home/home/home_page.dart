part of 'imports.dart';

class HomePage extends StatelessWidget {
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
            onPressed: () {},
            child: SizedBox(
              height: 40,
              width: 40,
              child: Image.asset(BrandConstants.logo),
            ),
          ),
        ),
        centerTitle: false,
        title: const Text(
          "Salom, Aziz!",
        ),
        actions: [
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              clipBehavior: Clip.antiAlias,
              child: SizedBox(
                height: 40,
                width: 40,
                child: CachedNetworkWidget(mockUser.image),
              ),
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 20,
        ),
        child: Column(
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
    );
  }
}
