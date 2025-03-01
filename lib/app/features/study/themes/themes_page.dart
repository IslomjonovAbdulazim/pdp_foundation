part of 'imports.dart';

class ThemesPage extends StatelessWidget {
  const ThemesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) => _ThemeItem(theme: mockThemes[index]),
                      childCount: mockThemes.length,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
