import 'package:flutter/material.dart';

import 'custom_conatiner.dart';
class CustomButton extends StatelessWidget {
  final Widget? textWidget;
  EdgeInsets? margin = EdgeInsets.all(10);
  EdgeInsets? padding = EdgeInsets.all(10);
  final VoidCallback? onTap;
  final Color? backgroundColor;
  final double? elevation;
  final double? borderRadius;
  final double? height;


  CustomButton(
      {Key? key, this.textWidget,
        this.margin,
        this.padding,
        this.onTap,
        this.backgroundColor,
        this.elevation = 0,this.borderRadius=10,this.height=45}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomContainer(
        onTap: onTap,
        borderRadius: borderRadius,
        margin: margin,
        backgroundColor: backgroundColor,
        elevation: elevation,
        paddingEdge: padding,
        height: height,
        shadowColor: Color(0xE9DAD9D9),
        child: textWidget);
  }
}