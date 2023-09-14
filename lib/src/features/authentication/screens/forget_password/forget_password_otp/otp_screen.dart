import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:student/src/constants/sizes.dart';
import 'package:student/src/constants/text_strings.dart';
import 'package:student/src/features/authentication/controllers/otp_controller.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var otpController = Get.put(OTPController());
    var otp;
    return  Scaffold(
      body: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(tOtpTitle,style: GoogleFonts.montserrat(
                fontSize: 80.0,
                fontWeight: FontWeight.bold),),
            Text(tOtpSubtitle.toUpperCase(),style: Theme.of(context).textTheme.titleMedium,),
            const SizedBox(height: 40.0,),
            const Text(tOtpMessage + "apurvjagtap",textAlign: TextAlign.center,),
            const SizedBox(height: 20.0,),
            OTPTextField(
              length: 6,keyboardType: TextInputType.number,
              width: MediaQuery.of(context).size.width,
              fieldWidth: 45,
              fieldStyle: FieldStyle.box,
              outlineBorderRadius: 10,
              style: const TextStyle(fontSize: 17,),
              onCompleted: (code) {
                otp = code;
                OTPController.instance.verifyOTP(otp);
              },

              textFieldAlignment: MainAxisAlignment.spaceAround,
              //otpFieldStyle: OtpFieldStyle(focusBorderColor: tPrimaryColor),
            ),
            const SizedBox(height: 20,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {
                OTPController.instance.verifyOTP(otp);
              }, child: const Text(tNext),
            ),)
          ],
        ),
      ),
    );
  }
}
