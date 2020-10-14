import 'package:flutter/material.dart';

class UserProfileBinding extends InheritedWidget{
  UserProfileBinding({
    Key key,
    this.userProfile,
    Widget child,
  }) : assert(userProfile != null), super(key: key, child:child);

  final userProfile;

  @override
  bool updateShouldNotify(UserProfileBinding oldWidget) => userProfile != oldWidget.userProfile;

}

class UserProfile{
  final int id;
  String username;
  String name;
  String title;

  String profileImageKey;
  bool usingAppImage;

  //UserConfig config;
  //Projects[] ProjectList;

  UserProfile(this.id, this.username, this.name, this.title, this.profileImageKey){
    this.profileImageKey == "Firebase" ? usingAppImage = false : usingAppImage = true;
  }

  @override
  String toString() => 'UserProfile: $username:$name:$title';

}