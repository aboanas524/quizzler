import 'package:flutter/material.dart';

class TheEnd extends StatefulWidget {
  @override
  _TheEndState createState() => _TheEndState();
}

class _TheEndState extends State<TheEnd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          children: [
            Text
            ('* انتهت الأسئلة *',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.black),),
            FlatButton(
              color: Colors.green,
              child: Text('الصفحة الرئيسية'),
              onPressed: ()
              {
                setState(() {

                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
