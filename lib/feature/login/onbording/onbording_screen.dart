import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widget/text_and_started_buttom.dart';
import 'widget/doc_logo_and_name.dart';
import 'widget/image_and_text.dart';

class OnbordingScreen extends StatelessWidget {
  const OnbordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              children: [
                const DocLogoAndName(),
                SizedBox(height: 30.h),
                const ImageAndText(),
                SizedBox(height: 30.h),
                const TextAndStartedButtom(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
