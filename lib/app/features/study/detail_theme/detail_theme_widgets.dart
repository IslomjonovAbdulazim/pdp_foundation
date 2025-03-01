part of 'imports.dart';

class _Video extends StatelessWidget {
  final String url;

  const _Video(this.url, {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: AwesomeVideoPlayer(
          videoUrl: url.isNotEmpty
              ? url
              : "https://videos.pexels.com/video-files/5220279/5220279-hd_1920_1080_25fps.mp4",
        ),
      ),
    );
  }
}
