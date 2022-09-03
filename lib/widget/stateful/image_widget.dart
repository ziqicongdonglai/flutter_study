import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);
  final assetsImagePath = "images/Android_Studio.png";
  final assetsGifPath = "images/my-gif.gif";
  final netImageUrl =
      'https://zqcdl-pic.oss-cn-hangzhou.aliyuncs.com/avatar/me.jpg';

  @override
  Widget build(BuildContext context) {
    var alignment = [
      Alignment.center,
      Alignment.centerLeft,
      Alignment.centerRight,
      Alignment.topCenter,
      Alignment.topLeft,
      Alignment.topRight,
      Alignment.bottomCenter,
      Alignment.bottomLeft,
      Alignment.bottomRight,
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text('图片组件'),
        ),
        body: Container(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  '图片组件',
                  style: titleStyle,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 5.0),
                  child: const Text(
                    '用于显示一张图片，可以从文件、内存、网络、资源里加载。可以指定适应方式、样式、颜色混合模式、重复模式。',
                    style: descStyle,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10.0),
                  child: const Text(
                    '从资源文件和网络加载图片',
                    style: subTitleStyle,
                  ),
                ),
                Wrap(
                  spacing: 10,
                  children: <Widget>[_loadFromAssets(), _loadFromNet()],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10.0),
                  child: const Text(
                    '图片颜色及混合模式',
                    style: subTitleStyle,
                  ),
                ),
                Wrap(
                  children: BlendMode.values
                      .toList()
                      .map((mode) => Column(
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.all(5),
                                width: 60,
                                height: 60,
                                color: Colors.red,
                                child: Image(
                                  image: AssetImage(assetsImagePath),
                                  color: Colors.blue.withAlpha(88),
                                  colorBlendMode: mode,
                                ),
                              ),
                              Text(mode.toString().split('.')[1])
                            ],
                          ))
                      .toList(),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10.0),
                  child: const Text(
                    '图片对齐模式',
                    style: subTitleStyle,
                  ),
                ),
                Wrap(
                  children: alignment
                      .toList()
                      .map((mode) => Column(
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.all(5),
                                width: 150,
                                height: 60,
                                color: Colors.red,
                                child: Image(
                                  image: AssetImage(assetsImagePath),
                                  // color: Colors.blue.withAlpha(88),
                                  alignment: mode,
                                ),
                              ),
                              Text(mode.toString().split('.')[1])
                            ],
                          ))
                      .toList(),
                ),
                // Container(
                //   margin: const EdgeInsets.symmetric(vertical: 10.0),
                //   child: const Text(
                //     '图片实现局部放大',
                //     style: subTitleStyle,
                //   ),
                // ),
                // Wrap(
                //   children: <Widget>[
                //     Container(
                //       width: 200,
                //       height: 200,
                //       child: Image(
                //         image: AssetImage(assetsImagePath),
                //         centerSlice: const Rect.fromLTWH(10, 10, 10, 10),
                //         fit: BoxFit.fill,
                //       ),
                //     ),
                //   ],
                // ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: const Text('图片重复模式', style: subTitleStyle),
                ),
                Wrap(
                  children: ImageRepeat.values
                      .toList()
                      .map((mode) => Column(
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.all(5),
                                width: 150,
                                height: 60,
                                color: Colors.red,
                                child: Image(
                                  image: AssetImage(assetsImagePath),
                                  // color: Colors.blue.withAlpha(88),
                                  repeat: mode,
                                ),
                              ),
                              Text(mode.toString().split('.')[1])
                            ],
                          ))
                      .toList(),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: const Text('图片的适应模式', style: subTitleStyle),
                ),
                Wrap(
                  children: BoxFit.values
                      .toList()
                      .map((mode) => Column(
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.all(5),
                                width: 150,
                                height: 60,
                                color: Colors.red,
                                child: Image(
                                  image: AssetImage(assetsImagePath),
                                  // color: Colors.blue.withAlpha(88),
                                  fit: mode,
                                ),
                              ),
                              Text(mode.toString().split('.')[1])
                            ],
                          ))
                      .toList(),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: const Text('实现圆角、圆形图片等', style: subTitleStyle),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Wrap(
                    spacing: 20,
                    runSpacing: 10,
                    children: [
                      SizedBox(
                        height: 150,
                        width: 150,
                        child: Image(
                          image: AssetImage(assetsImagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: 150.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(100),
                          image: const DecorationImage(image:
                          NetworkImage('https://zqcdl-pic.oss-cn-hangzhou.aliyuncs.com/avatar/me.jpg'),
                          fit: BoxFit.cover)
                        ),
                      ),
                      Container(
                        width: 150.0,
                        height: 150.0,
                       color: Colors.blue.shade200,
                        child: ClipOval(
                          clipper: _MyClipper(),
                          child: Image.network('https://zqcdl-pic.oss-cn-hangzhou.aliyuncs.com/avatar/me.jpg'),
                        ),
                      ),
                      Container(
                        width: 150.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.amber,
                        ),
                        child: Image.network('https://zqcdl-pic.oss-cn-hangzhou.aliyuncs.com/avatar/me.jpg',
                        fit: BoxFit.cover,
                          alignment: Alignment.bottomRight,
                          color: Colors.deepPurple,
                          colorBlendMode: BlendMode.screen,
                          repeat: ImageRepeat.repeat,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Widget _loadFromAssets() => Wrap(
        spacing: 10,
        children: <Widget>[
          Image.asset(
            assetsImagePath,
            height: 80,
            // width: 80,
          ),
          Image.asset(
            assetsGifPath,
            height: 80,
            fit: BoxFit.fitWidth,
          )
        ],
      );

  Widget _loadFromNet() => Image.network(
        netImageUrl,
        height: 80,
        fit: BoxFit.fitWidth,
      );
}

class _MyClipper extends CustomClipper<Rect> {

  @override
  Rect getClip(Size size) {
    return const Rect.fromLTRB(20.0, 20.0, 140, 120);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return false;
  }
}