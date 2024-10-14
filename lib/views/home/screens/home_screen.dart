import 'package:expense_app_with_ocr/views/home/screens/local_widgets/balance_card.dart';
import 'package:expense_app_with_ocr/views/home/screens/local_widgets/profile_section.dart';
import 'package:expense_app_with_ocr/views/home/screens/local_widgets/transaction_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
        child: Column(
          children: [
            const ProfileSection(),
            const SizedBox(height: 20),
            const BalanceCard(),
            const SizedBox(height: 40),
            buildTransactionHeader(context),
            const SizedBox(height: 20),
            Expanded(
              child: TransactionList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTransactionHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transactions',
          style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.onSurface,
              fontWeight: FontWeight.bold),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            'View All',
            style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).colorScheme.outline,
                fontWeight: FontWeight.w400),
          ),
        )
      ],
    );
  }
}
