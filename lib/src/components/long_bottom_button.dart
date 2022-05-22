import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LongBottomButton extends StatelessWidget {
  final String label;
  final Function onPressed;

  const LongBottomButton({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed(),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15.0),
        height: 55,
        width: double.infinity,
        child: Center(
          child: Text(
            label,
            style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
