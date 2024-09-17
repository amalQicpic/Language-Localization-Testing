// import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key, required this.sampleText});

//   final String sampleText;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 '$sampleText ${AppLocalizations.of(context)!.language}',
//                 style: const TextStyle(fontSize: 24),
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(height: 40),
//               Wrap(
//                 spacing: 10.0,
//                 runSpacing: 10.0,
//                 alignment: WrapAlignment.center,
//                 children: [
//                   ElevatedButton(
//                       onPressed: () {}, child: Text(AppLocalizations.of(context)!.english)),
//                   ElevatedButton(
//                       onPressed: () {}, child: Text(AppLocalizations.of(context)!.spanish)),
//                   ElevatedButton(
//                       onPressed: () {}, child: Text(AppLocalizations.of(context)!.hindi)),
//                   ElevatedButton(
//                       onPressed: () {}, child: Text(AppLocalizations.of(context)!.malayalam)),
//                   ElevatedButton(
//                       onPressed: () {}, child: Text(AppLocalizations.of(context)!.kannada)),
//                   ElevatedButton(
//                       onPressed: () {}, child: Text(AppLocalizations.of(context)!.telugu)),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }