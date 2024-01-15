// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:movie/Movie_card.dart';/
import 'package:movie/Slider.dart';
// import 'package:movie/arguments.dart';
import 'package:movie/channel.dart';
// import 'package:movie/my_flutter_app_icons.dart';
// import 'package:movie/pages/Serieses.dart';
// import 'package:movie/pages/livetv.dart';

class Movies extends StatefulWidget {
  Movies();

  @override
  State<Movies> createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {
  bool _visible = true;

  void _toggleVisibility() {
    setState(() {
      _visible = !_visible;

      // print(_visible);
    });
  }

  List<channel> movies = [
    channel(
        name: 'Extraction 2',
        path:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6fizNzdu8Tjdouj3avaO4QmsHRHpQNHC4mG7NewjcVlVdJWpA',
        dataSource: 'asset',
        channelUrl: 'assets/SaadAlghamidi.mp4'),
    channel(
        name: 'Extraction 2',
        path:
            'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTHrQuF9sH0zTeKhScEcMIFa3fm_mICg_a47IGXmdqJ0rKv7UM-',
        dataSource: 'asset',
        channelUrl: 'assets/gay.mp4'),
    channel(
        name: 'Extraction 2',
        path:
            'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTHrQuF9sH0zTeKhScEcMIFa3fm_mICg_a47IGXmdqJ0rKv7UM-',
        dataSource: 'asset',
        channelUrl: 'assets/SaadAlghamidi.mp4'),
    channel(
        name: 'Extraction 2',
        path:
            'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTHrQuF9sH0zTeKhScEcMIFa3fm_mICg_a47IGXmdqJ0rKv7UM-',
        dataSource: 'asset',
        channelUrl: 'assets/SaadAlghamidi.mp4'),
    channel(
        name: 'Extraction 2',
        path:
            'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSSBiDUx8uWjIbw0vYAhJoI3ygORtKRw17MFJE5ie9p52xGLBBH',
        dataSource: 'asset',
        channelUrl: 'assets/SaadAlghamidi.mp4'),
  ];

  @override
  Widget build(BuildContext context) {
    ScrollController _scrollcontroller = ScrollController();
    void _scrollToPosition(double position) {
      _scrollcontroller.animateTo(
        position,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }

    return Scaffold(
        backgroundColor: Color.fromARGB(255, 4, 3, 43),
        body: 
        OrientationBuilder(builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return ScreenUtilInit(
              child: Row(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      controller: _scrollcontroller,
                      child: Column(
                        children: [
                          CSlider(
                            route: '/MovieInfo',
                            list: movies,
                            name: 'Drama',
                          ),
                          CSlider(
                            route: '/MovieInfo',
                            list: movies,
                            name: 'Horror',
                          ),
                          CSlider(
                            route: '/MovieInfo',
                            list: movies,
                            name: 'Horror',
                          ),
                          CSlider(
                            route: '/MovieInfo',
                            list: movies,
                            name: 'Kids',
                          ),
                          CSlider(
                            route: '/MovieInfo',
                            list: movies,
                            name: 'Shows',
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          } else if (orientation == Orientation.landscape) {
            return ScreenUtilInit(
              child: Row(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      controller: _scrollcontroller,
                      child: Column(
                        children: [
                          CSlider(
                            route: '/MovieInfo',
                            list: movies,
                            name: 'Drama',
                          ),
                          CSlider(
                            route: '/MovieInfo',
                            list: movies,
                            name: 'Horror',
                          ),
                          CSlider(
                            route: '/MovieInfo',
                            list: movies,
                            name: 'Horror',
                          ),
                          CSlider(
                            route: '/MovieInfo',
                            list: movies,
                            name: 'Kids',
                          ),
                          CSlider(
                            route: '/MovieInfo',
                            list: movies,
                            name: 'Shows',
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          }
          return SizedBox.shrink();
        })
        );
  }
}
