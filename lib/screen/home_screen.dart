import 'package:awesome_doctor_ui/constants.dart';
import 'package:awesome_doctor_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../data/data.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/doctors_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: getRelativeHeight(0.025),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getRelativeWidth(0.04),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi Hosain",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: getRelativeWidth(0.09),
                          ),
                        ),
                        SizedBox(height: getRelativeHeight(0.003)),
                        Text(
                          "Find a Doctor & specialist easily",
                          style: TextStyle(
                            color: Colors.blueGrey[400],
                            fontSize: getRelativeWidth(0.036),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: getRelativeHeight(0.06),
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 3,
                            offset: Offset(0, 4),
                            color: Colors.black54,
                          ),
                        ],
                        color: const Color(0xFFA295FD),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset("images/person.png")),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 0.015),
              Stack(
                children: [
                  SizedBox(
                    width: getRelativeHeight(0.94),
                    height: getRelativeHeight(0.22),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: getRelativeWidth(0.88),
                          height: getRelativeHeight(0.17),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 40,
                                offset: Offset(0, 15),
                                color: kPrimaryDarkColor,
                              )
                            ],
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xFF77E2FE),
                                Color(0xFF46BDFA),
                              ],
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: getRelativeWidth(0.03),
                            ),
                            child: SizedBox(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Positioned(
                                        left: 1,
                                        top: 2,
                                        child: Icon(
                                          Icons.favorite,
                                          color: Colors.black54,
                                          size: getRelativeHeight(0.1),
                                        ),
                                      ),
                                      Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                        size: getRelativeHeight(0.1),
                                      ),
                                      Icon(
                                        Icons.healing,
                                        color: Colors.white,
                                        size: getRelativeHeight(0.05),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: getRelativeHeight(0.12)),
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Check up COVID-19 ",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: getRelativeWidth(0.055),
                                          ),
                                        ),
                                        SizedBox(
                                            height: getRelativeHeight(0.02)),
                                        Row(
                                          children: [
                                            Flexible(
                                              child: Text(
                                                "Contains several list of questions to check your physical condition.",
                                                style: TextStyle(
                                                  color: Colors.white
                                                      .withOpacity(0.85),
                                                  fontSize:
                                                      getRelativeWidth(0.033),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                                height: getRelativeWidth(0.03)),
                                            Container(
                                              padding: EdgeInsets.all(
                                                  getRelativeWidth(0.012)),
                                              decoration: BoxDecoration(
                                                color: Colors.white
                                                    .withOpacity(0.2),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: Icon(
                                                Icons.arrow_forward_ios,
                                                color: Colors.white,
                                                size: getRelativeWidth(0.038),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                        height: getRelativeHeight(0.12),
                        width: getRelativeWidth(0.12),
                        child: Image.asset("images/virus.png"),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: getRelativeHeight(0.035),
                          horizontal: getRelativeWidth(0.2),
                        ),
                        child: SizedBox(
                          height: getRelativeWidth(0.06),
                          width: getRelativeWidth(0.06),
                          child: Image.asset("images/virus.png"),
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: getRelativeHeight(0.01),
                          horizontal: getRelativeWidth(0.07),
                        ),
                        child: SizedBox(
                          height: getRelativeWidth(0.08),
                          width: getRelativeWidth(0.08),
                          child: Image.asset("images/virus.png"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: getRelativeHeight(0.005)),
              SizedBox(
                width: getRelativeWidth(0.88),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: getRelativeHeight(0.02),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Search",
                      hintStyle: TextStyle(
                        fontSize: getRelativeWidth(0.046),
                        color: Colors.blueGrey.withOpacity(0.9),
                      ),
                      prefixIcon: Icon(
                        LineIcons.search,
                        color: Colors.blueGrey.withOpacity(0.9),
                        size: getRelativeWidth(0.065),
                      ),
                      suffixIcon: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: getRelativeWidth(0.02),
                        ),
                        child: Container(
                          width: getRelativeWidth(0.24),
                          height: getRelativeHeight(0.01),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xFFFBA473),
                                Color(0xFFFA7A30),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: getRelativeWidth(0.025),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Flter",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: getRelativeWidth(0.04),
                                  ),
                                ),
                                Icon(
                                  Icons.filter_list,
                                  color: Colors.white,
                                  size: getRelativeWidth(0.055),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: getRelativeHeight(0.025)),
              SizedBox(
                height: getRelativeHeight(0.085),
                child: ListView.builder(
                  itemCount: Data.catagoriesList.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(
                    horizontal: getRelativeWidth(0.034),
                  ),
                  itemBuilder: (context, index) {
                    final category = Data.catagoriesList[index];
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: getRelativeHeight(0.1),
                          constraints: BoxConstraints(
                            minWidth: getRelativeWidth(0.41),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: getRelativeWidth(0.03),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(
                                    getRelativeWidth(0.025),
                                  ),
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        kCatagoriesPrimaryColor[index],
                                        kCatagoriesSecondaryColor[index],
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Icon(
                                    category.icon,
                                    color: Colors.white,
                                    size: getRelativeWidth(0.075),
                                  ),
                                ),
                                SizedBox(width: getRelativeWidth(0.02)),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      category.title,
                                      style: TextStyle(
                                        fontSize: getRelativeWidth(0.038),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: getRelativeHeight(0.05)),
                                    Text(
                                      "${category.doctorsNumber} doctors",
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(0.48),
                                        fontSize: getRelativeWidth(0.03),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: getRelativeWidth(0.04)),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(height: getRelativeHeight(0.01)),
              const DoctorsList(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(
        selectedIndex: _selectedIndex,
        onItemPressed: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        centerIcon: Icons.place,
        itemsIcon: const [
          Icons.home,
          Icons.notifications,
          Icons.message,
          Icons.account_box,
        ],
      ),
    );
  }
}
