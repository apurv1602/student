import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import '../forget_password_mail/forgot_password_mail.dart';
import '../forget_password_phone/forget_password_phone.dart';
import 'forgot_password_btn_widget.dart';

class ForgetPasswordScreen{
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context) => Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(tForgetPasswordTitle,style: Theme.of(context).textTheme.displaySmall,),
            Text(tForgetPasswordSubTitle,style: Theme.of(context).textTheme.bodyMedium,),
            const SizedBox(height: 30,),
            ForgerPasswordBtnWidget(
              btnIcon: Icons.mail_outline_outlined,
              title: tEmail,
              subtitle: tResetViaEMail,
              onTap: (){
                Navigator.pop(context);
                Get.to(()=>const ForgotPasswordMailScreen());
              },
            ),
            const SizedBox(height: 20.0,),
            ForgerPasswordBtnWidget(
              btnIcon: Icons.mobile_friendly_outlined,
              title: tPhoneNo,
              subtitle: tResetViaPhone,
              onTap: (){
                Get.to(()=>const ForgotPasswordPhoneScreen());
              },
            )
          ],
        ),
      ),);
  }

}