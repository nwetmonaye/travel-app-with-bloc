import 'package:flutter/material.dart';
import 'package:travel_project/misc/colors.dart';
import 'package:travel_project/widges/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ResponsiveButton({super.key, this.width = 120, this.isResponsive = false});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive == true ? double.maxFinite : width,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.mainColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isResponsive == true
                ? Container(
                    margin: const EdgeInsets.all(20),
                    child: Center(
                      // Wrap the AppText with Center widget
                      child: AppText(
                        text: "Book Trip Now",
                        color: Colors.white,
                      ),
                    ),
                  )
                : Image.asset(
                    "img/button-one.png",
                    width: 40,
                    height: 40,
                  ),
          ],
        ),
      ),
    );
  }
}
