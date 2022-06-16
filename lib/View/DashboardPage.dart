import 'package:boptee/Components/KItemWidget.dart';
import 'package:boptee/Utils/Constants.dart';
import 'package:boptee/Utils/Kolors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  PageController _pageController = PageController();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 43.0.h,
                width: double.infinity,
                child: Stack(
                  children: [
                    SizedBox(
                        height: 30.0.h,
                        child: Stack(
                          children: [
                            Container(height: 30.0.h, color: Kolors.kButtonBg),
                            SizedBox(
                              height: 30.0.h,
                              child: Image.asset("assets/Images/mask2.png"),
                            )
                          ],
                        )),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: ImageIcon(
                                      AssetImage("assets/Icons/menu.png"),
                                      size: 20.0.sp,
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
                                icon: ImageIcon(
                                  AssetImage("assets/Icons/Notification.png"),
                                  size: 20.0.sp,
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
                                      borderRadius:
                                          BorderRadius.circular(2.0.w)),
                                  child: TextField(
                                    cursorColor: Kolors.kText,
                                    style: TextStyle(
                                        fontSize: 16.0.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Kolors.kText),
                                    decoration: InputDecoration(
                                      hintText:
                                          "What are you looking for today?",
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
                                  child: ImageIcon(
                                    AssetImage("assets/Icons/Search.png"),
                                    color: Kolors.kButtonBg,
                                    size: 22.0.sp,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        kSizedBox(),
                        SizedBox(
                          height: 20.0.h,
                          child: PageView.builder(
                              onPageChanged: ((value) {
                                setState(() {
                                  _selectedIndex = value;
                                });
                              }),
                              controller: _pageController,
                              itemCount: bannerList.length,
                              itemBuilder: ((context, index) => Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 3.0.w),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0.w)),
                                      child: Image.asset(
                                        bannerList[index],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ))),
                        ),
                        kSizedBox(),
                        Center(
                          child: SizedBox(
                            height: 0.5.h,
                            child: Center(
                              child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: bannerList.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return _selectedIndex == index
                                      ? Container(
                                          margin: EdgeInsets.only(right: 3.0.w),
                                          color: Kolors.kButtonBg,
                                          width: 15,
                                        )
                                      : Container(
                                          margin: EdgeInsets.only(right: 3.0.w),
                                          color: Colors.grey.shade400,
                                          width: 15,
                                        );
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Our Top Most Brands",
                      style: headingStyle(),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 2.0.w),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Kolors.kButtonBg),
                          height: 1.0.h,
                          width: 1.0.h,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 2.0.w),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Kolors.kButtonBg.withOpacity(0.2)),
                          height: 1.0.h,
                          width: 1.0.h,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 2.0.w),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Kolors.kButtonBg.withOpacity(0.2)),
                          height: 1.0.h,
                          width: 1.0.h,
                        )
                      ],
                    )
                  ],
                ),
              ),
              kSizedBox(),
              SizedBox(
                height: 13.0.h,
                child: ListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.only(left: 3.0.w),
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: brandList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.only(
                          right: 4.5.w, top: 0.5.h, bottom: 0.5.h),
                      height: 12.0.h,
                      width: 12.0.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3.0.w),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade300, blurRadius: 5)
                          ]),
                      child: Image.asset(brandList[index]),
                    );
                  },
                ),
              ),
              kSizedBox(),
              Container(
                height: 0.6.h,
                width: double.infinity,
                color: Colors.grey.shade300,
              ),
              kSizedBox(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categories",
                      style: headingStyle(),
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.w)),
                            primary: const Color(0xff737EC4).withOpacity(0.6)),
                        child: Text(
                          "View all",
                          style: TextStyle(
                              color: const Color(0xff023044),
                              fontSize: 15.0.sp,
                              fontWeight: FontWeight.w600),
                        ))
                  ],
                ),
              ),
              kSizedBox(),
              SizedBox(
                height: 15.0.h,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left: 3.0.w),
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 4.0.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3.0.w)),
                              child: SizedBox(
                                  height: 10.0.h,
                                  width: 10.0.h,
                                  child:
                                      Image.asset(hotSellingProducts[index])),
                            ),
                            SizedBox(
                              height: 0.8.h,
                            ),
                            Center(
                              child: Text(
                                "Category ${categories[index]}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Kolors.kButtonBg,
                                    fontSize: 15.0.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
              kSizedBox(),
              Container(
                height: 0.6.h,
                width: double.infinity,
                color: Colors.grey.shade300,
              ),
              kSizedBox(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hot Selling Products",
                      style: headingStyle(),
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.w)),
                            primary: Color(0xff737EC4).withOpacity(0.6)),
                        child: Text(
                          "View all",
                          style: TextStyle(
                              color: Color(0xff023044),
                              fontSize: 15.0.sp,
                              fontWeight: FontWeight.w600),
                        ))
                  ],
                ),
              ),
              kSizedBox(),
              SizedBox(
                height: 28.0.h,
                child: ListView.builder(
                  itemCount: hotSellingProducts.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 3.0.w),
                  itemBuilder: (BuildContext context, int index) {
                    return kItemWidget(
                      imagePath: hotSellingProducts[index],
                    );
                  },
                ),
              ),
              kSizedBox(),
              Container(
                height: 0.6.h,
                width: double.infinity,
                color: Colors.grey.shade300,
              ),
              kSizedBox(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recently Added",
                      style: headingStyle(),
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.w)),
                            primary: Color(0xff737EC4).withOpacity(0.6)),
                        child: Text(
                          "View all",
                          style: TextStyle(
                              color: Color(0xff023044),
                              fontSize: 15.0.sp,
                              fontWeight: FontWeight.w600),
                        ))
                  ],
                ),
              ),
              kSizedBox(),
              SizedBox(
                height: 28.0.h,
                child: ListView.builder(
                  reverse: true,
                  itemCount: hotSellingProducts.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 3.0.w),
                  itemBuilder: (BuildContext context, int index) {
                    return kItemWidget(
                      imagePath: hotSellingProducts[index],
                    );
                  },
                ),
              ),
              kSizedBox(),
              kSizedBox()
            ],
          ),
        ),
      ),
    );
  }

  final List<String> bannerList = [
    "assets/Images/banner.png",
    "assets/Images/banner2.png"
  ];

  final List<String> brandList = [
    "assets/Icons/Deisel.png",
    "assets/Icons/Puma.png",
    "assets/Icons/Levis.png",
    "assets/Icons/hNM.png"
  ];

  final List<String> hotSellingProducts = [
    "assets/Icons/1.png",
    "assets/Icons/2.png",
    "assets/Icons/3.png",
    "assets/Icons/4.png",
    "assets/Icons/5.png"
  ];

  final List<String> categories = ["A", "B", "C", "D", "E"];

  SizedBox kSizedBox() => SizedBox(
        height: 2.5.h,
      );
}
