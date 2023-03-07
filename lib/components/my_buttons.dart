import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mybutton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onpress;
  
  const mybutton(
      {Key? key,
      this.title = '',
      this.color = const Color.fromARGB(255, 211, 211, 211),
      required this.onpress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: InkWell(
          onTap: onpress,
          child: Container(
            height: 72,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
