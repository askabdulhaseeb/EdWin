import 'package:edwin/utilities/app_images.dart';
import 'package:edwin/utilities/utilities.dart';
import 'package:edwin/widgets/home/home_video_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController pageController;

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
        leading: SizedBox(
          height: 44,
          width: 44,
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
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: pageController,
        children: urls
            .map((e) => HomeVideoWidget(
                  url: e,
                  pageController: pageController,
                ))
            .toList(),
      ),
    );
  }
}
