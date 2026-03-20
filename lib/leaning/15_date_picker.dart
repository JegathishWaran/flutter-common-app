import 'package:flutter/material.dart';

class DatePickerDate extends StatefulWidget {
  const DatePickerDate({super.key});

  @override
  State<DatePickerDate> createState() => _DatePickerDateState();
}

class _DatePickerDateState extends State<DatePickerDate> {
  DateTime? selectedDate;
  TimeOfDay _timeOfDay = TimeOfDay.now();
  TimeOfDay? selected_time = TimeOfDay.now();

  


  Future<void> _showDatePicker() async {
    final pickedDate = await showDatePicker(
      context: context, 
      initialDate: DateTime.now(),
      firstDate: DateTime(2000), 
      lastDate: DateTime(2029)
    );

    if (pickedDate != null) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }

  Future<void> _showTimePicker() async{
    final time = await showTimePicker(context: context,
                  initialTime: _timeOfDay);
    
    if (time != null){
        setState(() {
                selected_time = time;
              });
    }

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Expanded(child: Text(selectedDate.toString())),
          Expanded(child: Text(selected_time?.format(context) ?? "No time selected",
)),
          Expanded(
            child: Center(
              child: MaterialButton(
                  onPressed: _showDatePicker,
                  color: Colors.blue,
                  child: Padding(
                    padding:   EdgeInsets.all(20.0),
                    child: Text("Choose date", style: TextStyle(color: Colors.white , fontSize: 25),),
                  ),
                  ),
            ),
          ),
          Expanded(
            child: Center(
              child: MaterialButton(
                  onPressed: _showTimePicker,
                  color: Colors.blue,
                  child: Padding(
                    padding:   EdgeInsets.all(20.0),
                    child: Text("Choose time", style: TextStyle(color: Colors.white , fontSize: 25),),
                  ),
                  ),
            ),
          ),

        ],
      ),
      );
  }
}