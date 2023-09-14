import 'package:flutter/material.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/image_strings.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class DashboaardBanner extends StatelessWidget {
  const DashboaardBanner({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Theme.of(context).brightness== Brightness.light? const Color(0xFFF7F6F1): const Color(0xFF272727)),
            padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
            child:   Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(child: Image(image: AssetImage(tBookmark),width:30,)),
                    Flexible(child: Image(image: AssetImage(tBannerImage1),)),
                  ],
                ),

                const SizedBox(height: 25,),
                Text(tDashboardBannerTitle1,style: textTheme.titleLarge,maxLines: 2,overflow: TextOverflow.ellipsis,),
                Text(tDashboardBannerSubtitle,style: textTheme.bodyMedium,maxLines: 1,overflow: TextOverflow.ellipsis,)
              ],
            ),
          ),
        ),


        const SizedBox(width: tDashboardCardPadding,),
        Expanded(
            child:Column(
              children: [
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Theme.of(context).brightness== Brightness.light? const Color(0xFFF7F6F1): const Color(0xFF272727)),
                  padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(child: Image(image: AssetImage(tBookmark),width:30,)),
                          Flexible(child: Image(image: AssetImage(tBannerImage4),)),
                        ],
                      ),

                      const SizedBox(height: 25,),
                      Text(tDashboardBannerTitle2,style: textTheme.titleLarge,maxLines: 2,overflow: TextOverflow.ellipsis,),
                      Text(tDashboardBannerSubtitle,style: textTheme.bodyMedium,maxLines: 1,overflow: TextOverflow.ellipsis,)
                    ],
                  ),
                ),
                const SizedBox(height: 3,),
                SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: const Text(tDashboardButton)))
              ],
            )

        ),



      ],
    );
  }
}
