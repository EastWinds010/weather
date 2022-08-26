import 'package:flutter/material.dart';
class  DateText extends StatefulWidget {
  const DateText({Key? key, required this.label}) : super(key: key);
  final String label;

  @override
  State<DateText> createState() => _DateTextState();
}

class _DateTextState extends State<DateText> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Text(widget.label,
    style: TextStyle(
      fontSize: size.width*.08,
      color: Colors.white
    ),
    );
  }
}
