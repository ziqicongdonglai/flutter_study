import 'package:flutter/material.dart';
import 'package:flutter_demo/common/data.dart';

class AspectRatioWidget extends StatelessWidget {
  const AspectRatioWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AspectRation组件'),
        ),
        body: ListView(
          children: listData.map((value) {
            return Card(
              margin: const EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 20 / 9,
                    child: Image.network(
                      value["imageUrl"],
                      fit: BoxFit.cover,
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(value["imageUrl"]),
                    ),
                    title: Text(value["title"]),
                    subtitle: Text(
                      value["description"],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
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
