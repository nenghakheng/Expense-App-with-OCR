import 'package:flutter/material.dart';

class GoalView extends StatelessWidget {
  const GoalView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: buildBody(),
    );
  }

  PreferredSizeWidget buildAppbar() {
    return AppBar(
      title: const Text('Goal'),
      centerTitle: true,
    );
  }

  Widget buildBody() {
    return const Column();
  }
}
