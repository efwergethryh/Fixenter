import 'package:flutter/material.dart';
import 'package:movie/arguments.dart';
// import 'package:movie/channel.dart';
import 'package:movie/pages/Home.dart';
import 'package:movie/pages/MovieInfo.dart';
import 'package:movie/pages/Serieses.dart';
import 'package:movie/pages/ShowInfo.dart';
// import 'package:movie/pages/episodes.dart';
import 'package:movie/pages/livetv.dart';
import 'pages/Movies.dart';
import 'pages/playvideo.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    onGenerateRoute: (settings) {
      switch (settings.name) {
        case '/videoPlay':
          final args = settings.arguments as Arguments;
          return MaterialPageRoute(
            builder: (context) =>
                VideoPlayerApp(url: args.url, dataSource: args.dataSource),
          );

        case '/MovieInfo':
          final args = settings.arguments as Arguments;
          return MaterialPageRoute(
            builder: (context) => MovieInfo(
              name: args.name,
              path: args.path,
              url: args.url,
              dataSource: args.dataSource,
            ),
          );
        case '/ShowInfo':
          final args = settings.arguments as Arguments;
          return MaterialPageRoute(
            builder: (context) => ShowInfo(
              name: args.name,
              path: args.path,
              url: args.url,
              dataSource: args.dataSource,
            ),
          );
        case '/Movies':
          return MaterialPageRoute(builder: (context) => Movies());

        case '/Series':
          return MaterialPageRoute(builder: (context) => Series());

        case '/home':
          return MaterialPageRoute(builder: (context) => Home());

        case '/liveTv':
          return MaterialPageRoute(builder: (context) => liveTv());

        default:
          return MaterialPageRoute(
              builder: (context) => MaterialApp(
                    home: Icon(Icons.error_outline_rounded),
                  ));
      }
    },
  ));
}
