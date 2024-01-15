import 'package:flutter/material.dart';
import 'package:movie/channel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChannelCard extends StatelessWidget {
  late channel c;

  late Function() play;
  ChannelCard({required this.c, required this.play});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        child: InkWell(
          onTap: play,
          child: Container(
              padding: EdgeInsets.fromLTRB(0, 0, 50, 20),
              color: Colors.transparent,
              child: Row(
                children: <Widget>[
                  Image.asset(
                    c.path,
                    height: 70.h,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    c.name,
                    style: TextStyle(fontSize: 12.sp),
                  ),
                ],
              )),
        ));
  }
}
