import 'package:flutter/material.dart';

class CheckboxRadioSwitchWidget extends StatefulWidget {
  const CheckboxRadioSwitchWidget({Key? key}) : super(key: key);

  @override
  State<CheckboxRadioSwitchWidget> createState() =>
      _CheckboxRadioSwitchWidgetState();
}

class _CheckboxRadioSwitchWidgetState extends State<CheckboxRadioSwitchWidget> {
  bool flag = false;
  Object? _groupValue = 1;

  _handleChange(v) {
    setState(() {
      _groupValue = v;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('常用表单组件：Checkbox、Radio和Switch'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Checkbox(
                  value: flag,
                  onChanged: (v) {
                    setState(() {
                      if (v != null) {
                        flag = v;
                      }
                    });
                  },
                  activeColor: Colors.red,
                ),
                Text(flag ? "选中" : "未选中"),
              ],
            ),
            CheckboxListTile(
              value: flag,
              onChanged: (v) {
                setState(() {
                  if (v != null) {
                    flag = v;
                  }
                });
              },
              title: const Text("标题"),
              subtitle: const Text("这是二级标题"),
              secondary: const Icon(Icons.help),
            ),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Radio(
                  value: 0,
                  onChanged: (v) {
                    setState(() {
                      _groupValue = v;
                    });
                  },
                  groupValue: _groupValue,
                  activeColor: Colors.red,
                ),
                Radio(
                  value: 1,
                  onChanged: (v) {
                    setState(() {
                      _groupValue = v;
                    });
                  },
                  groupValue: _groupValue,
                  activeColor: Colors.red,
                ),
                Text('$_groupValue'),
              ],
            ),
            Wrap(
              children: [
                RadioListTile(
                  value: 0,
                  title: const Text("Flutter 教程"),
                  subtitle: const Text("Dart 教程"),
                  secondary: Image.network(
                      "https://www.itying.com/images/flutter/1.png"),
                  groupValue: _groupValue,
                  onChanged: _handleChange,
                ),
                const Divider(),
                RadioListTile(
                  value: 1,
                  title: const Text("Java 教程"),
                  subtitle: const Text("JavaScript 教程"),
                  secondary: Image.network(
                      "https://www.itying.com/images/flutter/2.png"),
                  groupValue: _groupValue,
                  onChanged: _handleChange,
                )
              ],
            ),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Switch(
                  value: flag,
                  onChanged: (value) {
                    setState(() {
                      flag = value;
                    });
                  },
                ),
                Text('$flag')
              ],
            ),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                SwitchListTile(
                    value: flag,
                    title: const Text("是否允许下载"),
                    onChanged: (value) {
                      setState(() {
                        flag = value;
                      });
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
