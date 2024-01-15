import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:video_player/video_player.dart';

class VideoPlayerApp extends StatefulWidget {
  late String url;
  late String dataSource;
  VideoPlayerApp({required this.url, required this.dataSource});

  @override
  State<VideoPlayerApp> createState() => _VideoPlayerAppState();
}

class _VideoPlayerAppState extends State<VideoPlayerApp> {
  late VideoPlayerController _controller;
  late ChewieController _chewieController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    try {
      switch (widget.dataSource) {
        case 'asset':
          _controller = VideoPlayerController.asset(widget.url)
            ..initialize().then((value) {
              setState(() {
                _controller.play();
              });
            });
        case 'network':
          _controller = VideoPlayerController.networkUrl(Uri.parse(widget.url))
            ..initialize().then((value) {
              setState(() {
                _controller.play();
              });
            });
          break;
        default:
      }

      _chewieController = ChewieController(
        videoPlayerController: _controller,
        showControlsOnInitialize: true,
      );
    } on Exception catch (_) {
      // make it explicit that this function can throw exceptions

    }
  }

  @override
  void dispose() {
    // TODO: implementispose
    _controller.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chewie(controller: _chewieController),
      ),
    );
  }
}
