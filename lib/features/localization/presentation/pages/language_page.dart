// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:portfolio/l10n/app_localizations.dart';

// class LanguagePage extends StatelessWidget {
//   const LanguagePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final supportedLocales = AppLocalizations.supportedLocales;

//     return Scaffold(
//       appBar: AppBar(title: Text(AppLocalizations.of(context)!.language)),
//       body: BlocBuilder<LanguageBloc, LanguageState>(
//         builder: (context, state) {
//           return Padding(
//             padding: const EdgeInsets.all(20),
//             child: ListView.separated(
//               separatorBuilder: (_, i) => const SizedBox(height: 30),
//               itemCount: supportedLocales.length,
//               itemBuilder: (context, i) {
//                 final locale = supportedLocales[i];
//                 final selected =
//                     state.locale.languageCode == locale.languageCode;

//                 return BasicOptionTile(
//                   selected: selected,
//                   title: LanguageUtils.formatLanguage(locale.languageCode),
//                   onTap: () {
//                     context.read<LanguageBloc>().add(
//                       ChangeLanguage(locale.languageCode),
//                     );
//                   },
//                 );
//               },
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
