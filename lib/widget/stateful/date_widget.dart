import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class DateWidget extends StatefulWidget {
  const DateWidget({Key? key}) : super(key: key);

  @override
  State<DateWidget> createState() => _DateWidgetState();
}

class _DateWidgetState extends State<DateWidget> {
  var _datetime = DateTime.now();

  _showDatePicker() async {
    var date = await showDatePicker(
        context: context,
        initialDate: _datetime,
        firstDate: DateTime(1900),
        lastDate: DateTime(2050),
        locale: const Locale('zh'));
    if (date == null) return;
    debugPrint(date.toString());
    setState(() {
      _datetime = date;
    });
  }

  var _time = const TimeOfDay(hour: 9, minute: 20);

  _showTimePicker() async {
    var time = await showTimePicker(context: context, initialTime: _time);
    if (time == null) return;
    debugPrint(time.toString());
    setState(() {
      _time = time;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('日期和时间'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                _showDatePicker();
              },
              child: const Text('点击'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: _showDatePicker,
                child: Row(
                  children: <Widget>[
                    Text(formatDate(_datetime, [yyyy, '-', mm, '-', dd])),
                    const Icon(
                      Icons.arrow_drop_down,
                    ),
                    InkWell(
                      onTap: _showTimePicker,
                      child: Row(
                        children: <Widget>[
                          Text(_time.format(context)),
                          const Icon(Icons.arrow_drop_down),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
