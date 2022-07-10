import 'package:flutter/material.dart';
import 'package:newsapp/const/const.dart';
import 'package:newsapp/screen/news/automobile.dart';
import 'package:newsapp/screen/news/business.dart';
import 'package:newsapp/screen/news/entertainment.dart';
import 'package:newsapp/screen/news/hatke.dart';
import 'package:newsapp/screen/news/miscellaneous.dart';
import 'package:newsapp/screen/news/national.dart';
import 'package:newsapp/screen/news/politics.dart';
import 'package:newsapp/screen/news/science.dart';
import 'package:newsapp/screen/news/sport.dart';
import 'package:newsapp/screen/news/startup.dart';
import 'package:newsapp/screen/news/technology.dart';
import 'package:newsapp/screen/news/world.dart';

import '../screen/news/latest.dart';
import '../screen/componet/tabbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: tabbarList.length);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: const Icon(
            Icons.menu_outlined,
            color: Colors.black,
          ),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: const Text(
              'Top News Updates',
              style: kheaderstyle,
            ),
          ),
          Tabbar(controller: controller),
          Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.9,
              child: Expanded(
                child: TabBarView(controller: controller, children: [
                  Latest(),
                  National(),
                  Business(),
                  Sport(),
                  World(),
                  Politics(),
                  Technology(),
                  Startup(),
                  Entertainment(),
                  Miscellaneous(),
                  Hatke(),
                  Science(),
                  Automobile(),
                ]),
              ),
            ),
          ),
        ]));
  }
}
