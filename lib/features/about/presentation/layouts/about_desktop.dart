import 'package:flutter/material.dart';
import 'package:portfolio/common/widgets/bio_text.dart';
import 'package:portfolio/common/widgets/headline_title.dart';
import 'package:portfolio/core/extensions/device_extension.dart';
import 'package:portfolio/core/extensions/spacing_extension.dart';
import 'package:portfolio/core/extensions/theme_extension.dart';
import 'package:portfolio/features/about/presentation/widgets/cards_about.dart';
import 'package:portfolio/features/about/presentation/widgets/content_about.dart';
import 'package:portfolio/features/about/presentation/widgets/image_about.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeadlineTitle(
          gradientText: context.local.about,
          text: ' ${context.local.me}',
        ),

        context.spacing.md.h,

        BioText(bio: context.local.bio),

        context.spacing.xxl64.h,

        const _ContentAbout(),

        context.spacing.xxl64.h,
        context.spacing.lg.h,

        const CardsAbout(),
      ],
    );
  }
}

class _ContentAbout extends StatelessWidget {
  const _ContentAbout();

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 1140,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [ContentAbout(), ImageAbout()],
      ),
    );
  }
}

// class _AboutMeContent extends StatelessWidget {
//   const _AboutMeContent();

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const HeadlineTitle(
//           gradientText: "Hello, I'm",
//           text: "\nEljihad Mohammed",
//           isMedium: true,
//         ),

//         context.spacing.lg.h,

//         const BioText(
//           isStart: true,
//           bio:
//               "I build solutions that solve real problems and develop impactful applications for people and businesses. Flutter Developer with backend experience in Node.js and cloud platforms like Firebase and Supabase, delivering end-to-end solutions with strong UI/UX design based on Figma. Focused on clean, scalable, and user-friendly apps that create real value and long-term impact.",
//         ),

//         context.spacing.lg.h,

//         SizedBox(
//           width: 200,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               BasicIconSvg(onPressed: () {}, icon: AppIcons.linkedin),
//               BasicIconSvg(onPressed: () {}, icon: AppIcons.instagram),
//               BasicIconSvg(onPressed: () {}, icon: AppIcons.github),
//               BasicIconSvg(onPressed: () {}, icon: AppIcons.email),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

// class HexagonPainter extends CustomPainter {
//   final double cornerRadius;

//   HexagonPainter({this.cornerRadius = 40}); // خفيف جدًا

//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..shader = const LinearGradient(
//         begin: Alignment.topCenter,
//         end: Alignment.bottomCenter,
//         colors: [Color(0xFFECECEC), Color(0xFF2C2A3A)],
//       ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

//     final center = Offset(size.width / 2, size.height / 2);
//     final radius = size.width / 2.1;

//     final points = List.generate(6, (i) {
//       final angle = (pi / 3) * i - pi / 2;
//       return Offset(
//         center.dx + radius * cos(angle),
//         center.dy + radius * sin(angle),
//       );
//     });

//     final path = Path();

//     for (int i = 0; i < points.length; i++) {
//       final p0 = points[(i - 1 + points.length) % points.length];
//       final p1 = points[i];
//       final p2 = points[(i + 1) % points.length];

//       final v1 = (p0 - p1);
//       final v2 = (p2 - p1);

//       final d1 = v1.distance;
//       final d2 = v2.distance;

//       final r = cornerRadius.clamp(0.0, min(d1, d2) / 2);

//       final start = p1 + v1 / d1 * r;
//       final end = p1 + v2 / d2 * r;

//       if (i == 0) {
//         path.moveTo(start.dx, start.dy);
//       } else {
//         path.lineTo(start.dx, start.dy);
//       }

//       path.quadraticBezierTo(p1.dx, p1.dy, end.dx, end.dy);
//     }

//     path.close();
//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => false;
// }

// class ProfileMask extends StatelessWidget {
//   const ProfileMask({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       alignment: Alignment.topCenter,
//       clipBehavior: Clip.none,
//       children: [
//         Positioned(
//           top: 36,
//           left: 3.3,
//           child: Container(
//             width: 240,
//             height: 240,
//             decoration: const BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.red,
//             ),
//           ),
//         ),

//         ClipPath(
//           clipper: BottomCircleClipper(),

//           child: Image.asset(
//             AppImages.myPhoto,
//             width: 240,
//             height: 280,
//             fit: BoxFit.cover,
//             alignment: Alignment.bottomCenter,
//           ),
//         ),
//       ],
//     );
//   }
// }

// class BottomCircleClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final path = Path();

//     path.moveTo(0, 0);
//     path.lineTo(0, size.height * 0.55);

//     path.quadraticBezierTo(
//       size.width / 2,
//       size.height,
//       size.width,
//       size.height * 0.55,
//     );

//     path.lineTo(size.width, 0);
//     path.close();

//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
// }

// class HexagonClipper extends CustomClipper<Path> {
//   final double cornerRadius;

//   HexagonClipper({this.cornerRadius = 40});

//   @override
//   Path getClip(Size size) {
//     final path = Path();
//     final center = Offset(size.width / 2, size.height / 2);
//     final radius = size.width / 2;

//     final points = List.generate(6, (i) {
//       final angle = (pi / 3) * i - pi / 2;
//       return Offset(
//         center.dx + radius * cos(angle),
//         center.dy + radius * sin(angle),
//       );
//     });

//     for (int i = 0; i < points.length; i++) {
//       final p0 = points[(i - 1 + points.length) % points.length];
//       final p1 = points[i];
//       final p2 = points[(i + 1) % points.length];

//       final v1 = (p0 - p1);
//       final v2 = (p2 - p1);

//       final d1 = v1.distance;
//       final d2 = v2.distance;

//       final r = cornerRadius.clamp(0.0, min(d1, d2) / 2);

//       final start = p1 + v1 / d1 * r;
//       final end = p1 + v2 / d2 * r;

//       if (i == 0) {
//         path.moveTo(start.dx, start.dy);
//       } else {
//         path.lineTo(start.dx, start.dy);
//       }

//       path.quadraticBezierTo(p1.dx, p1.dy, end.dx, end.dy);
//     }

//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
// }
