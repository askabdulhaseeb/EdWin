import 'dart:math' as math;
import 'package:edwin/utilities/app_images.dart';
import 'package:edwin/widgets/home/home_video_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/home/home_text_toggle_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController pageController;
  int selected = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  final List<String> urls = [
    AppImages.demmyVideoURL,
    AppImages.demmyVideoURL,
    AppImages.demmyVideoURL,
    AppImages.demmyVideoURL,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Image.asset(AppImages.plus),
        ),
        title: SizedBox(height: 44, child: Image.asset(AppImages.logo)),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.search,
              color: Theme.of(context).primaryColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SizedBox(
              height: 44,
              child: Image.asset(AppImages.chatCall),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          PageView(
            scrollDirection: Axis.vertical,
            controller: pageController,
            children: urls
                .map((e) => HomeVideoWidget(
                      url: e,
                      pageController: pageController,
                    ))
                .toList(),
          ),
          Positioned(
            left: 10,
            top: 16,
            child: IconButton(
              onPressed: () {
                // TODO: on Live
              },
              icon: Icon(
                Icons.live_tv_rounded,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          Positioned(
            left: -108,
            top: MediaQuery.of(context).size.width / 2.2,
            child: Transform.rotate(
              angle: -math.pi / 2.0,
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(32),
                ),
                child:
                    StatefulBuilder(builder: (BuildContext context, setState) {
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      HomeTextToggleButton(
                        'Recommended',
                        isSelected: selected == 0,
                        onTap: () => setState(() {
                          selected = 0;
                        }),
                      ),
                      const SizedBox(width: 8),
                      HomeTextToggleButton(
                        'Followers',
                        isSelected: selected != 0,
                        onTap: () => setState(() {
                          selected = 1;
                        }),
                      ),
                    ],
                  );
                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
