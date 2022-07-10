import 'package:flutter/material.dart';

const kheaderstyle = TextStyle(
  fontSize: 35,
  fontFamily: 'Lobster',
  fontWeight: FontWeight.w400,
);
const ktitlestyle = TextStyle(
  fontSize: 35,
  fontWeight: FontWeight.w500,
  color: Colors.black87,
);
const ktitlenewa = TextStyle(
  fontSize: 25,
  fontFamily: 'Oswald',
  color: Colors.black87,
  fontWeight: FontWeight.bold,
);

const klabelcolor = Colors.black;
const klabelstyle = TextStyle(
  fontFamily: 'Oswald',
  fontSize: 20,
  fontWeight: FontWeight.bold,
);

const List<Tab> tabbarList = [
  Tab(
    text: 'Latest',
  ),
  Tab(
    text: 'National',
  ),
  Tab(
    text: 'Business',
  ),
  Tab(
    text: 'Sports',
  ),
  Tab(
    text: 'World',
  ),
  Tab(
    text: 'Politics',
  ),
  Tab(
    text: 'Technology',
  ),
  Tab(
    text: 'Startup',
  ),
  Tab(
    text: 'Entertainment',
  ),
  Tab(
    text: 'Miscellaneous',
  ),
  Tab(
    text: 'Hatke',
  ),
  Tab(
    text: 'Science',
  ),
  Tab(
    text: 'Automobile',
  ),
];

const url = 'https://inshorts.deta.dev/news?category=';

const divider = Divider(
  thickness: 2,
  color: Colors.grey,
);
String? data;
var news_length;

List urls=[
'https://inshorts.deta.dev/news?category=',
];