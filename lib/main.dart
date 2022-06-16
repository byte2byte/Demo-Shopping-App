// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:boptee/View/BottomNavBar.dart';
import 'package:boptee/View/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
          theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
          debugShowCheckedModeBanner: false,
          title: 'BopTee',
          home: const HomePage());
    });
  }
}
