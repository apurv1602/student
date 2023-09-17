import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:student/src/constants/colors.dart';
import 'package:student/src/constants/image_strings.dart';
import 'package:student/src/constants/sizes.dart';
import 'package:student/src/constants/text_strings.dart';
import 'package:student/src/features/core/screens/profile/update_profile_screen.dart';
import 'package:student/src/features/core/screens/profile/widgets/profile_menu.dart';

import '../../../../repository/authentication_repository/authentication_repository.dart';
import '../../../authentication/model/user_model.dart';
import '../../controllers/profile_controller.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());

    var isDark = MediaQuery.of(context).platformBrightness==Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: ()=> Get.back(), icon: const Icon(LineAwesomeIcons.angle_left),
        ),
        title: Text(tProfile,style: Theme.of(context).textTheme.displaySmall,),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(isDark? LineAwesomeIcons.sun: LineAwesomeIcons.moon))
        ],
      ),
      body:

      SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child:


          FutureBuilder(
            future: controller.getUserData(),
            //future: controller.getAllUser()
            builder: (context, snapshot){
              if(snapshot.connectionState == ConnectionState.done){
                if(snapshot.hasData){
                  UserModel user = snapshot.data as UserModel;

                  return  Column(
                    children: [

                      // profile picture
                      Stack(
                        children: [
                          SizedBox(
                            height: 120,
                            width: 120,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: const Image(image: AssetImage(tProfileImage)),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: tPrimaryColor),
                              child:const Icon(
                                LineAwesomeIcons.alternate_pencil,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          )
                        ],
                      ),

                      const SizedBox(height: 10,),
                      Text(user.fullName,style: Theme.of(context).textTheme.headlineSmall,),
                      Text(user.email,style: Theme.of(context).textTheme.bodyMedium,),
                      const SizedBox(height: 20,),


                      //edit profile
                      SizedBox(
                        width: 200,
                        child: ElevatedButton(
                          onPressed: (){
                            Get.to(()=> const UpdateProfileScreen());
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: tPrimaryColor, side: BorderSide.none, shape: const StadiumBorder()
                          ),
                          child: const Text(tEditProfile, style: TextStyle(color: tDarkColor),),
                        ),
                      ),

                      const SizedBox(height: 30,),

                      const Divider(),

                      const SizedBox(height: 10,),

                      //menu

                      ProfileMenuWidget(title: 'Setting', icon: LineAwesomeIcons.cog, onPress: () { },),
                      ProfileMenuWidget(title: 'Billing Detail', icon: LineAwesomeIcons.wallet, onPress: () { },),
                      ProfileMenuWidget(title: 'User Management', icon: LineAwesomeIcons.user_check, onPress: () { },),
                      const Divider(),
                      const SizedBox(height: 10,),

                      ProfileMenuWidget(title: 'Information', icon: LineAwesomeIcons.info, onPress: () { },),
                      ProfileMenuWidget(
                        title: 'Logout',
                        icon: LineAwesomeIcons.alternate_sign_out,
                        textColor: Colors.red,
                        endIcon: false,
                        onPress: () {
                          AuthenticationRepository.instance.logout();
                        },
                      ),
                    ],
                  );
                }else{
                  return const Center(child: Text("something went wrong"));
                }
              }else{
                return const Center(child: CircularProgressIndicator(),);
              }


            },
          ),
        ),
      ),
    );


  }
}


