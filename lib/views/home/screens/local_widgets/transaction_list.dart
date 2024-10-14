import 'package:expense_app_with_ocr/data/expense_data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  TransactionList({super.key});

  final expenses = transactionsData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, int i) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Color(0xFF00B2E7).withOpacity(0.2),
                                shape: BoxShape.circle),
                          ),
                          Image.asset(
                            'assets/food.png',
                            scale: 2,
                            color: Colors.white,
                          )
                        ],
                      ),
                      const SizedBox(width: 12),
                      Text(
                        'GYM Membership',
                        style: TextStyle(
                            fontSize: 14,
                            color: Theme.of(context).colorScheme.onSurface,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "\$100.00",
                        style: TextStyle(
                            fontSize: 14,
                            color: Theme.of(context).colorScheme.onSurface,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        DateFormat('dd/MM/yyyy').format(
                          // TODO: Change this to the actual date
                          DateTime.now(),
                        ),
                        style: TextStyle(
                            fontSize: 14,
                            color: Theme.of(context).colorScheme.outline,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
