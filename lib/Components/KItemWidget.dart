import 'package:boptee/Utils/Kolors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class kItemWidget extends StatefulWidget {
  const kItemWidget({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  final String imagePath;

  @override
  State<kItemWidget> createState() => _kItemWidgetState();
}

class _kItemWidgetState extends State<kItemWidget> {
  bool _fav = false;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      clipBehavior: Clip.hardEdge,
      borderRadius: BorderRadius.all(Radius.circular(5.0.w)),
      child: Container(
        margin: EdgeInsets.only(right: 5.0.w, top: 0.5.h, bottom: 0.5.h),
        width: 35.0.w,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5.0.w)),
            boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 5)]),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 2.0.w, vertical: 1.0.h),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.imagePath), fit: BoxFit.cover),
                color: Colors.amber,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5.0.w),
                    topRight: Radius.circular(5.0.w)),
              ),
              height: 18.0.h,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            _fav = !_fav;
                          });
                        },
                        child: Container(
                          height: 3.0.h,
                          width: 3.0.h,
                          decoration: const BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: Icon(
                            _fav ? Icons.favorite : Icons.favorite_border,
                            color: Colors.red,
                            size: 17.0.sp,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 2.0.w),
              height: 4.h,
              color: Colors.white,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "₹ 750",
                    style: TextStyle(
                        color: Kolors.kButtonBg,
                        fontSize: 16.0.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                      width: 15.0.w,
                      child: Image.asset("assets/Icons/Rating.png"))
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5.0.w),
                    bottomRight: Radius.circular(5.0.w)),
                color: Kolors.kButtonBg,
              ),
              height: 5.h,
              width: double.infinity,
              child: Center(
                child: Text(
                  "Add to Cart",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.5.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
