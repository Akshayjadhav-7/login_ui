import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:i_am_unicorn/drawer.dart';
import 'dart:convert';
import 'package:i_am_unicorn/models/catalog.dart';
import 'package:i_am_unicorn/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int day = 30;



  String name = 'Learn';

  final dummylist = List.generate(20, (index) => catalogModel.items[0]);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  loadData()async{

    var catalogJason = await rootBundle.loadString("files/catalog.json");
    var decodedData = JsonDecoder().convert(catalogJason);
    var productData = decodedData["products"];
    print(productData);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: mydrawer(),
      appBar: AppBar(
        title: Text(
          'Catalog App',
          style: TextStyle(

            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: dummylist.length,
        itemBuilder: (context, index){
            return Itemwidget(item: dummylist[index],);
        },
      )
      //
      //
      // Center(
      //   child: Text(
      //     'Welcome to barrio,$name Flutter in $day days',
      //     style: TextStyle(
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      // ),
    );
  }
}

