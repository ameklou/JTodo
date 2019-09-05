import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;
  AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
        color: Color(0xFF757575),
        child: Container(
          padding: EdgeInsets.only(top: 30, left: 40, right: 40),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                "Add a task",
                style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF1b0000),
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(

                autofocus: true,
                onChanged: (value){
                  newTaskTitle=value;
                },cursorColor:Color(0xFF3e2723) ,

                decoration: InputDecoration(

                  fillColor: Color(0xFF3e2723),

                  hintStyle: TextStyle(
                    color: Colors.black
                  )
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                onPressed: () {
                  addTaskCallback(newTaskTitle);
                },
                child: Text(
                  'Save',
                  style: TextStyle(color: Colors.white),
                ),
                color: Color(0xFF1b0000),
              )
            ],
          ),
        ));
  }
}
