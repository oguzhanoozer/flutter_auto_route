import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../product/navigator/app_router.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _url = "https://picsum.photos/200/300";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: IconButton(
            onPressed: () {
              context.router.replace(HomeDetailRoute(url: _url));
            },
            icon: Image.network(_url)),
      ),
    );
  }
}
