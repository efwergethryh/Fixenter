import 'package:flutter/material.dart';
import 'package:movie/arguments.dart';
import 'package:movie/channelCard.dart';
import 'package:movie/channel.dart';
import 'package:movie/pages/playvideo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Channels extends StatefulWidget {
    late List<channel> channels;
  Channels({required this.channels});

  @override
  State<Channels> createState() => _ChannelsState();
}

class _ChannelsState extends State<Channels> {

  //   channel(
  //       name: 'mbc',
  //       path: 'assets/pics/mbc.png',
  //       dataSource: 'asset',
  //       channelUrl: 'assets/SaadAlghamidi.mp4'),
  //   channel(
  //       name: 'Cartoon network',
  //       path: 'assets/pics/cn.png',
  //       dataSource: 'network',
  //       channelUrl:
  //           'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
  //   channel(
  //       name: 'Kissing Star',
  //       path: 'assets/pics/KissingStar.png',
  //       dataSource: 'asset',
  //       channelUrl: 'assets/gay.mp4'),
  //   channel(
  //       name: 'Kissing Star',
  //       path: 'assets/pics/KissingStar.png',
  //       dataSource: 'network',
  //       channelUrl: 'https://www.youtube.com/watch?v=LyT6bjK35Sg'),
  // ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          children: widget.channels
              .map((channel) => ChannelCard(
                    c: channel,
                    play: () {
                      Navigator.pushNamed(context, '/videoPlay',
                          arguments: Arguments(
                              channel.channelUrl, channel.dataSource, '', ''));
                    },
                  ))
              .toList()),
    );
  }
} 
