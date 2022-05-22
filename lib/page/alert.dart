import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class alertPa extends StatefulWidget {
  @override
  State<alertPa> createState() => _PalertState();
}
DateTime dateTime = DateTime.now();
class _PalertState extends State<alertPa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white70,
        body: Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Stack(
              alignment: Alignment.topCenter,
              overflow: Overflow.visible,
              children: [
                Container(
                  height: 300,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [


                        buildDateTimePicker(),


                        Container(
                          width: 90,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Color(0xffffae88), Color(0xff8f93ea)],
                            ),
                          ),
                          child: MaterialButton(
                              onPressed: () {

                              },
                              materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                              shape: StadiumBorder(),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: const <Widget>[
                                    Text(
                                      "Start",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: -50,
                    child: CircleAvatar(
                      // child: ClipRRect(
                      //     borderRadius: BorderRadius.all(Radius.circular(70)),
                      //     child: Image.asset("assets/images/log.jpg")),
                      radius: 45,
                    ))
              ]),
        ));
  }
  Widget buildDateTimePicker() => SizedBox(
    height: 180,
    child: CupertinoDatePicker(
      initialDateTime: dateTime,
      mode: CupertinoDatePickerMode.dateAndTime,
      minimumDate: DateTime(DateTime.now().year, DateTime.now().month,DateTime.now().day ),
      maximumDate: DateTime(DateTime.now().year, DateTime.now().month+1, DateTime.now().day+7),
      use24hFormat: true,
      onDateTimeChanged: (dateTime) =>
          setState(() => dateTime = dateTime),
    ),
  );
}