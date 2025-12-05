// // import 'package:flutter/material.dart';

// // class BasicButton extends StatelessWidget {
// //   final String title;
// //   final void Function() onPressed;
// //   const BasicButton({super.key, required this.title, required this.onPressed});

// //   @override
// //   Widget build(BuildContext context) {
// //     ThemeData theme = Theme.of(context);

// //     return Container(
// //       decoration: BoxDecoration(
// //         boxShadow: [
// //           BoxShadow(
// //             color: const Color(0xFF1FE6ED).withOpacity(0.7),
// //             blurRadius: 50,
// //             spreadRadius: 1,
// //           ),
// //         ],
// //       ),
// //       child: ElevatedButton(
// //         onPressed: onPressed,
// //         style: ElevatedButton.styleFrom(
// //           backgroundColor: const Color(0xFF1FE6ED),
// //           padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
// //           elevation: 0, // مهم جداً علشان لا يتعارض مع الظل

// //         ),
// //         child: Text(
// //           title,
// //           style: theme.textTheme.titleMedium!.copyWith(
// //             color: Colors.black,
// //             fontWeight: FontWeight.bold,
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';

// class BasicButton extends StatelessWidget {
//   final String title;
//   final void Function() onPressed;

//   const BasicButton({super.key, required this.title, required this.onPressed});

//   @override
//   Widget build(BuildContext context) {
//     ThemeData theme = Theme.of(context);

//     return MouseRegion(
//       cursor: SystemMouseCursors.click,
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(12),
//           boxShadow: [
//             BoxShadow(
//               color: const Color(0xFF1FE6ED).withOpacity(0.5),
//               blurRadius: 25,
//               spreadRadius: 2,
//             ),
//           ],
//         ),
//         child: ElevatedButton(
//           onPressed: onPressed,
//           style: ButtonStyle(
//             backgroundColor: MaterialStateProperty.resolveWith((states) {
//               if (states.contains(MaterialState.hovered)) {
//                 return const Color(0xFF1FE6ED).withOpacity(0.9);
//               }
//               return const Color(0xFF1FE6ED);
//             }),
//             elevation: MaterialStateProperty.all(0),
//             padding: MaterialStateProperty.all(
//               const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
//             ),
//             shape: MaterialStateProperty.all(
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//             ),
//             shadowColor: MaterialStateProperty.resolveWith((states) {
//               if (states.contains(MaterialState.hovered)) {
//                 return const Color(0xFF1FE6ED).withOpacity(0);
//               }
//               return const Color(0xFF1FE6ED);
//             }),
//           ),
//           child: Text(
//             title,
//             style: theme.textTheme.titleMedium!.copyWith(
//               color: Colors.black,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class BasicButton extends StatefulWidget {
  final String title;
  final void Function() onPressed;

  const BasicButton({super.key, required this.title, required this.onPressed});

  @override
  State<BasicButton> createState() => _BasicButtonState();
}

class _BasicButtonState extends State<BasicButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      cursor: SystemMouseCursors.click,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          boxShadow: isHovered
              ? [
                  BoxShadow(
                    color: const Color(0xFF1FE6ED).withOpacity(0.8),
                    blurRadius: 35,
                    spreadRadius: 3,
                  ),
                ]
              : [],
        ),
        child: ElevatedButton(
          onPressed: widget.onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF1FE6ED),
            elevation: 0,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          ),
          child: Text(
            widget.title,
            style: theme.textTheme.titleMedium!.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
