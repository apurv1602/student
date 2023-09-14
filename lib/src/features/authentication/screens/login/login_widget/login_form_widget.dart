import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:student/src/features/authentication/controllers/login_controller.dart';
import 'package:student/src/features/core/screens/dashboard/dashboard.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import '../../forget_password/forget_password_options/forget_password_model_bottom_sheet.dart';



class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller= Get.put(LoginController());
    final _formkey=GlobalKey<FormState>();

    return Form(
      key: _formkey,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: tFormHeight-10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               TextFormField(
                 controller: controller.email,
              //  validator: Helper.validateEmail,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  labelText: tEmail,
                  hintText: tEmail,
                  border: OutlineInputBorder(),
                ),

              ),
              const SizedBox(height: tFormHeight-20,),

              TextFormField(
                    controller: controller.password,
                    validator: (value) {
                      if (value!.isEmpty) return 'Enter your password';
                      return null;
                    },
                  //  obscureText: controller.showPassword.value ? false : true,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.fingerprint),
                      labelText: tPassword,
                      hintText: tPassword,
                      /*  suffixIcon: IconButton(

                        icon: controller.showPassword.value

                            ? const Icon(LineAwesomeIcons.eye)
                            : const Icon(LineAwesomeIcons.eye_slash),
                        onPressed: () => controller.showPassword.value = !controller.showPassword.value,
                      ),*/
                    ),
                  ),

              const SizedBox(height: tDefaultSize-20,),
              Align(
                 alignment: Alignment.centerRight,
                  child: TextButton(onPressed: (){
                     ForgetPasswordScreen.buildShowModalBottomSheet(context);
                  }, child: const Text(tForgetPassword,style: TextStyle(color: Colors.blue)))
          ),
              const SizedBox(height: tDefaultSize-20,),


              SizedBox(
                  width: double.infinity,

                  child: ElevatedButton(
                      onPressed: (){
                        controller.login();
                      }, child: Text(tLogin.toUpperCase())
              )
          ),
        ],
      ),
    )
    );
  }

}

