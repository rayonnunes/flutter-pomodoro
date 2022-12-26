import 'package:flutter/material.dart';

class StopwatchButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final void Function()? onClick;

  const StopwatchButton({
      Key? key,
      required this.title,
      required this.icon,
      this.onClick
  }) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClick,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        textStyle: const TextStyle(
          fontSize: 25,
        )
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              icon,
              size: 35,
            ),
          ),
          Text(title),
        ],
      ),
    );
  }
}