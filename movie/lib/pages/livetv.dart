import 'package:flutter/material.dart';
import 'package:movie/channel.dart';
import 'package:movie/channelCard.dart';
import 'package:movie/pages/Channels.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class liveTv extends StatefulWidget {
  liveTv();

  @override
  State<liveTv> createState() => _liveTvState();
}

class _liveTvState extends State<liveTv> {
  final List<String> names = ["Australia", "Iraq", "Syria", "Libya", "China"];
  final PageController _pageController = PageController();
  final List<channel> channels = [
    channel(
        name: 'mbc',
        path: 'assets/pics/mbc.png',
        dataSource: 'asset',
        channelUrl: 'assets/SaadAlghamidi.mp4'),
    channel(
        name: 'Cartoon network',
        path: 'assets/pics/cn.png',
        dataSource: 'network',
        channelUrl:
            'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    channel(
        name: 'Kissing Star',
        path: 'assets/pics/KissingStar.png',
        dataSource: 'network',
        channelUrl: 'https://www.youtube.com/watch?v=LyT6bjK35Sg'),
    channel(
        name: 'tv one',
        path: 'assets/pics/tvone.png',
        dataSource: 'network',
        channelUrl: 'https://www.youtube.com/watch?v=LyT6bjK35Sg'),
    channel(
        name: 'Zee',
        path: 'assets/pics/Zee.png',
        dataSource: 'network',
        channelUrl: 'https://www.youtube.com/watch?v=LyT6bjK35Sg'),
    channel(
        name: 'Space',
        path: 'assets/pics/Space.png',
        dataSource: 'network',
        channelUrl: 'https://www.youtube.com/watch?v=LyT6bjK35Sg'),
    channel(
        name: 'mbc',
        path: 'assets/pics/mbc.png',
        dataSource: 'asset',
        channelUrl: 'assets/SaadAlghamidi.mp4'),
    channel(
        name: 'Cartoon network',
        path: 'assets/pics/cn.png',
        dataSource: 'network',
        channelUrl:
            'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    channel(
        name: 'Kissing Star',
        path: 'assets/pics/KissingStar.png',
        dataSource: 'network',
        channelUrl: 'https://www.youtube.com/watch?v=LyT6bjK35Sg'),
    channel(
        name: 'tv one',
        path: 'assets/pics/tvone.png',
        dataSource: 'network',
        channelUrl: 'https://www.youtube.com/watch?v=LyT6bjK35Sg'),
    channel(
        name: 'Zee',
        path: 'assets/pics/Zee.png',
        dataSource: 'network',
        channelUrl: 'https://www.youtube.com/watch?v=LyT6bjK35Sg'),
    channel(
        name: 'Space',
        path: 'assets/pics/Space.png',
        dataSource: 'network',
        channelUrl: 'https://www.youtube.com/watch?v=LyT6bjK35Sg'),
  ];
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 4, 3, 43),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    if (_currentPage > 0) {
                      _pageController.previousPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                ),
                Text(
                  names[_currentPage],
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                IconButton(
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    if (_currentPage < names.length - 1) {
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: names.length,
              itemBuilder: (BuildContext context, int index) {
                return Channels(
                  channels: channels,
                );
              },
              onPageChanged: (int index) {
                setState(() {
                  _currentPage = index;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
