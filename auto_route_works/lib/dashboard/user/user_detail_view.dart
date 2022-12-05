import 'package:auto_route/auto_route.dart';
import 'package:auto_route_works/dashboard/user/model/user_model.dart';
import 'package:flutter/material.dart';

class UserDetailView extends StatefulWidget {
  const UserDetailView({super.key, required this.userModel});
  final UserModel userModel;

  @override
  State<UserDetailView> createState() => _UserDetailViewState();
}

class _UserDetailViewState extends State<UserDetailView>
    with AutoRouteAwareStateMixin {
  late UserModel _userModel;

  @override
  void didUpdateWidget(covariant UserDetailView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.userModel != oldWidget.userModel) {
      _updateModel();
    }
  }

  @override
  void initState() {
    super.initState();
    _userModel = widget.userModel;
  }

  void _updateModel() {
    setState(() {
      _userModel = widget.userModel;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.network(_userModel.avatarUrl),
      ),
      body: Text(_userModel.imageUrl),
    );
  }
}
