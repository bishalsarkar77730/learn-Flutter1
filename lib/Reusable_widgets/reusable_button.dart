import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class ReusableButton extends StatelessWidget {
  final String title;
  final int color;
  final double height;
  final double width;
  final double radius;
  final double fontsize;
  final Callback ontap;
  final int borderColor;
  final double elevation;

  const ReusableButton({
    Key? key,
    required this.title,
    this.color = 0xffFF8B20,
    this.fontsize = 16,
    required this.ontap,
    this.height = 48,
    this.width = double.infinity,
    this.radius = 10,
    this.borderColor = 0xffFF8B20,
    this.elevation = 5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Material(
        elevation: elevation,
        borderRadius: BorderRadius.circular(radius),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: Color(color),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Color(borderColor), width: 1)),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  fontSize: fontsize,
                  color: color == 0xffffffff ? Colors.black : Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
