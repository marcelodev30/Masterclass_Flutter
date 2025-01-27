import 'package:flutter/material.dart';

class Exercicio1Page extends StatefulWidget {
  const Exercicio1Page({super.key});

  @override
  State<Exercicio1Page> createState() => _Exercicio1PageState();
}

class _Exercicio1PageState extends State<Exercicio1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Positioned(
            top: 1.5,
            left: 35,
            child: Container(
              color: Colors.white,
              width: 150,
              height: 27,
              child: Text('Employee Details',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      fontFamily: 'Timesnew')),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1.5)),
            child: Form(
              child: Column(children: [
                TextLabel(title: 'First name:'),
                TextLabel(title: 'Last name:'),
                Row(children: [
                  RadioLabel(title: 'Male'),
                  RadioLabel(title: 'Female')
                ]),
                TextLabel(title: 'Employee ID:'),
                TextLabel(title: 'Designation:'),
                TextLabel(title: 'Phone Number:'),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(
                              const Color.fromARGB(78, 158, 158, 158)),
                          shape: WidgetStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2),
                              side: BorderSide(color: Colors.black)))),
                      child: Text('Submit',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w500)),
                    ),
                  ],
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

class RadioLabel extends StatelessWidget {
  final String title;
  const RadioLabel({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          value: false,
          groupValue: true,
          onChanged: (value) {},
        ),
        Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
              fontFamily: 'Timesnew'),
        )
      ],
    );
  }
}

class TextLabel extends StatelessWidget {
  final String title;
  const TextLabel({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: 'Timesnew'),
        ),
        Container(
            margin: EdgeInsets.only(left: 5),
            width: 200,
            height: 30,
            child: TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(),
            )))
      ]),
    );
  }
}
