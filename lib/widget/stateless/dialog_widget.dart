import 'package:flutter/material.dart';
import 'package:flutter_demo/widget/custom/custom_dialog.dart';

class DialogWidget extends StatefulWidget {
  const DialogWidget({Key? key}) : super(key: key);

  @override
  State<DialogWidget> createState() => _DialogWidgetState();
}

class _DialogWidgetState extends State<DialogWidget> {
  _alertDialog() async {
    var result = await showDialog(
        barrierDismissible: false, // 表示点击灰色背景的时候是否消失弹出框
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("提示信息！"),
            content: const Text("确定要删除吗？"),
            actions: <Widget>[
              TextButton(
                child: const Text('取消'),
                onPressed: () {
                  Navigator.pop(context, 'Cancel');
                },
              ),
              TextButton(
                child: const Text('确定'),
                onPressed: () {
                  Navigator.pop(context, 'Ok');
                },
              ),
            ],
          );
        });
    debugPrint(result);
  }

  _simpleDialog() async {
    var result = await showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: const Text("选择内容"),
            children: <Widget>[
              SimpleDialogOption(
                child: const Text("Option A"),
                onPressed: () {
                  Navigator.pop(context, "A");
                },
              ),
              const Divider(),
              SimpleDialogOption(
                child: const Text("Option B"),
                onPressed: () {
                  Navigator.pop(context, "B");
                },
              ),
              const Divider(),
              SimpleDialogOption(
                child: const Text("Option C"),
                onPressed: () {
                  Navigator.pop(context, "C");
                },
              ),
            ],
          );
        });
    debugPrint(result);
  }

  _modelBottomSheet() async {
    var result = await showModalBottomSheet(
        context: context,
        builder: (context) {
          return SizedBox(
            height: 220,
            child: Column(children: <Widget>[
              ListTile(
                title: const Text("分享 A"),
                onTap: () {
                  Navigator.pop(context, "分享 A");
                },
              ),
              const Divider(),
              ListTile(
                title: const Text("分享 B"),
                onTap: () {
                  Navigator.pop(context, "分享 B");
                },
              ),
              const Divider(),
              ListTile(
                title: const Text("分享 C"),
                onTap: () {
                  Navigator.pop(context, "分享 C");
                },
              ),
            ]),
          );
        });
    debugPrint(result);
  }

  _customDialog() async {
    var result = await showDialog(context: context, builder: (context) {
      return const CustomDialog(
        title: '这是一个自定义对话框！',
        content: '我是对话框内容。',
      );
    });
    debugPrint(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('对话框'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: <Widget>[
          Wrap(
            spacing: 10,
            children: [
              ElevatedButton(
                onPressed: () async {
                  await _alertDialog();
                },
                child: const Text("Alert Dialog"),
              ),
              ElevatedButton(
                onPressed: () async {
                  await _simpleDialog();
                },
                child: const Text("Simple Dialog"),
              ),
              ElevatedButton(
                onPressed: () async {
                  await _modelBottomSheet();
                },
                child: const Text("Model Bottom Sheet"),
              ),
              ElevatedButton(
                onPressed: () async {
                  await _customDialog();
                },
                child: const Text("Custom Dialog"),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
