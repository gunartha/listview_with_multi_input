import 'package:flutter/material.dart';

class CreateNextTAG extends StatefulWidget {
  @override
  _CreateNextTAGState createState() => _CreateNextTAGState();
}

class _CreateNextTAGState extends State<CreateNextTAG> {
  int totalItem = 15;

  List<TextEditingController> _color = List.filled(15, TextEditingController());
  List<TextEditingController> _brand = List.filled(15, TextEditingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "List View with list input\nList<TextEditingController>",
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: totalItem,
            itemBuilder: (context, index) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      buildCardBaggageTag(index: index + 1, total: totalItem),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Card buildCardBaggageTag({index, total}) {
    return Card(
      elevation: 3,
      child: Container(
        color: Colors.grey.shade200,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  //color: Color(0xFFD0F01Bff),
                  color: Colors.yellowAccent.shade100,
                  boxShadow: [
                    BoxShadow(color: Colors.blue, spreadRadius: 1),
                  ],
                ),
                height: 56,
                //width: 120,
                child: Align(
                  //alignment: Alignment.centerLeft,
                  child: Text(
                    "Item : $index of $total",
                    //textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
              child: TextFormField(
                controller: _color[index],
                decoration: InputDecoration(
                  hintText: "Color",
                  labelText: "Color",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
              child: TextFormField(
                controller: _brand[index],
                decoration: InputDecoration(
                  hintText: "Brand",
                  labelText: "Brand",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
