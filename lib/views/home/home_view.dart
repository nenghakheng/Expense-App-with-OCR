import 'package:expense_app_with_ocr/views/expense/expense_view.dart';
import 'package:expense_app_with_ocr/views/goal/goal_view.dart';
import 'package:expense_app_with_ocr/views/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeBloc homeBloc = HomeBloc();
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listenWhen: (previous, current) => current is HomeActionState,
      buildWhen: (previous, current) => current is! HomeActionState,
      listener: (context, state) {
        if (state is HomeNavigateToExpenseDetailActionState) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ExpenseView(),
            ),
          );
        } else if (state is HomeNavigateToGoalsActionState) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GoalView(),
            ),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: buildAppbar(homeBloc),
          body: buildBody(),
        );
      },
    );
  }

  PreferredSizeWidget buildAppbar(HomeBloc homeBloc) {
    return AppBar(
      title: const Text("Home"),
      actions: [
        IconButton(
          onPressed: () {
            homeBloc.add(HomeNavigateToExpenseDetailEvent());
          },
          icon: const Icon(
            Icons.add,
          ),
        ),
        IconButton(
          onPressed: () {
            homeBloc.add(HomeNavigateToGoalsEvent());
          },
          icon: const Icon(
            Icons.delete,
          ),
        ),
      ],
    );
  }

  Widget buildBody() {
    return Column();
  }
}
