import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({Key? key}) : super(key: key);

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final _username = TextEditingController(); // 初始化的时候给表单赋值
  final _password = TextEditingController();

  String info = '结果';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form 组件'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 45,
              child: TextField(
                maxLines: 1,
                decoration: const InputDecoration(
                    icon: Icon(Icons.people),
                    hintText: "请输入用户名",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ))),
                controller: _username,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 45,
              child: TextField(
                maxLines: 1,
                decoration: const InputDecoration(
                    icon: Icon(Icons.lock),
                    hintText: "密码",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ))),
                controller: _password,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 50,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(50.0),
                  )),
                ),
                onPressed: () {
                  debugPrint(_username.text);
                  debugPrint(_password.text);
                  setState(() {
                    info = _username.text + _password.text;
                  });
                },
                child: const Text("登录"),
              ),
            ),
            const Divider(),
            Text(info),
          ],
        ),
      ),
    );
  }
}
