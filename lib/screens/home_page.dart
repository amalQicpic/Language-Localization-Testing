import 'package:flutter/material.dart';
import 'package:language_localization/generated/l10n.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.homePageText});

  final String homePageText;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String _displayText;

  @override
  void initState() {
    super.initState();
    _displayText = widget.homePageText;
  }

  void _updateText(String newText) {
    setState(() {
      _displayText = newText;
    });
  }

  void _changeLocale(Locale locale) {
    setState(() {
      AppLocalizations.load(locale);
    });
  }

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
                '$_displayText ${AppLocalizations.of(context).language}',
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
                      onPressed: () {
                        _changeLocale(const Locale('en', ''));
                        _updateText(AppLocalizations.of(context).english);
                      },
                      child: Text(AppLocalizations.of(context).english)),
                  ElevatedButton(
                      onPressed: () {
                        _changeLocale(const Locale('es', ''));
                        _updateText(AppLocalizations.of(context).spanish);
                      },
                      child: Text(AppLocalizations.of(context).spanish)),
                  ElevatedButton(
                      onPressed: () {
                        _changeLocale(const Locale('hi', ''));
                        _updateText(AppLocalizations.of(context).hindi);
                      },
                      child: Text(AppLocalizations.of(context).hindi)),
                  ElevatedButton(
                      onPressed: () {
                        _changeLocale(const Locale('ml', ''));
                        _updateText(AppLocalizations.of(context).malayalam);
                      },
                      child: Text(AppLocalizations.of(context).malayalam)),
                  ElevatedButton(
                      onPressed: () {
                        _changeLocale(const Locale('kn', ''));
                        _updateText(AppLocalizations.of(context).kannada);
                      },
                      child: Text(AppLocalizations.of(context).kannada)),
                  ElevatedButton(
                      onPressed: () {
                        _changeLocale(const Locale('te', ''));
                        _updateText(AppLocalizations.of(context).telugu);
                      },
                      child: Text(AppLocalizations.of(context).telugu)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
