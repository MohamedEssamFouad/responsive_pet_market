import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Searchbarr extends StatelessWidget {
  const Searchbarr({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 25),
      child: Center(
        child: Container(

          alignment: Alignment.center,
          height:50,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white,

          ),
          child: Text('What you are looking for?',style: TextStyle(fontSize: 15.sp),),
        ),
      ),
    );
  }
}
