import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:newsapp/const/const.dart';

class National extends StatefulWidget {
   National({super.key});

  @override
  State<National> createState() => _NationalState();
}

class _NationalState extends State<National> {
  String? data;
  var news_length;
  @override
  void initState() {
    getData();
    super.initState();
  }

  void getData() async {
    http.Response response = await http
        .get(Uri.parse("https://inshorts.deta.dev/news?category=national"));

    if (response.statusCode == 200) {
      data = response.body; //store response as string

      setState(() {
        news_length = jsonDecode(data!)['data'];
      }); //get all the data from json string superheros// just printed length of data

    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
         
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: news_length == null ? 0 : news_length.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          GestureDetector(
                            onTap: () => print('hello'),
                            child: Text(
                              'Watch: ${jsonDecode(data!)['data'][index]['title']}',
                              style: ktitlenewa,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Card(
                              elevation: 2.0,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                children: [
                                  Image.network(
                                      jsonDecode(data!)['data'][index]
                                          ['imageUrl'],
                                      fit: BoxFit.fill,
                                      height: 250,
                                      width: double.infinity,
                                      alignment: Alignment.center),
                                ],
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            '${jsonDecode(data!)['data'][index]['date']}'
                            ' - ${jsonDecode(data!)['data'][index]['time']}',
                            style: TextStyle(
                                color: Colors.grey.shade700, fontSize: 15),
                          ),
                          divider,
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
