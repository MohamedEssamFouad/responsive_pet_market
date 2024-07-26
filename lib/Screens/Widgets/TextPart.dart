import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Textpart extends StatelessWidget {
  const Textpart({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
      child: Text(
        'Until one has loved an\n animal ,\na part of ones soul\nremins unwakened.',
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 20.sp,
        ),
      ),
    );
  }
}
