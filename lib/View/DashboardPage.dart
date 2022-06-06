import 'package:boptee/Utils/Kolors.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  List<Widget> _bannerWidgetList = [];
  final CarouselController _controller = CarouselController();

  @override
  void initState() {
    _bannerWidgetList = bannerList.map((e) => Container()).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 50.0.h,
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    height: 30.0.h,
                    color: Colors.blue,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.menu,
                                    color: Colors.white,
                                  )),
                              Text(
                                "BopTee",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 19.0.sp,
                                    fontWeight: FontWeight.w300),
                              )
                            ],
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.notifications,
                                color: Colors.white,
                              ))
                        ],
                      ),
                      kSizedBox(),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.0.w),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 6.5.h,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 3.0.w, vertical: 0.h),
                                decoration: BoxDecoration(
                                    color: Kolors.kTxtFld,
                                    borderRadius: BorderRadius.circular(2.0.w)),
                                child: TextField(
                                  cursorColor: Kolors.kText,
                                  style: TextStyle(
                                      fontSize: 16.0.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Kolors.kText),
                                  decoration: InputDecoration(
                                    hintText: "What are you looking for today?",
                                    hintStyle: TextStyle(
                                        color: const Color(0xffB4B4B4),
                                        fontSize: 15.0.sp,
                                        fontWeight: FontWeight.w600),
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 3.0.w, vertical: 1.5.h),
                                    border: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2.0.w,
                            ),
                            SizedBox(
                              width: 15.0.w,
                              height: 6.5.h,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.search,
                                  color: Kolors.kButtonBg,
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0.h,
                        width: double.infinity,
                        child: CarouselSlider(
                          items: _bannerWidgetList,
                          carouselController: _controller,
                          options: CarouselOptions(
                              pauseAutoPlayOnManualNavigate: true,
                              pauseAutoPlayOnTouch: true,
                              autoPlay: false,
                              enlargeCenterPage: true,
                              //   height: 20.h,
                              aspectRatio: 16 / 9,
                              viewportFraction: 1,
                              initialPage: 0,
                              onPageChanged: (index, reason) {}),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  final List<String> bannerList = [
    "assets/Images/banner.png",
    "assets/Images/banner2.png"
  ];

  SizedBox kSizedBox() => SizedBox(
        height: 2.5.h,
      );
}
