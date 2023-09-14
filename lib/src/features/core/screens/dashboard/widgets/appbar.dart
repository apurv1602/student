import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student/src/features/core/screens/profile/profile_screen.dart';
import 'package:student/src/repository/authentication_repository/authentication_repository.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/image_strings.dart';
import '../../../../../constants/text_strings.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DashboardAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.menu,),
      title: Text(tAppName,style: Theme.of(context).textTheme.titleLarge,),
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20,top: 7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),color: tCardBgColor,
          ),child: Center(child: IconButton(onPressed: (){
              Get.to(()=>const ProfileScreen());
             },icon: const Image(image: AssetImage(tUserProfileImage),),)),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(55);
}
