import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie/Movie_card.dart';
import 'package:movie/channel.dart';
import 'arguments.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CSlider extends StatelessWidget {
  late List<channel> list;
  late String name;
  late String route;
  CSlider({required this.list, required this.name, required this.route});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: SafeArea(
        child: Column(children: [
          Row(
            children: [
              Container(
                  padding: EdgeInsets.only(right: 20),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    name,
                    style: TextStyle(
                        // fontSize: 10.sp,
                        color: Colors.white,
                        fontFamily: 'Dsosis'),
                  )),
              Spacer(),
              InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.topRight,
                  child: Text(
                    'View All',
                    style: TextStyle(
                        // fontSize: 7.sp,
                        color: Colors.white),
                  ),
                ),
              )
            ],
          ),
          CarouselSlider(
            items: list
                .map((m) => MovieCard(
                      movie: m,
                      play: () {
                        try {
                          Navigator.pushNamed(context, route,
                              arguments: Arguments(
                                  m.channelUrl, m.dataSource, m.name, m.path));
                        } catch (e) {}
                      },
                    ))
                .toList(),
            options: CarouselOptions(
              height: 150,

              initialPage: 0,
              // aspectRatio: 0.6,
              viewportFraction: 0.3,
              enableInfiniteScroll: true,
            ),
          ),
        ]),
      ),
    );
  }
}
