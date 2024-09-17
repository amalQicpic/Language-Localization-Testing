// import 'package:flutter/material.dart';
// import 'package:language_localization/screens/home_page.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(


//     localizationsDelegates: [
//         AppLocalizations.delegate,
//         GlobalMaterialLocalizations.delegate,
//         GlobalWidgetsLocalizations.delegate,
//         GlobalCupertinoLocalizations.delegate,
//       ],
//       supportedLocales: [
//         const Locale('en', ''), // English
//         const Locale('es', ''), // Spanish
//         const Locale('hi', ''), // Hindi
//         const Locale('ml', ''), // Malayalam
//         const Locale('kn', ''), // Kannada
//         const Locale('te', ''), // Telugu
//       ],



//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const HomePage(sampleText: 'You have selected '),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:language_localization/lib/generated/l10n.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''), // English
        const Locale('es', ''), // Spanish
        // const Locale('fr', ''), // French
        const Locale('hi', ''), // Hindi
        const Locale('ml', ''), // Malayalam
        const Locale('kn', ''), // Kannada
        const Locale('te', ''), // Telugu
      ],
      home: const HomePage(sampleText: 'Sample Text'),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.sampleText});

  final String sampleText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$sampleText ${AppLocalizations.of(context)!.language}',
                style: const TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              Wrap(
                spacing: 10.0,
                runSpacing: 10.0,
                alignment: WrapAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {}, child: Text(AppLocalizations.of(context)!.english)),
                  ElevatedButton(
                      onPressed: () {}, child: Text(AppLocalizations.of(context)!.spanish)),
                  ElevatedButton(
                      onPressed: () {}, child: Text(AppLocalizations.of(context)!.hindi)),
                  ElevatedButton(
                      onPressed: () {}, child: Text(AppLocalizations.of(context)!.malayalam)),
                  ElevatedButton(
                      onPressed: () {}, child: Text(AppLocalizations.of(context)!.kannada)),
                  ElevatedButton(
                      onPressed: () {}, child: Text(AppLocalizations.of(context)!.telugu)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
