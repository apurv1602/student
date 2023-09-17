import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:student/src/features/authentication/model/user_model.dart';
import 'package:student/src/features/core/controllers/profile_controller.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());


    return Scaffold(
      appBar: AppBar(
          leading: IconButton(onPressed: ()=> Get.back(), icon: const Icon(LineAwesomeIcons.angle_left),),
          title: Text(tEditProfile,style: Theme.of(context).textTheme.displaySmall,),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
      ),

      body: SingleChildScrollView(
        child: Container(
          padding:  const EdgeInsets.all(tDefaultSize),


          child:  FutureBuilder(
            future: controller.getUserData(),
            //future: controller.getAllUser()
            builder: (context, snapshot){
              if(snapshot.connectionState == ConnectionState.done){
                if(snapshot.hasData){
                  UserModel user = snapshot.data as UserModel;

                  final id = TextEditingController(text: user.id);
                  final email = TextEditingController(text: user.email);
                  final fullName= TextEditingController(text: user.fullName);
                  final phoneNo= TextEditingController(text: user.phoneNo);
                  final password = TextEditingController(text: user.password);


                  return Column(
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


                            //edit icon
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: tPrimaryColor),
                                child:const Icon(
                                    LineAwesomeIcons.camera,
                                    color: Colors.black,
                                    size: 20
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 50,),
                        Form(
                            child: Column(
                              children: [
                                TextFormField(
                                  controller: fullName,
                                  decoration: const InputDecoration(
                                      label: Text(tFullName), prefixIcon: Icon(LineAwesomeIcons.user)),
                                ),
                                const SizedBox(height: tFormHeight - 20),
                                TextFormField(
                                  controller: email,

                                  decoration: const InputDecoration(label: Text(tEmail), prefixIcon: Icon(LineAwesomeIcons.envelope)),
                                ),
                                const SizedBox(height: tFormHeight - 20),
                                TextFormField(
                                  controller: phoneNo,

                                  decoration: const InputDecoration(label: Text(tPhoneNo), prefixIcon: Icon(LineAwesomeIcons.phone)),
                                ),
                                const SizedBox(height: tFormHeight - 20),
                                TextFormField(
                                  controller: password,

                                  decoration:  InputDecoration(
                                      label: const Text(tPassword),
                                      prefixIcon: const Icon(Icons.fingerprint),
                                    suffixIcon: IconButton(icon: const Icon(LineAwesomeIcons.eye_slash),onPressed: (){})
                                  ),
                                )
                              ],
                            )
                        ),
                        const SizedBox(height: tFormHeight,),
                        //button
                        SizedBox(
                          width: 200,
                          child: ElevatedButton(
                            onPressed: () async {
                              final user= UserModel(
                                  id: id.text,
                                  fullName: fullName.text.trim(),
                                  email: email.text.trim(),
                                  phoneNo: phoneNo.text.trim(),
                                  password: password.text.trim()
                              );

                              await controller.updateRecord(user);
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: tPrimaryColor,
                                side: BorderSide.none,
                                shape: const StadiumBorder()
                            ),
                            child: const Text(
                              tEditProfile,style: TextStyle(color: tDarkColor),
                            ),
                          ),
                        ),
                        const SizedBox(height: tFormHeight,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text.rich(
                                TextSpan(
                                    text: tJoined,
                                    style: TextStyle(fontSize: 12),
                                    children: [
                                      TextSpan(text: tJoinedAt,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12))
                                    ]
                                )
                            ),

                            ElevatedButton(
                                onPressed: (){},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.redAccent.withOpacity(0.1),
                                  elevation: 0,
                                  foregroundColor: Colors.red,
                                  shape: const StadiumBorder(),
                                  side: BorderSide.none,
                                ),
                                child: const Text(tDelete)
                            )
                          ],
                        )
                      ]
                  );
                }else if(snapshot.hasError){
                  return Center(child: Text(snapshot.error.toString()),);
                }else{
                  return const Center(child: Text("something went wrong"),);
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
