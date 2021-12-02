import 'package:flutter/material.dart';

class CalculatePage extends StatefulWidget {
  const CalculatePage({ Key? key }) : super(key: key);

  @override
  _CalculatePageState createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {
  TextEditingController quantity = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController result = TextEditingController();
  @override
  void initState() {
    //TODO: implement initState
    super.initState();
    result.text =
        "Buy X Doraemon smile, Because each smile cost x THB, so you have to pay X THB";
  }
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Image.asset("assets/doremon.png"),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "DORARA",
                  style: TextStyle(
                    fontFamily: "Cotton",
                    fontSize: 80,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Calculate Program",
                  style: TextStyle(fontFamily: "Cotton", fontSize: 30),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: quantity,
                  decoration: InputDecoration(
                      labelText: "Smile Amount", border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: price,
                  decoration: InputDecoration(
                      labelText: "Smile Price", border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      var cal = double.parse(quantity.text) *
                          double.parse(price.text);
                      print(
                          "Smaile quality: ${quantity.text} Total: ${cal} BTH");
                      setState(() {
                        result.text =
                            "Buy ${quantity.text} Doraemon smile, Because each smile cost ${price.text} THB, so you have to pay ${cal} THB";
                      });
                    },
                    child: Text("Calculate"),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xFF33691E)),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.fromLTRB(5, 15, 5, 15)),
                        textStyle: MaterialStateProperty.all(
                            TextStyle(fontFamily: "Cotton", fontSize: 20)))),
                SizedBox(
                  height: 20,
                ),
                Text(result.text)
              ],
            ),
          ),
        ),
      ],
    );
  }
}