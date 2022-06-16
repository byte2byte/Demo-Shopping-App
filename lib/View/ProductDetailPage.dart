import 'package:boptee/Utils/Kolors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 30.0.h,
              child: Image.asset(
                "assets/Images/product.gif",
              ),
            ),
            Text(
              "Product Detail be shown here...",
              style: TextStyle(
                  color: Kolors.kButtonBg.withOpacity(0.5),
                  fontSize: 18.0.sp,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
