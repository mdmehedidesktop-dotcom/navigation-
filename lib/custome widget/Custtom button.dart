import 'package:flutter/material.dart';
class CusttomButton extends StatelessWidget {
  const CusttomButton({super.key,required this.color,
    required this.onTap,required this.title,
    required this.height,required this.width,required this.textColor

  });

  final Color?color;
  final VoidCallback onTap;
  final String title;
  final double height;
  final double width;
  final Color textColor;



  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(color: color ?? Colors.orange,
          borderRadius: BorderRadius.circular(20),),
        alignment: Alignment.center,
        child: Text(title,style: TextStyle(
          color: textColor,
          fontSize: 16,
        ),),

      ),
    );
  }
}
