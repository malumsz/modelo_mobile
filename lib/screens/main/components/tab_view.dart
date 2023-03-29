import 'package:flutter/material.dart';


class TabView extends StatelessWidget {

  final TabController tabController;

  TabView({
    required this.tabController,
  });

  @override
  Widget build(BuildContext context) {
    return TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: tabController,
        children: <Widget>[
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                    margin: EdgeInsets.all(8.0),
                    height: MediaQuery.of(context).size.height / 9,
                    width: MediaQuery.of(context).size.width,
                    ),
                SizedBox(
                  height: 16.0,
                ),
                
              ],
            ),
          ),
          Column(children: <Widget>[
            SizedBox(
              height: 16.0,
            ),
            
          ]),
          Column(children: <Widget>[
            SizedBox(
              height: 16.0,
            ),
            
          ]),
          Column(children: <Widget>[
            SizedBox(
              height: 16.0,
            ),
            
          ]),
          Column(children: <Widget>[
            SizedBox(
              height: 16.0,
            ),
            
          ]),
        ]);
  }
}
