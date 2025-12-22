import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theming/style.dart';

class ImageAndText extends StatelessWidget {
  const ImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svgs/docdoc_logo_and_lowopacity.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Colors.white, Colors.white.withOpacity(0.0)],
              stops: const [0.14, 0.4],
            ),
          ),
          child: Image.asset('assets/image/doctor.png'),
        ),
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Column(
            children: [
              Text(
                'Best Doctor\nAppointment App',
                textAlign: TextAlign.center,
                style: TextStyles.font32BoldBlue,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
