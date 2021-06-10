import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_monkey/constants.dart';
import 'package:meal_monkey/reusable_widget.dart';
import 'package:meal_monkey/screens/Menu/widgets.dart';
import '../home_page/search_bar.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}
class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(32),
            child: Column(
              children: [
                BuildCartRow(showBackArrow: false, title: 'Menu'),
                smallSizedBox,
                Row(
                  children: [_buildSearch()],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  buildBackGroundOrangeContainer(),
                  Positioned(
                    top: 40,
                    child: Padding(
                      padding: EdgeInsets.only(left: 32.0),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(context, '/food');
                            },
                            child: Row(
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    buildFoodRow(
                                        title: 'Food', items: '120 items'),
                                    buildCircularImage(),
                                    buildForwardArrow(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(context, '/beverages');
                            },
                            child: Row(
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    buildFoodRow(
                                        title: 'Beverages', items: '220 items'),
                                    buildSquareImage(),
                                    buildForwardArrow(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(context, '/desserts');
                            },
                            child: Row(
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    buildFoodRow(
                                        title: 'Desserts', items: '155 items'),
                                    buildTriangleImage(),
                                    buildForwardArrow(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(context, '/promotions');
                            },
                            child: Row(
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    buildFoodRow(
                                        title: 'Promotions', items: '25 items'),
                                    buildRotatedSquareImage(),
                                    buildForwardArrow(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    ));
  }

  Widget _buildSearch() => SearchWidget(
        text: 'query',
        hintText: 'Search Food',
        //onChanged:(){},
        //searchFood,
      );
}
