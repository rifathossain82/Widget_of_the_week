import 'package:flutter/material.dart';

class DateTime_picker extends StatefulWidget {
  const DateTime_picker({Key? key}) : super(key: key);

  @override
  _DateTime_pickerState createState() => _DateTime_pickerState();
}

class _DateTime_pickerState extends State<DateTime_picker> {
   DateTime? _dateTime;
   TimeOfDay? _time;


  getDate()async{
    DateTime? date=await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(DateTime.now().year-10),
        lastDate: DateTime(DateTime.now().year+10),
    );

    setState(() {
      _dateTime=date!;
    });
  }

  getTime()async{
    TimeOfDay? timeOfDay=await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    setState(() {
      _time=timeOfDay!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton.icon(
              onPressed: (){
                getDate();
              },
              label: Text('Select Date'),
            icon: Icon(Icons.date_range),
          ),
          SizedBox(height: 8,),
          ElevatedButton.icon(
            onPressed: (){
              getTime();
            },
            label: Text('Select Time'),
            icon: Icon(Icons.av_timer),
          ),
          SizedBox(
            height: 20,
          ),
          _dateTime==null?Text('Date is empty!'):Text('Date: ${_dateTime!.year}-${_dateTime!.month}-${_dateTime!.day}'),
          SizedBox(height: 8,),
          _time==null?Text('Time is empty'):Text('Time: ${_time!.hour}:${_time!.minute} ${_time!.period.name}'),
        ],
      ),
    );
  }
}
