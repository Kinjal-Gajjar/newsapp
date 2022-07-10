import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/const/const.dart';

class Tabbar extends StatelessWidget {
  const Tabbar({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TabController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(itemBuilder: (context, index) {
        return TabBar(
            controller: controller,
            labelColor: klabelcolor,
            labelStyle: klabelstyle,
            indicatorColor: Colors.transparent,
            unselectedLabelColor: Colors.grey.shade500,
            isScrollable: true,
            tabs: tabbarList);
      }),
    );
  }
}
