import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomElevatedButton extends StatelessWidget {
  final Function() onPressed;

  final bool isLoading;

  final String buttonText;

  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        backgroundColor: kPrimaryCyanColor,
        minimumSize: const Size(
          double.infinity,
          60,
        ),
      ),
      onPressed: onPressed,
      child: isLoading
          ? const CircularProgressIndicator(
              color: Colors.black,
            )
          : Text(
              buttonText,
              style: const TextStyle(color: Colors.black),
            ),
    );
  }
}
