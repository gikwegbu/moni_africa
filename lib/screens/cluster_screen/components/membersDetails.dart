import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'CustomTabContainer.dart';

class membersSliverAdapter extends StatelessWidget {
  const membersSliverAdapter({
    Key? key,
    required this.overDueLoans,
    required this.dueLoans,
    required this.activeLoans,
    required this.inActiveLoans,
  }) : super(key: key);

  final List<Map<String, dynamic>> overDueLoans;
  final List<Map<String, dynamic>> dueLoans;
  final List<Map<String, dynamic>> activeLoans;
  final List<Map<String, dynamic>> inActiveLoans;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildTabBarItems(
            title: 'Overdue Loans',
            type: 'overDue',
            data: overDueLoans,
          ),
          BuildTabBarItems(
            title: 'Due Loans',
            type: 'due',
            data: dueLoans,
          ),
          BuildTabBarItems(
            title: 'Active Loans',
            type: 'active',
            data: activeLoans,
          ),
          BuildTabBarItems(
            title: 'Inactive Loans',
            type: 'inActive',
            data: inActiveLoans,
          ),
        ],
      ),
    );
  }
}
