import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Widgets/LastPart.dart';
import 'Widgets/SearchBar.dart';
import 'Widgets/TextPart.dart';

class Pethome extends StatelessWidget {
  const Pethome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue.withOpacity(0.6),
        leading: Icon(Icons.menu),
        title: Text('PetShop'),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              height: 50,
              width: 80,
              decoration: ShapeDecoration(
                color: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.person),
                  Icon(Icons.shopping_basket_rounded),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: Container(
              width: double.infinity,
              color: Colors.blue.withOpacity(0.6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Searchbarr(),
                  const Textpart(),
                  Expanded(
                    child: Center(
                      child: Image.asset(
                        'assets/images/pets.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Center(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Start Shopping',
                        style: TextStyle(color: Colors.white, fontSize: 25.sp),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
          const Lastpart(),
        ],
      ),
    );
  }
}
