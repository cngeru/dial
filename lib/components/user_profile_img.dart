import 'package:flutter/material.dart';

class UserProfileImg extends StatelessWidget {
  final String imgURl;
  final double size;
  const UserProfileImg({Key key, this.imgURl, this.size = 32.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size / 2 - size / 18),
      child: Image.asset(
        imgURl,
        height: size,
        width: size,
        fit: BoxFit.cover,
      ),
    );
  }
}
