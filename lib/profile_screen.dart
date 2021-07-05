import 'package:flutter/material.dart';

import 'widgets/custom_app_bar.dart';
import 'widgets/info_card.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<String> tabs = ['Media', 'Files', 'Links', 'Voice'];
  int activeIndex = 0;
  ScrollController mediaScrollController = ScrollController();

  @override
  void initState() {
    mediaScrollController.addListener(() {
      print(mediaScrollController.offset);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        CustomAppBar(),
        SliverList(
          delegate: SliverChildListDelegate([
            Divider(
              height: 1,
              thickness: 1,
            ),
            InfoCard(),
            Container(
              height: 10,
              color: Colors.grey[200],
            ),
            Container(
              height: 35,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: tabs.length,
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    setState(() {
                      activeIndex = index;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.only(top: 10, bottom: 5),
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: activeIndex == index
                            ? BorderSide(
                                color: Colors.blue,
                                width: 3,
                              )
                            : BorderSide.none,
                      ),
                    ),
                    child: Text(
                      tabs[index],
                      style: TextStyle(
                          color: activeIndex == index
                              ? Colors.blue
                              : Colors.black45,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ),
            GridView.builder(
                padding: const EdgeInsets.all(2),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, crossAxisSpacing: 2, mainAxisSpacing: 2),
                itemCount: 12,
                itemBuilder: (context, index) => Container(
                      color: Colors.grey,
                    )),
            Container(
              height: 1000,
            ),
          ]),
        ),
      ],
    ));
  }
}
