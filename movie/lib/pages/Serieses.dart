import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie/Slider.dart';
import 'package:movie/channel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Series extends StatelessWidget {
  Series();
  Future<void> fetchPlutoTvChannels() async {
    final response =
        await http.get(Uri.parse('https://api.pluto.tv/v3/live-tv/channels'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      print(jsonData['channels']);
    } else {
      throw Exception('Failed to load channels');
    }
  }

  List<channel> Shows = [
    channel(
        path:
            'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcT1tzjY0lZyMZb0eF787sOaTcYXTNEHM-hhmWT6MeM-Ac7ufypr',
        name: 'SILENT',
        dataSource: 'asset',
        channelUrl: 'asset/SaadAlghamidi.mp4'),
    channel(
        path:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6fizNzdu8Tjdouj3avaO4QmsHRHpQNHC4mG7NewjcVlVdJWpA',
        name: 'Extraction 2',
        dataSource: 'asset',
        channelUrl: 'asset/SaadAlghamidi.mp4'),
  ];
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text('Series'),
        // ),
        backgroundColor: Color.fromARGB(255, 4, 3, 43),
        body: SingleChildScrollView(
            child: Column(
          children: [
            CSlider(
              route: '/ShowInfo',
              list: Shows,
              name: 'Drama',
            ),
            CSlider(
              route: '/ShowInfo',
              list: Shows,
              name: 'Horror',
            ),
            CSlider(
              route: '/ShowInfo',
              list: Shows,
              name: 'Horror',
            ),
            CSlider(
              route: '/ShowInfo',
              list: Shows,
              name: 'Kids',
            ),
            CSlider(
              route: '/ShowInfo',
              list: Shows,
              name: 'Shows',
            )
          ],
        )),
      ),
    );
  }
}
