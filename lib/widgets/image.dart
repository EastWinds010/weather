import 'package:flutter/material.dart';

class IconCustom extends StatefulWidget {
  const IconCustom({Key? key, required this.path}) : super(key: key);
  final String path;

  @override
  State<IconCustom> createState() => _IconCustomState();
}

class _IconCustomState extends State<IconCustom> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height:size.width*0.1,
      child: Image.asset(widget.path));
  }
}
