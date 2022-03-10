import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../size_config.dart';
import 'components/CustomTabContainer.dart';
import 'components/chipText.dart';
import 'components/imageContainer.dart';

class ClusterScreen extends StatefulWidget {
  const ClusterScreen({Key? key}) : super(key: key);
  static String routeName = '/cluster_screen';

  @override
  State<ClusterScreen> createState() => _ClusterScreenState();
}

class _ClusterScreenState extends State<ClusterScreen> {
  String activeTab = 'members';
  List<Map<String, dynamic>> overDueLoans = [
    {
      "id": "oiewjkflksadf",
      "username": "Florence Tanika",
      "date": DateTime.now(),
      "loanStatus": "overdue",
      "amount": 128948576
    },
  ];
  List<Map<String, dynamic>> dueLoans = [
    {
      "id": "xcvghsdfwerqe",
      "username": "Tiamiyu Adzan",
      "date": DateTime.now(),
      "loanStatus": "due",
      "amount": 128948576
    },
    {
      "id": "dsfgdfwerwq",
      "username": "Eze Tarka",
      "date": DateTime.now(),
      "loanStatus": "due",
      "amount": 128948576
    },
  ];
  List<Map<String, dynamic>> activeLoans = [
    {
      "id": "olkvuoiajdja",
      "username": "Halima Yaya",
      "date": DateTime.now(),
      "loanStatus": "active",
      "amount": 128948576
    },
    {
      "id": "kvcnm,mqkjelk",
      "username": "Uche Ngozi",
      "date": DateTime.now(),
      "loanStatus": "active",
      "amount": 128948576
    },
    {
      "id": "oivjyby7eythdk",
      "username": "Anisa Lulu",
      "date": DateTime.now(),
      "loanStatus": "active",
      "amount": 128948576
    },
  ];
  List<Map<String, dynamic>> inActiveLoans = [
    {
      "id": "mczhjjdsasd",
      "username": "Rebecca Funto",
      "date": DateTime.now(),
      "loanStatus": "active",
      "amount": 128948576
    },
    {
      "id": "lokvjhuidads",
      "username": "Absko Gandhi",
      "date": DateTime.now(),
      "loanStatus": "active",
      "amount": 128948576
    },
    {
      "id": "cnhdsyuwjdsdad",
      "username": "Mensa Robert",
      "date": DateTime.now(),
      "loanStatus": "active",
      "amount": 128948576
    },
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: getProportionateScreenHeight(332),
            pinned: true,
            floating: true,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Container(
                height: 40,
                child: Row(
                  children: [
                    _buildTabBar(isActive: 'members', title: 'Members (9)'),
                    _buildTabBar(isActive: 'cluster', title: 'Cluster Details'),
                  ],
                ),
              ),
              background: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        top: getProportionateScreenHeight(50),
                        left: getProportionateScreenWidth(10),
                        right: getProportionateScreenWidth(10),
                        bottom: getProportionateScreenHeight(15),
                      ),
                      color: Colors.teal,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                              const Spacer(),
                              Text(
                                'My cluster',
                                style: TextStyle(
                                  fontSize: getProportionateScreenWidth(20),
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const Spacer()
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Moni dreambig community',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: getProportionateScreenWidth(20),
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                      height: getProportionateScreenHeight(5)),
                                  ChipText(
                                    title: 'Repayment rate: ',
                                    subtitle: '60%',
                                    subtitleColor: const Color(0xFFEAB948),
                                  ),
                                  SizedBox(
                                      height: getProportionateScreenHeight(4)),
                                  ChipText(
                                    title: 'Repayment Day: ',
                                    subtitle: 'Every Sunday',
                                    subtitleColor: const Color(0xFF7DDE86),
                                  ),
                                ],
                              ),
                              BuildImageContainer(
                                  imgSrc: 'assets/images/donjazzy.png'),
                            ],
                          ),
                          SizedBox(height: getProportionateScreenHeight(10)),
                          const Divider(
                            color: Color(0xFF72777A),
                            height: 5,
                          ),
                          SizedBox(height: getProportionateScreenHeight(10)),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Cluster purse balance',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: getProportionateScreenWidth(12),
                                    ),
                                  ),
                                  Text(
                                    '₦550,000,000',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: getProportionateScreenWidth(25),
                                    ),
                                  ),
                                  Text(
                                    '+₦550,000,000 interest today',
                                    style: TextStyle(
                                      color: const Color(0xFF7DDE86),
                                      fontWeight: FontWeight.w400,
                                      fontSize: getProportionateScreenWidth(12),
                                    ),
                                  ),
                                ],
                              ),
                              MaterialButton(
                                onPressed: () {},
                                padding: EdgeInsets.symmetric(
                                  vertical: getProportionateScreenWidth(15),
                                  horizontal: getProportionateScreenWidth(25),
                                ),
                                color: const Color(0xFFE66652),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6)),
                                child: const Text(
                                  'View Purse',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: getProportionateScreenHeight(10)),
                          const Divider(
                            color: Color(0xFF72777A),
                            height: 5,
                          ),
                          SizedBox(height: getProportionateScreenHeight(10)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total interest earned',
                                style: TextStyle(
                                  color: const Color(0xFFCDCFD0),
                                  fontSize: getProportionateScreenWidth(12),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                '₦550,000,000',
                                style: TextStyle(
                                  color: const Color(0xFFF0CC79),
                                  fontSize: getProportionateScreenWidth(12),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: getProportionateScreenHeight(10)),
                          const Divider(
                            color: Color(0xFF72777A),
                            height: 5,
                          ),
                          SizedBox(height: getProportionateScreenHeight(10)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total interest earned',
                                style: TextStyle(
                                  color: const Color(0xFFCDCFD0),
                                  fontSize: getProportionateScreenWidth(12),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                '₦550,000,000',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: getProportionateScreenWidth(12),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
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
            ),
          ),
        ],
      ),
    );
  }

  Expanded _buildTabBar({isActive, title}) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            activeTab = isActive;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 600),
          curve: Curves.fastOutSlowIn,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: const Color(0xFFFDF8ED),
            border: Border(
              bottom: BorderSide(
                width: 2,
                color: activeTab == isActive
                    ? const Color(0xFFE66652)
                    : const Color(0xFFFDF8ED),
              ),
            ),
          ),
          padding: EdgeInsets.all(getProportionateScreenWidth(2)),
          child: Text(
            title,
            style: TextStyle(
              color: activeTab == isActive
                  ? const Color(0xFFE66652)
                  : const Color(0xFFF303437),
              fontWeight:
                  activeTab == isActive ? FontWeight.w700 : FontWeight.w400,
              fontSize: getProportionateScreenWidth(14),
            ),
          ),
        ),
      ),
    );
  }
}
