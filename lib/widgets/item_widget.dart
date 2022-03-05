import 'package:flutter/material.dart';
import 'package:myfinalapp/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({Key? key, required this.item})
      // ignore: unnecessary_null_comparison
      : assert(item != null),
        super(key: key);
  final Item item;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(item.image),
      title: Text(item.name),
      subtitle: Text(item.desc),
      trailing: Text(item.price.toString()),
    );
  }
}
