import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'CMU MOBILE';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        toolbarHeight: 80,
        titleSpacing: 8,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications_outlined, size: 30),
              onPressed: () {},
            ),
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.qr_code_2_outlined,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
                Positioned(
                  top: 12.0,
                  right: 10.0,
                  width: 10.0,
                  height: 10.0,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: Center(
                  child: Text(
                'CMU',
                style: TextStyle(fontSize: 25),
              )),
            )
          ],
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.document_scanner_outlined, size: 30),
            onPressed: () {},
          ),
          SizedBox(width: 15,),
          Tab(
            icon: Container(
              child: Image(
                image: AssetImage(
                  'assets/userprofile.png',
                ),
                fit: BoxFit.cover,
              ),
              height: 60,
              width: 60,
            ),
          ),
          SizedBox(
            width: 36,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            calender("December 2021", "21 December 2021"),
            Todolist("To do list", "No to do list today"),
          ],
        ),
      ),
      backgroundColor: Colors.grey[100],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined,
                color: Colors.deepPurple[400]),
            label: 'Schedule',
            backgroundColor: Colors.grey[50],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_copy_outlined, color: Colors.grey),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_bus_outlined, color: Colors.grey),
            label: 'Transit',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.extension_outlined, color: Colors.grey),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_rounded, color: Colors.grey),
            label: 'Settings',
          ),
        ],
        selectedItemColor: Colors.deepPurple[400],
      ),
    );
  }
}

Widget Todolist(String title, String subtitle) {
  return Container(
    margin: EdgeInsets.only(top: 20),
    padding: EdgeInsets.all(20),
    height: 650,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 10,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Text(title,
            style: TextStyle(
                fontSize: 25,
                color: Colors.deepPurple[400],
                fontWeight: FontWeight.bold)),
        SizedBox(
          height: 70,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
          ],
        )
      ],
    ),
  );
}

Widget calender(String title, String subtitle) {
  return Container(
    margin: EdgeInsets.only(top: 20),
    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 10,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(title,
            style: TextStyle(
                fontSize: 20,
                color: Colors.deepPurple[400],
                fontWeight: FontWeight.bold)),
        SizedBox(
          height: 10,
        ),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 15, color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
            color: Colors.grey[100],
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.expand_more,
                        color: Colors.deepPurple[400], size: 25),
                    onPressed: () {},
                  ),
                  Text("Show Calender",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.deepPurple[400],
                      )),
                ]))
      ],
    ),
  );
}
