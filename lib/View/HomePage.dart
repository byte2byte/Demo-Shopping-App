import 'package:boptee/KIconClass.dart';
import 'package:boptee/Utils/Constants.dart';
import 'package:boptee/Utils/Kolors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      padding: EdgeInsets.symmetric(horizontal: 3.0.w),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kSizedBox(),
            Center(
              child: SizedBox(
                height: 17.0.h,
                child: Image.asset(
                  "assets/Images/logo.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            kSizedBox(),
            kSizedBox(),
            Text(
              "Create New Account",
              style: headingStyle(),
            ),
            SizedBox(
              height: 0.5.h,
            ),
            Text(
              "Enter Details to Continue",
              style: TextStyle(
                  color: Kolors.kText,
                  fontSize: 15.0.sp,
                  fontWeight: FontWeight.w500),
            ),
            kSizedBox(),
            kTextField(
                "Name of Owner", KIcons.person, TextInputType.name, 16.0.sp),
            kSizedBox(),
            kTextField(
                "Mobile Number", KIcons.phone, TextInputType.phone, 16.0.sp),
            kSizedBox(),
            kTextField(
                "Email ID", Icons.email, TextInputType.emailAddress, 18.0.sp),
            kSizedBox(),
            kTextField("Organization Name", KIcons.organization,
                TextInputType.name, 16.0.sp),
            kSizedBox(),
            kTextField("Address", KIcons.address, TextInputType.streetAddress,
                16.0.sp),
            kSizedBox(),
            kTextField(
                "City", KIcons.city, TextInputType.streetAddress, 16.0.sp),
            kSizedBox(),
            kTextField(
                "Pin-Code", KIcons.pincode, TextInputType.number, 16.0.sp),
            kSizedBox(),
            kTextField("GST Number", KIcons.gst, TextInputType.text, 16.0.sp),
            kSizedBox(),
            Row(
              children: [
                Checkbox(
                  value: _isChecked,
                  activeColor: Kolors.kButtonBg,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1.5.w)),
                  onChanged: (value) {
                    setState(() {
                      _isChecked = !_isChecked;
                    });
                  },
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "By Clicking Sign up, you are Agree to our",
                      style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 15.0.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "Terms of Services",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: const Color(0xff707070),
                                fontSize: 15.2.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Text(
                          " and ",
                          style: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: 15.0.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "Privacy Policies",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: const Color(0xff707070),
                                fontSize: 15.2.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            kSizedBox(),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.5.w)),
                  fixedSize: Size(60.0.w, 6.5.h),
                  primary: Kolors.kButtonBg,
                ),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0.sp,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            kSizedBox(),
            kSizedBox(),
            kSizedBox(),
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Already have an Account?",
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 16.0.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  InkWell(
                      child: Text(
                    " Click Here",
                    style: TextStyle(
                        color: Kolors.kButtonBg,
                        fontSize: 16.0.sp,
                        fontWeight: FontWeight.w600),
                  ))
                ],
              ),
            ),
            kSizedBox(),
            kSizedBox(),
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    KIcons.copyright,
                    size: 17.0.sp,
                    color: Colors.grey.shade300,
                  ),
                  SizedBox(
                    width: 1.0.w,
                  ),
                  Text(
                    " BopTee All Right Reserved",
                    style: TextStyle(
                        color: Colors.grey.shade300,
                        fontSize: 15.0.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            kSizedBox(),
          ],
        ),
      ),
    ));
  }

  // Custom Container TextField
  Container kTextField(
      String hint, IconData icon, TextInputType keyboardType, double iconSize) {
    return Container(
      width: double.infinity,
      height: 6.5.h,
      padding: EdgeInsets.symmetric(horizontal: 5.0.w, vertical: 0.h),
      decoration: BoxDecoration(
          color: Kolors.kTxtFld, borderRadius: BorderRadius.circular(2.0.w)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: iconSize,
            color: Kolors.kIcon,
          ),
          SizedBox(
            width: 3.0.w,
          ),
          Container(
            height: 3.0.h,
            color: Kolors.kIcon,
            width: 1,
          ),
          Expanded(
            child: TextField(
              cursorColor: Kolors.kText,
              style: TextStyle(
                  fontSize: 16.0.sp,
                  fontWeight: FontWeight.w400,
                  color: Kolors.kText),
              keyboardType: keyboardType,
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: TextStyle(
                    color: const Color(0xffB4B4B4),
                    fontSize: 15.0.sp,
                    fontWeight: FontWeight.w600),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 1.5.h),
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          )
        ],
      ),
    );
  }

  // Vertical Space used
  SizedBox kSizedBox() {
    return SizedBox(
      height: 2.5.h,
    );
  }
}
