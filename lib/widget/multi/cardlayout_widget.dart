import 'package:flutter/material.dart';
import 'package:flutter_demo/common/data.dart';

class CardLayoutWidget extends StatelessWidget {
  const CardLayoutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card图文列表布局'),
        ),
        body:
        ListView(
          children: listData.map((value) {
            return Card(
              margin: const EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Image.network(
                      value["imageUrl"],
                      fit: BoxFit.cover,
                    ),
                  ),
                  ListTile(
                    title: Text(value["title"]),
                    subtitle:
                    Text(value["description"], overflow: TextOverflow.ellipsis),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(value["imageUrl"]),
                    ),
                  )
                ],
              ),
            );
          }).toList(),
        )
    );
  }
}
