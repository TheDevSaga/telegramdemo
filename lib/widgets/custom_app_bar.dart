import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      actions: [
        Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        Spacer(),
        Icon(
          Icons.videocam,
          color: Colors.black,
        ),
        SizedBox(width: 10),
        Icon(
          Icons.call,
          color: Colors.black,
        ),
        SizedBox(width: 10),
        Icon(
          Icons.close,
          color: Colors.black,
        ),
        SizedBox(width: 10),
      ],
      flexibleSpace: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxHeight > 200) {
          return Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: Image.asset(
                    'asset/nature.jpg',
                    fit: BoxFit.cover,
                  ).image,
                  fit: BoxFit.cover),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sagar',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 28),
                ),
                Text(
                  'Last Seen Recent',
                  style: TextStyle(
                      color: Colors.white54,
                      fontWeight: FontWeight.w600,
                      fontSize: 12),
                ),
              ],
            ),
          );
        } else {
          return SafeArea(
            child: Container(
              color: Colors.white,
              height: double.infinity,
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Container(
                    height: constraints.maxHeight > 95 ? 80 : 65,
                    width: constraints.maxHeight > 95 ? 80 : 65,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: Image.asset(
                            'asset/nature.jpg',
                            fit: BoxFit.cover,
                          ).image,
                          fit: BoxFit.cover),
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sagar',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'last seen recent',
                        style: TextStyle(
                          color: Color(0xFF757575),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        }
      }),
      expandedHeight: 400,
    );
  }
}
