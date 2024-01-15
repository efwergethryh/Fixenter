import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ChoosLocation extends StatefulWidget {
  ChoosLocation();

 

  @override
  State<ChoosLocation> createState() => _ChoosLocationState();
}

class _ChoosLocationState extends State<ChoosLocation> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Edit Location'),
      ),
    ));
  }
}
