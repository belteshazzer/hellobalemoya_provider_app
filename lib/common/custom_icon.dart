import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon(
      {super.key,
      required this.width,
      this.height,
      required this.icon,
      this.color});

  final double width;
  final double? height;
  final IconData icon;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Icon(
      color: color ?? Colors.white,
      icon,
      size: MediaQuery.of(context).size.width * width,
    );
    Container(
      width: width, // Container width
      height: height, // Container height
      child: FittedBox(
        fit: BoxFit.fill,
        child: Icon(
          icon,
          color: color ?? Colors.white,
        ),
      ),
    );
  }
}
