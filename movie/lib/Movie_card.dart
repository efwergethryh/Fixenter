import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie/channel.dart';
// import 'package:movie/my_flutter_app_icons.dart';
// import 'Movie.dart';

class MovieCard extends StatelessWidget {
  late final Function() play;
  late final channel movie;
  MovieCard({required this.movie, required this.play});
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.transparent,
        elevation: 0,
        child: InkWell(
          onTap: play,
          child: Container(
            height: 250.h,
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            color: Colors.transparent,
            child: Stack(
              children: <Widget>[
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(5)),
                  width: 150,
                  height: 200,
                  child: Image(
                    image: NetworkImage(movie.path),
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
