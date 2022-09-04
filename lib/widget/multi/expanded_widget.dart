import 'package:flutter/material.dart';
import 'package:flutter_demo/widget/multi/row_widget.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Expanded组件'),
        ),
        body: Padding(padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Expanded(
                flex: 2,
                child: IconContainer(Icons.home),
              ),
              SizedBox(width: 10),
              Expanded(
                flex: 3,
                child: IconContainer(Icons.search),
              ),
              SizedBox(width: 10),
              Expanded(
                flex: 3,
                child: IconContainer(Icons.send),
              ),
            ],
          ),
        )
    );
  }
}
