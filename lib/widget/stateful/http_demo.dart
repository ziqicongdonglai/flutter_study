import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpDemo extends StatefulWidget {
  const HttpDemo({Key? key}) : super(key: key);

  @override
  State<HttpDemo> createState() => _HttpDemoState();
}

class _HttpDemoState extends State<HttpDemo> {
  List _list = [];

  @override
  void initState() {
    super.initState();
    // _getDataHttp();
    _getDataDio();
  }

  _getDataHttp() async {
    var apiUrl = Uri.parse('https://jdmall.itying.com/api/pcate');

    var response = await http.get(apiUrl);
    if (response.statusCode == 200) {
      debugPrint(json.decode(response.body).toString());
      setState(() {
        _list = json.decode(response.body)["result"];
      });
    } else {
      debugPrint(response.statusCode.toString());
    }
  }

  _getDataDio() async {
    var response = await Dio().get('https://jdmall.itying.com/api/pcate');
    debugPrint(response.data.toString());
    debugPrint(response.statusCode.toString());
    if (response.statusCode == 200) {
      setState(() {
        _list = response.data["result"];
      });
    } else {
      debugPrint(response.statusCode.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('请求数据Demo'),
        ),
        body: _list.isNotEmpty
            ? ListView.builder(
                itemCount: _list.length,
                itemBuilder: (context, index) {
                  return ListTile(title: Text(_list[index]["title"]));
                },
              )
            : const Text(""));
  }
}
