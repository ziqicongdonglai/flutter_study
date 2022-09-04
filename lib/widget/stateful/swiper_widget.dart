import 'package:flutter/material.dart';
import 'package:flutter_demo/common/data.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class SwiperWidget extends StatelessWidget {
  const SwiperWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ExampleHorizontal"),
        ),
        body: SizedBox(
          height: 300,
          child: Swiper(
            itemBuilder: (BuildContext context, int index) {
              return Image.asset(
                listData[index]['imageUrl'],
                fit: BoxFit.fill,
              );
            },
            indicatorLayout: PageIndicatorLayout.SCALE,
            autoplay: true,
            autoplayDelay: 1000,
            itemCount: listData.length,
            pagination: const SwiperPagination(),
            control: const SwiperControl(),
            fade: 1.0,
            viewportFraction: 0.85,
          ),
        )
    );
  }
}
