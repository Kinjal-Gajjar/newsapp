import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:newsapp/const/const.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [Image.network(jsonDecode(data!))],
        ),
      ),
    );
  }
}
