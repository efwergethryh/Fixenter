// import 'dart:html';
// import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie/InfoWidget.dart';
import 'dart:ui';
import 'package:movie/channel.dart';
import 'package:movie/arguments.dart';
import 'package:movie/my_flutter_app_icons.dart';

class ShowInfo extends StatelessWidget {
  late String name;
  late String path;
  late String url;
  late String dataSource;
  int num = 0;
  ShowInfo(
      {required this.dataSource,
      required this.url,
      required this.name,
      required this.path});

  List<channel> episodesList = [
    channel(
        path: '',
        name: 'Extraction 2',
        dataSource: 'asset',
        channelUrl: 'assets/SaadAlghamidi.mp4'),
    channel(
        path: '',
        name: 'Extraction 2',
        dataSource: 'asset',
        channelUrl: 'assets/SaadAlghamidi.mp4'),
    channel(
        path: '',
        name: 'Extraction 2',
        dataSource: 'asset',
        channelUrl: 'assets/SaadAlghamidi.mp4'),
    channel(
        path: '',
        name: 'Extraction 2',
        dataSource: 'asset',
        channelUrl: 'assets/SaadAlghamidi.mp4'),
    channel(
        path: '',
        name: 'Extraction 2',
        dataSource: 'asset',
        channelUrl: 'assets/SaadAlghamidi.mp4'),
    channel(
        path: '',
        name: 'Extraction 2',
        dataSource: 'asset',
        channelUrl: 'assets/SaadAlghamidi.mp4'),
    channel(
        path: '',
        name: 'Extraction 2',
        dataSource: 'asset',
        channelUrl: 'assets/SaadAlghamidi.mp4'),
    channel(
        path: '',
        name: 'Extraction 2',
        dataSource: 'asset',
        channelUrl: 'assets/SaadAlghamidi.mp4'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  expandedHeight: 300,
                  flexibleSpace: FlexibleSpaceBar(
                    background: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
                        child: ImageFiltered(
                          imageFilter:
                              ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
                          child: Image(
                            image: NetworkImage(path),
                            width: double.maxFinite,
                            fit: BoxFit.cover,
                          ),
                        )),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    height: 550,
                    color: Color.fromARGB(255, 14, 6, 49),
                    // decoration: BoxDecoration(),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            name,
                            style: TextStyle(
                                fontFamily: 'Dsosis',
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            InfoWidget(
                              icon: Icon(
                                MyFlutterApp.access_time,
                                // Icons.abc,
                                color: Colors.white,
                              ),
                              info: Text(
                                '120m',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InfoWidget(
                                icon: Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.white,
                                ),
                                info: Text(
                                  '1.4M',
                                  style: TextStyle(color: Colors.white),
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            InfoWidget(
                                icon:
                                    Icon(color: Colors.white, Icons.date_range),
                                info: Text(
                                  '2023',
                                  style: TextStyle(color: Colors.white),
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        //Movie Information Text

                        Text(
                            style: TextStyle(color: Colors.white),
                            "Back from the brink of death, commando Tyler Rake embarks on a dangerous mission to save a ruthless gangster's imprisoned family."),
                        SizedBox(
                          height: 10,
                        ),
                        CarouselSlider(
                          items: episodesList.map((e) {
                            num++;
                            return InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, '/videoPlay',
                                    arguments: Arguments(e.channelUrl,
                                        e.dataSource, e.name, e.path));
                              },
                              child: Container(
                                height: 30,
                                width: 100,
                                color: Colors.black,
                                child: Center(
                                  child: Text(
                                    'Ep $num',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                          options: CarouselOptions(
                            height: 150,
                            initialPage: 0,
                            viewportFraction: 0.3,
                            enableInfiniteScroll: false,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            );
          } else if (orientation == Orientation.landscape) {
            return CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  expandedHeight: 300,
                  flexibleSpace: FlexibleSpaceBar(
                    background: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
                        child: ImageFiltered(
                          imageFilter:
                              ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
                          child: Image(
                            image: NetworkImage(path),
                            width: double.maxFinite,
                            fit: BoxFit.cover,
                          ),
                        )),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    height: 550,
                    color: Color.fromARGB(255, 14, 6, 49),
                    // decoration: BoxDecoration(),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            name,
                            style: TextStyle(
                                fontFamily: 'Dsosis',
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            InfoWidget(
                              icon: Icon(
                                MyFlutterApp.access_time,
                                // Icons.abc,
                                color: Colors.white,
                              ),
                              info: Text(
                                '120m',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InfoWidget(
                                icon: Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.white,
                                ),
                                info: Text(
                                  '1.4M',
                                  style: TextStyle(color: Colors.white),
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            InfoWidget(
                                icon:
                                    Icon(color: Colors.white, Icons.date_range),
                                info: Text(
                                  '2023',
                                  style: TextStyle(color: Colors.white),
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        //Movie Information Text

                        Text(
                            style: TextStyle(color: Colors.white),
                            "In the application main() method, call SystemChrome. setPreferredOrientations() with the list of preferred orientations that your app supports. To lock the device to a single orientation, you can pass a list with a single item. For a list of all the possible values, check out DeviceOrientation ."),
                        SizedBox(
                          height: 10,
                        ),
                        CarouselSlider(
                          items: episodesList.map((e) {
                            num++;
                            return InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, '/videoPlay',
                                    arguments: Arguments(e.channelUrl,
                                        e.dataSource, e.name, e.path));
                              },
                              child: Container(
                                height: 30,
                                width: 100,
                                color: Colors.black,
                                child: Center(
                                  child: Text(
                                    'Ep $num',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                          options: CarouselOptions(
                            height: 150,
                            initialPage: 0,
                            viewportFraction: 0.3,
                            enableInfiniteScroll: false,
                            // enlargeCenterPage: true,
                            // enlargeStrategy: CenterPageEnlargeStrategy.height,
                            // enlargeFactor: 1
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            );
          }
          return SizedBox.shrink();
        },
      ),
    );
  }
}
