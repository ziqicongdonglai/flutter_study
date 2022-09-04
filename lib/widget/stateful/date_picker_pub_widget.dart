import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class DatePickerPubWidget extends StatefulWidget {
  const DatePickerPubWidget({Key? key}) : super(key: key);

  @override
  State<DatePickerPubWidget> createState() => _DatePickerPubWidgetState();
}

class _DatePickerPubWidgetState extends State<DatePickerPubWidget> {
  DateTime _dateTime = DateTime.now();

  void _showDatePicker() {
    DatePicker.showDatePicker(
      context,
      showTitleActions: true,
      minTime: DateTime(2022, 1, 1),
      maxTime: DateTime(2023, 10, 10),
      onChanged: (date) {
        debugPrint('change $date');
      },
      onConfirm: (date) {
        debugPrint('confirm $date');
        setState(() {
          _dateTime = date;
        });
      },
      currentTime: DateTime.now(),
      locale: LocaleType.zh,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('日期选择'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: _showDatePicker,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(formatDate(_dateTime, [yyyy, '-', mm, '-', dd])),
                  const Icon(Icons.arrow_drop_down)
                ],
              ),
            )
          ]),
    );
  }
}
