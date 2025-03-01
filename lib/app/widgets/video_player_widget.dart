import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class AwesomeVideoPlayer extends StatefulWidget {
  /// The URL of the video (network URL).
  final String videoUrl;

  /// Whether the video should play automatically.
  final bool autoPlay;

  /// Whether the video should loop.
  final bool looping;

  /// The aspect ratio of the video player.
  final double aspectRatio;

  const AwesomeVideoPlayer({
    super.key,
    required this.videoUrl,
    this.autoPlay = false,
    this.looping = false,
    this.aspectRatio = 16 / 9,
  });

  @override
  _AwesomeVideoPlayerState createState() => _AwesomeVideoPlayerState();
}

class _AwesomeVideoPlayerState extends State<AwesomeVideoPlayer> {
  late VideoPlayerController _videoController;
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  Future<void> _initializePlayer() async {
    _videoController = VideoPlayerController.network(widget.videoUrl);
    await _videoController.initialize();
    _chewieController = ChewieController(
      videoPlayerController: _videoController,
      autoPlay: widget.autoPlay,
      looping: widget.looping,
      aspectRatio: widget.aspectRatio,
      // Optional: Customize the error message if video fails to load
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Text(
            errorMessage,
            style: const TextStyle(color: Colors.white),
          ),
        );
      },
    );
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _chewieController?.dispose();
    _videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_chewieController != null && _videoController.value.isInitialized) {
      return Chewie(controller: _chewieController!);
    } else {
      return const Center(child: CircularProgressIndicator());
    }
  }
}
