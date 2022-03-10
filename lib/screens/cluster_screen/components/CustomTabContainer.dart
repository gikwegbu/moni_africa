import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../size_config.dart';
import 'imageContainer.dart';

class BuildTabBarItems extends StatelessWidget {
  BuildTabBarItems({
    required final this.title,
    required final this.type,
    required final this.data,
    Key? key,
  }) : super(key: key);
  String title, type;
  List data;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(13.6),
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF13163E),
                ),
              ),
              Icon(
                Icons.remove,
                color: Colors.black.withOpacity(0.54),
              ),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          const Divider(
            color: Color(0xFF72777A),
            height: 5,
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Column(
            children: [
              ...List.generate(
                data.length,
                (index) => TabItemContent(
                  username: data[index]['username'],
                  date: data[index]['date'],
                  loanStatus: data[index]['loanStatus'],
                  amount: data[index]['amount'],
                  imgSrc: data[index]['image'],
                  type: type,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class TabItemContent extends StatelessWidget {
  const TabItemContent({
    Key? key,
    required this.username,
    required this.date,
    required this.loanStatus,
    required this.type,
    required this.amount,
    required this.imgSrc,
  }) : super(key: key);

  final String username, loanStatus, type, imgSrc;
  final DateTime date;
  final int amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(12),
            child: Row(
              children: [
                BuildImageContainer(
                  imgSrc: imgSrc,
                ),
                SizedBox(width: getProportionateScreenWidth(16)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          username,
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(13.6),
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF13163E),
                          ),
                        ),
                        if (type != 'inActive')
                          SizedBox(width: getProportionateScreenWidth(8)),
                        if (type != 'inActive')
                          Container(
                            height: 4,
                            width: 4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  getProportionateScreenWidth(100)),
                              color: const Color(0xFFC4C4C4),
                            ),
                          ),
                        SizedBox(width: getProportionateScreenWidth(8)),
                        if (type != 'inActive')
                          Text(
                            '${DateFormat('yMd').format(date)} days ${type != 'active' ? 'over due' : 'to due date'}',
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(12),
                              fontWeight: FontWeight.w400,
                              color: type == 'overDue'
                                  ? const Color(0xFFE41002)
                                  : type == 'due'
                                      ? const Color(0xFFA05E03)
                                      : const Color(0xFF198155),
                            ),
                          ),
                      ],
                    ),
                    SizedBox(height: getProportionateScreenWidth(8)),
                    if (type != 'inActive')
                      Text(
                        '${NumberFormat.currency(name: '₦').format(amount)} ${type != 'active' ? 'Late' : 'Active'} loan ',
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(12),
                          fontWeight: FontWeight.w700,
                          color: type == 'overDue'
                              ? const Color(0xFFE41002)
                              : type == 'due'
                                  ? const Color(0xFFA05E03)
                                  : const Color(0xFF198155),
                        ),
                      ),
                    if (type == 'inActive')
                      Text(
                        'No active loan',
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(12),
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF72777A),
                        ),
                      ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          const Divider(
            color: Color(0xFF72777A),
            height: 5,
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
        ],
      ),
    );
  }
}
