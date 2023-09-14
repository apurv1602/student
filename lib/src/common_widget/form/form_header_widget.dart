import 'package:flutter/material.dart';



class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({super.key, required this.image, required this.title, required this.subtitle, this.heightBetween,   this.imageHeight= 0.2, this.imageColor,  this.crossAxisAlignment= CrossAxisAlignment.start, this.textAlign,});

  final String image,title,subtitle;
  final double? heightBetween;
  final double imageHeight;
  final Color? imageColor;
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Image(image:  AssetImage(image),color: imageColor, height: size.height* imageHeight,),
        SizedBox(height: heightBetween,),
        Text(title, style: Theme.of(context).textTheme.displaySmall,),
        Text(subtitle,textAlign: textAlign, style: Theme.of(context).textTheme.bodyLarge,),
      ],
    );
  }
}