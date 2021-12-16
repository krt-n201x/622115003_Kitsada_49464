import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  // const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Computer knowlegde"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              MyBox(
                  "What is a computer",
                  "Computer is a things to calculate and for any other works",
                  "https://images.unsplash.com/photo-1497032628192-86f99bcd76bc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3540&q=80"),
              SizedBox(
                height: 20,
              ),
              MyBox(
                  "What is Window",
                  "Microsoft Windows, commonly referred to as Windows, is a group of several proprietary graphical operating system families",
                  "https://cdn.pixabay.com/photo/2020/09/26/11/36/laptop-5603790_960_720.jpg"),
              SizedBox(
                height: 20,
              ),
              MyBox(
                  "What is Mac OS",
                  "This article is about the current Apple operating system for Mac computers. For the previous operating system up to Mac OS 9",
                  "https://khaolaem.com/wp-content/uploads/2019/01/featured-macbook-1140x641.jpg"),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ));
  }
}

Widget MyBox(String title, String subtitle, String netpic) {
  return Container(
    padding: EdgeInsets.all(20),
    height: 150,
    decoration: BoxDecoration(
        color: Colors.blue[200],
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            image: NetworkImage(netpic),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.darken))),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(title,
            style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
        Text(
          subtitle,
          style: TextStyle(
              fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}
