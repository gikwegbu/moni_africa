import 'package:flutter/material.dart';

import '../../../size_config.dart';

class ClusterDetailsSliverAdapter extends StatelessWidget {
  const ClusterDetailsSliverAdapter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildCardTitle(
                  title: 'Cluter purse setting',
                  icon: 'assets/icons/badge-naira.png',
                ),
                SizedBox(height: getProportionateScreenWidth(16)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: 'Frequency of contribution\n',
                        style: TextStyle(
                          height: getProportionateScreenWidth(1.3),
                          color: const Color(0xFF303437),
                          fontSize: getProportionateScreenWidth(14),
                          fontWeight: FontWeight.w400,
                        ),
                        children: [
                          TextSpan(
                            text: 'Monthly upfront',
                            style: TextStyle(
                              color: const Color(0xFF202325),
                              fontSize: getProportionateScreenWidth(16),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: getProportionateScreenWidth(8)),
                    _buildCardButton(title: 'Change', press: () {}),
                  ],
                ),
                SizedBox(height: getProportionateScreenWidth(15)),
                Text(
                  '₦550,000,000',
                  style: TextStyle(
                    color: const Color(0xFF202325),
                    fontSize: getProportionateScreenWidth(16),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: getProportionateScreenWidth(5)),
                Text(
                  'Your contribution is 8% of your eligible amount ',
                  style: TextStyle(
                    color: const Color(0xFF979C9E),
                    fontSize: getProportionateScreenWidth(16),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          const Divider(
            color: Color(0xFF72777A),
            height: 5,
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildCardTitle(
                  title: 'Group invite Link/Code',
                  icon: 'assets/icons/link.png',
                ),
                SizedBox(height: getProportionateScreenWidth(15)),
                Text(
                  'Use the link or code below to invite new member',
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(14),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: getProportionateScreenWidth(15)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: 'Member invite code\n',
                        style: TextStyle(
                          height: getProportionateScreenWidth(1.3),
                          color: const Color(0xFF303437),
                          fontSize: getProportionateScreenWidth(14),
                          fontWeight: FontWeight.w400,
                        ),
                        children: [
                          TextSpan(
                            text: '30DF38TG000',
                            style: TextStyle(
                              color: const Color(0xFF202325),
                              fontSize: getProportionateScreenWidth(16),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: getProportionateScreenWidth(8)),
                    _buildCardButton(title: 'Get new code', press: () {}),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          const Divider(
            color: Color(0xFF72777A),
            height: 5,
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildCardTitle(
                  title: 'Loan setting',
                  icon: 'assets/icons/list.png',
                ),
                SizedBox(height: getProportionateScreenWidth(15)),
                Text.rich(
                  TextSpan(
                    text: 'Total loan collected by cluster\n',
                    style: TextStyle(
                      height: getProportionateScreenWidth(1.3),
                      color: const Color(0xFF303437),
                      fontSize: getProportionateScreenWidth(14),
                      fontWeight: FontWeight.w400,
                    ),
                    children: [
                      TextSpan(
                        text: '₦550,000,000',
                        style: TextStyle(
                          color: const Color(0xFF202325),
                          fontSize: getProportionateScreenWidth(16),
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: getProportionateScreenWidth(15)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: 'Repayment Day\n',
                        style: TextStyle(
                          height: getProportionateScreenWidth(1.3),
                          color: const Color(0xFF303437),
                          fontSize: getProportionateScreenWidth(14),
                          fontWeight: FontWeight.w400,
                        ),
                        children: [
                          TextSpan(
                            text: 'Every Monday',
                            style: TextStyle(
                              color: const Color(0xFF202325),
                              fontSize: getProportionateScreenWidth(16),
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: getProportionateScreenWidth(8)),
                    _buildCardButton(title: 'Change', press: () {}),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          const Divider(
            color: Color(0xFF72777A),
            height: 5,
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildCardTitle(
                  title: 'Pending Join Request',
                  icon: 'assets/icons/list.png',
                ),
                SizedBox(height: getProportionateScreenWidth(15)),
                Text(
                  'No pending cluster join request',
                  style: TextStyle(
                    color: const Color(0xFF72777A),
                    fontWeight: FontWeight.w400,
                    fontSize: getProportionateScreenWidth(14),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          const Divider(
            color: Color(0xFF72777A),
            height: 5,
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildCardTitle(
                  title: 'Group Settings',
                  icon: 'assets/icons/setting.png',
                ),
                SizedBox(height: getProportionateScreenWidth(15)),
                Text(
                  'Group rules',
                  style: TextStyle(
                    color: const Color(0xFF202325),
                    fontWeight: FontWeight.w400,
                    fontSize: getProportionateScreenWidth(16),
                  ),
                ),
                _buildListText(
                  title: '1.',
                  content:
                      'Check the car’s rental terms as well, because each company has its own rules.',
                ),
                SizedBox(height: getProportionateScreenWidth(3)),
                _buildListText(
                  title: '2.',
                  content:
                      'Check the car’s rental terms as well, because each company has its own rules.',
                ),
                SizedBox(height: getProportionateScreenWidth(16)),
                Text('Group Whatsapp'),
                SizedBox(height: getProportionateScreenWidth(8)),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'https://chat.whatsapp.com/BmK1mYu9zGAGhhqi8xqQQ5',
                    style: TextStyle(
                      color: const Color(0xFF198155),
                      fontWeight: FontWeight.w400,
                      fontSize: getProportionateScreenWidth(13),
                    ),
                  ),
                ),
                SizedBox(height: getProportionateScreenWidth(8)),
                _buildCardBottomButton(
                  title: 'Edit Settings',
                  icon: 'assets/icons/edit.png',
                ),
              ],
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          const Divider(
            color: Color(0xFF72777A),
            height: 5,
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildCardTitle(
                  title: 'Benefits earned',
                  icon: 'assets/icons/money-bill-wave.png',
                ),
                SizedBox(height: getProportionateScreenWidth(15)),
                Text.rich(
                  TextSpan(
                    text: 'Total CH benefits earned\n',
                    style: TextStyle(
                      height: getProportionateScreenWidth(1.3),
                      color: const Color(0xFF303437),
                      fontSize: getProportionateScreenWidth(14),
                      fontWeight: FontWeight.w400,
                    ),
                    children: [
                      TextSpan(
                        text: '₦550,000,000',
                        style: TextStyle(
                          color: const Color(0xFF202325),
                          fontSize: getProportionateScreenWidth(16),
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: getProportionateScreenWidth(15)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: 'Available Benefits\n',
                        style: TextStyle(
                          height: getProportionateScreenWidth(1.3),
                          color: const Color(0xFF303437),
                          fontSize: getProportionateScreenWidth(14),
                          fontWeight: FontWeight.w400,
                        ),
                        children: [
                          TextSpan(
                            text: '₦550,000,000',
                            style: TextStyle(
                              color: const Color(0xFF202325),
                              fontSize: getProportionateScreenWidth(16),
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: getProportionateScreenWidth(8)),
                    Text(
                      '+₦5000 today',
                      style: TextStyle(
                        color: const Color(0xFF23C16B),
                        fontSize: getProportionateScreenWidth(13.16),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                _buildCardBottomButton(
                  title: 'View earning history',
                  icon: 'assets/icons/remove-red-eye.png',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TextButton _buildCardBottomButton({icon, title}) {
    return TextButton(
      onPressed: () {},
      child: Row(
        children: [
          Image.asset(icon),
          SizedBox(width: getProportionateScreenWidth(8)),
          Text(
            title,
            style: TextStyle(
              color: const Color(0xFFE66652),
              fontWeight: FontWeight.w400,
              fontSize: getProportionateScreenWidth(12),
            ),
          ),
        ],
      ),
    );
  }

  Row _buildListText({title, content}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: const Color(0xFF404446),
            fontSize: getProportionateScreenWidth(14),
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(width: getProportionateScreenWidth(4)),
        Expanded(
          child: Text(
            content,
            style: TextStyle(
              color: const Color(0xFF404446),
              fontSize: getProportionateScreenWidth(14),
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }

  TextButton _buildCardButton({title, press}) {
    return TextButton(
      onPressed: () {
        press();
      },
      child: Text(
        title,
        style: TextStyle(
          color: const Color(0xFFE66652),
          fontSize: getProportionateScreenWidth(13.16),
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  Row _buildCardTitle({title, icon}) {
    return Row(
      children: [
        Image.asset(icon),
        SizedBox(width: getProportionateScreenWidth(8)),
        Text(
          title,
          style: TextStyle(
            color: const Color(0xFF202325),
            fontSize: getProportionateScreenWidth(14),
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
