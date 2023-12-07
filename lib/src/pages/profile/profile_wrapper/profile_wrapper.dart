import 'package:eduman_flutter/src/pages/profile/profile_wrapper/profile_account_details.dart';
import 'package:eduman_flutter/src/pages/profile/profile_wrapper/profile_header.dart';
import 'package:eduman_flutter/src/pages/profile/profile_wrapper/profile_hero.dart';
import 'package:flutter/material.dart';

class ProfileWrapper extends StatelessWidget {
  const ProfileWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        //   Profile Header
        ProfileHeader(),
        //   Pforile Hero
        ProfileHero(),
        //   Profile Account Details
        ProfileAccountDetails()
      ],
    );
  }
}
