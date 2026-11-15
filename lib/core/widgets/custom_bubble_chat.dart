import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class CustomBubbleChat extends StatelessWidget {
  final double topLeftBorder ;
  final double topRightBorder ;
  final double BottomLeftBorder ;
  final double BottomRightBorder ;
  final String text;
  final Color containerColor;
  final ImageProvider? image;

  const CustomBubbleChat({
    super.key,
    required this.topLeftBorder,
    required this.topRightBorder,
    required this.BottomLeftBorder,
    required this.BottomRightBorder,
    required this.text,
    required this.containerColor,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
       constraints: BoxConstraints(
         maxWidth: 250,
       ),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius:BorderRadius.only(
            topLeft: Radius.circular(topLeftBorder),
            topRight: Radius.circular(topRightBorder),
            bottomLeft: Radius.circular(BottomLeftBorder),
            bottomRight: Radius.circular(BottomRightBorder),
          ),
        ),
        child: Column(
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                color: AppColors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            if(image != null)
              Image(
                image: image!,
                width: 200,
              ),
          ],
        ),
      ),
    );
  }
}
