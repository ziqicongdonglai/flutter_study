import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row组件'),
      ),
      body: Container(
        height: 700,
        width: 500,
        color: Colors.black26,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[
            IconContainer(Icons.home),
            IconContainer(Icons.search, size: 66, color: Colors.blue),
            IconContainer(Icons.send, color: Colors.orange),
          ],
        ),
      ),
    );
  }
}

class IconContainer extends StatelessWidget {
  final double? size;
  final IconData icon;
  final Color color;

  // icon 必传
  // size 和 color 可不传 且有给默认值
  const IconContainer(this.icon,
      {Key? key, this.size = 32.0, this.color = Colors.blue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      color: color,
      child: Center(
        child: Icon(
          icon,
          color: Colors.white,
          size: size,
        ),
      ),
    );
  }
}
