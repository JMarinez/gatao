import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LongBottomButton extends StatelessWidget {
  final String label;
  final Function onTap;

  const LongBottomButton({
    Key? key,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: MaterialButton(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        elevation: 0.0,
        color: Theme.of(context).primaryColor,
        height: 55.0,
        onPressed: () => onTap(),
        child: Center(
          child: Text(
            label,
            style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
    // return GestureDetector(
    //   onTap: onTap(),
    //   child: Container(
    //     margin: const EdgeInsets.symmetric(horizontal: 15.0),
    //     height: 55,
    //     width: double.infinity,
    //     child: Center(
    //       child: Text(
    //         label,
    //         style: GoogleFonts.inter(
    //             color: Colors.white,
    //             fontSize: 18.0,
    //             fontWeight: FontWeight.bold),
    //       ),
    //     ),
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(15.0),
    //       color: Theme.of(context).primaryColor,
    //     ),
    //   ),
    // );
  }
}
