import 'package:flutter/material.dart';

import '../util/constants.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  RoundedButton({required this.onTap, required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: MaterialButton(
        color: mainColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: onTap,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 15),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
