import 'package:flutter/material.dart';

class StackWidget2 extends StatelessWidget {
  const StackWidget2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Stack组件结合Align组件'),
        ),
        body: Center(
          child: Container(
            height: 400,
            width: 300,
            color: Colors.lightBlue,
            child: Stack(
              alignment: Alignment.center,
              children: const <Widget>[
                Align(
                  alignment: Alignment(1, -0.2),
                  child: Icon(
                    Icons.home,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.search,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Icon(
                    Icons.settings_applications,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
