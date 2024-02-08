
import 'package:flutter/material.dart';
import 'package:goldstarllc/common/utils/Styles.dart';
import 'package:goldstarllc/common/utils/color_constants.dart';

class RoundedButton extends StatelessWidget {
  final String buttonText;
  final double width;
  final double height;
  final Function onpressed;

  RoundedButton({
    required this.buttonText,
    required this.width,
    this.height = 62,
    required this.onpressed
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
         /* boxShadow: [
            BoxShadow(
                color: AppColors.appRed.withOpacity(0.15),
                offset: Offset(0, 0),
                spreadRadius: 10,
                blurRadius: 10.0)
          ],*/

          color: AppColors.yellowApp,
          borderRadius: BorderRadius.circular(10),
        ),
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            minimumSize: MaterialStateProperty.all(Size(width, height)),
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            // elevation: MaterialStateProperty.all(3),
            shadowColor: MaterialStateProperty.all(Colors.transparent),
          ),
          onPressed: () {
            onpressed();
          },
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 10,
            ),
            child: Text(
              buttonText,
              style: Styles.textFontRegular(size: 16, weight: FontWeight.normal,color: AppColors.white),
            ),
          ),
        ),
      ),
    );
  }
}



class RoundedButtonWIthLoading extends StatelessWidget {
  final String buttonText;
  final double width;
  final double height;
  final Function onPressed;
  final bool isLoading; // New parameter to indicate loading state.

  RoundedButtonWIthLoading({
    required this.buttonText,
    required this.width,
    this.height = 62,
    required this.onPressed,
    this.isLoading = false, // Default value is false.
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0, 1.0],
            colors: [
              AppColors.redDark,
              AppColors.redLight,
            ],
          ),
          color: AppColors.redLight,
          borderRadius: BorderRadius.circular(10),
        ),
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            minimumSize: MaterialStateProperty.all(Size(width, height)),
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            shadowColor: MaterialStateProperty.all(Colors.transparent),
          ),
          onPressed: isLoading ? null : () => onPressed(), // Disable the button when isLoading is true.
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 10,
            ),
            child: isLoading // Check if isLoading is true, show the loader, otherwise show the button text.
                ? CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(AppColors.white),
            )
                : Text(
              buttonText,
              style: Styles.textFontRegular(
                  size: 16, weight: FontWeight.normal, color: AppColors.white),
            ),
          ),
        ),
      ),
    );
  }
}