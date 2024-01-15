import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
class Loading extends StatefulWidget {
   Loading();

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getData() async{
    Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/Europe/Amsterdam'));
    Map data = jsonDecode(response.body);
    // print(data);
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Text('Loading Screen'),

        ));
  }
}
