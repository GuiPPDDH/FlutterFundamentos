import 'package:flutter/material.dart';
import 'package:flutter_default_state_manager/blocPattern/bloc_pattern_page.dart';
import 'package:flutter_default_state_manager/setState/set_state_page.dart';
import 'package:flutter_default_state_manager/valueNotifier/value_notifier_page.dart';

import 'changeNotifier/change_notifier_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _goToPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return page;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              _goToPage(context, const SetStatePage());
            },
            child: const Text('SetState'),
          ),
          ElevatedButton(
            onPressed: () {
              _goToPage(context, const ValueNotifierPage());
            },
            child: const Text('ValueNotifier'),
          ),
          ElevatedButton(
            onPressed: () {
              _goToPage(context, const ChangeNotifierPage());
            },
            child: const Text('ChangeNotifier'),
          ),
          ElevatedButton(
            onPressed: () {
              _goToPage(context, const BlocPatternPage());
            },
            child: const Text('BlocPattern(Streams)'),
          ),
        ],
      )),
    );
  }
}
