// import 'dart:html';
// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:movie/InfoWidget.dart';
import 'dart:ui';

import 'package:movie/arguments.dart';
import 'package:movie/my_flutter_app_icons.dart';

class MovieInfo extends StatelessWidget {
  late String name;
  late String path;
  late String url;
  late String dataSource;

  MovieInfo(
      {required this.dataSource,
      required this.url,
      required this.name,
      required this.path});

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
                        //Movie name

                        //Watch Button
                        Container(
                          color: Color.fromARGB(31, 18, 2, 54),
                          // margin: EdgeInsets.only(right: 404),
                          alignment: Alignment.topLeft,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateColor.resolveWith(
                                    (states) =>
                                        Color.fromARGB(255, 25, 5, 173))),
                            onPressed: () {
                              Navigator.pushNamed(context, '/videoPlay',
                                  arguments:
                                      Arguments(url, dataSource, name, path));
                            },
                            child: Text('watch'),
                          ),
                        ),
                        //Movie Information
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
                            // Icon(
                            //   color: Colors.white,
                            //   Icons.remove_red_eye,
                            // ),
                            // Text(
                            //     style: TextStyle(color: Colors.white),
                            //     '1.4M')
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        //Movie Information Text
                        Text(
                            style: TextStyle(color: Colors.white),
                            "Back from the brink of death, commando Tyler Rake embarks on a dangerous mission to save a ruthless gangster's imprisoned family.")
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
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 780),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/videoPlay',
                                arguments:
                                    Arguments(url, dataSource, name, path));
                          },
                          child: Text('watch'),
                        ),
                      ),
                      Container(
                        child: Text(
                            style: TextStyle(fontFamily: 'Dsosis'),
                            "The first installment in the series follows Harry Mason as he searches for his missing adopted daughter in the mysterious New England town of Silent Hill. Stumbling upon a cult conducting a ritual to revive a deity it worships, Harry discovers his daughter's true origin."),
                      )
                    ],
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
