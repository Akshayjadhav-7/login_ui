import 'package:flutter/material.dart';
import 'package:i_am_unicorn/models/catalog.dart';


class Itemwidget extends StatelessWidget {
  final Item item;

  const Itemwidget({Key key, @required this.item})
      : assert(item != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: (){
          print("\ ${item.name} pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price}",style: TextStyle(
          color: Colors.deepPurple,
          fontWeight: FontWeight.bold,
        ),),


      ),
    );
  }
}
