import 'package:flutter/material.dart';

class PaddingWidget extends StatelessWidget {
  const PaddingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Padding组件'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.5,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                'https://www.itying.com/images/flutter/1.png',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                'https://www.itying.com/images/flutter/1.png',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                'https://www.itying.com/images/flutter/2.png',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                'https://www.itying.com/images/flutter/3.png',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                'https://www.itying.com/images/flutter/4.png',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                'https://www.itying.com/images/flutter/5.png',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                'https://www.itying.com/images/flutter/6.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
