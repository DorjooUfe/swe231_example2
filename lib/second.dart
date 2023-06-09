import 'package:flutter/material.dart';
import 'package:seminar4/main.dart';
import 'package:seminar4/third.dart';

class Second extends StatefulWidget {
  const Second({super.key, required this.text});
  final String text;
  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  String txt = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Семинар 4'),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 80),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextField(
            onChanged: (value) => setState(() {
              txt = value;
            }),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(widget.text),
          const SizedBox(
            height: 16,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Seminar4(text: txt)));
              },
              child: const Text('Ask question')),
          const SizedBox(
            height: 16,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Third(text: txt)));
              },
              child: const Text('Stateless')),
        ]),
      ),
    );
  }
}
