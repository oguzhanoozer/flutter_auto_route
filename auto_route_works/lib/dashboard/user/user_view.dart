import 'package:auto_route/auto_route.dart';
import 'package:auto_route_works/dashboard/user/model/user_model.dart';
import 'package:auto_route_works/product/navigator/app_router.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class UserView extends StatefulWidget {
  const UserView({super.key});

  @override
  State<UserView> createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(''.customProfileImage),
        ),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => TextButton(
                onPressed: (() => context.router.navigate(UserDetailRoute(
                    userModel: UserModel(
                        ''.randomSquareImage, ''.customProfileImage)))),
                child: Card(
                  child: index.isEven
                      ? Image.network(''.randomSquareImage)
                      : Image.network(''.randomImage),
                ),
              )),
    );
  }
}
