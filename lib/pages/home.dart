import 'package:flutter/material.dart';
import 'package:wikiwhack/pages/score.dart';
import 'package:wikiwhack/pages/settings.dart';
import 'package:wikiwhack/pages/whack.dart';
import 'package:wikiwhack/widgets/nav_btn.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Center(
          child: Column(
            children: const <Widget>[
              Expanded(
                child: NavButton(
                  page: SettingsPage(),
                  icon: Icons.settings_outlined,
                  backgroundColor: Colors.red,
                ),
              ),
              Divider(),
              Expanded(
                child: NavButton(
                  page: ScorePage(),
                  icon: Icons.sports_score_outlined,
                  backgroundColor: Colors.yellow,
                ),
              ),
              Divider(),
              Expanded(
                child: NavButton(
                  page: WhackPage(),
                  icon: Icons.gamepad_outlined,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
