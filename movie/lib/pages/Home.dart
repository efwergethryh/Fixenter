import 'package:flutter/material.dart';
import 'package:movie/my_flutter_app_icons.dart';
import 'package:movie/pages/Movies.dart';
import 'package:movie/pages/Serieses.dart';
import 'package:movie/pages/livetv.dart';

class Home extends StatefulWidget {
  Home();

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  String name = 'Movies';
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    // _tabController = TabController(length: 3, vsync: this);
  }

  Widget _buildPageContent() {
    // Return the current page content based on the currentIndex.
    switch (currentIndex) {
      case 0:
        // name = 'Movies';
        return Movies();
      case 1:
        // name = 'Shows';
        return Series();
      case 2:
        // name = 'Tv';
        return liveTv();
      default:
        return Container();
    }
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: Color.fromARGB(255, 8, 5, 97),
      currentIndex: currentIndex,
      onTap: (index) {
        // Set the currentIndex when a bottom navigation item is tapped.
        setState(() {
          currentIndex = index;
        });
        switch (currentIndex) {
          case 0:
            name = 'Movies';
            break;
          case 1:
            name = 'Shows';
            break;
          case 2:
            name = 'Tv';
            break;
        }
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            MyFlutterApp.video_2,
            color: Colors.blue,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(color: Colors.blue, MyFlutterApp.video),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(color: Colors.blue, Icons.tv),
          label: '',
        ),
      ],
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 18, 2, 109),
        title: Text(name),
      ),
      body: _buildPageContent(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }
}
