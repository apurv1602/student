import 'package:flutter/material.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/image_strings.dart';
import '../../../../../constants/sizes.dart';
import '../../../models/dashboard/TopCoursses_model.dart';

class DashboardTopCourses extends StatelessWidget {
  const DashboardTopCourses({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {

    final list= DashboardTopCoursesModel.list;

    return SizedBox(
      height: 205,
      child: ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => SizedBox(
          width: 320,
          height: 200,
          child: Padding(
            padding: const EdgeInsets.only(right: 10,top: 8),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Theme.of(context).brightness== Brightness.light? const Color(0xFFF7F6F1): const Color(0xFF272727)),
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(child: Text(list[index].title, style: textTheme.titleLarge,maxLines:2 ,overflow: TextOverflow.ellipsis,)),
                      Flexible(child: Image(image: AssetImage(list[index].image),height: 110,)),
                    ],
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(shape: const CircleBorder()),
                          onPressed: (){},
                          child: const Icon(Icons.play_arrow)),
                      const SizedBox(width: tDashboardCardPadding,),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(list[index].heading,style: textTheme.titleLarge,overflow: TextOverflow.ellipsis,),
                          Text(list[index].subHeading,style: textTheme.bodyMedium,overflow: TextOverflow.ellipsis,),

                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        /*
        children: [
          SizedBox(
            width: 320,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(right: 10,top: 5),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: tCardBgColor),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(child: Text("Flutter Crash Course", style: textTheme.titleLarge,maxLines:2 ,overflow: TextOverflow.ellipsis,)),
                        const Flexible(child: Image(image: AssetImage(tBannerImage3),height: 110,)),
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(shape: const CircleBorder()),
                            onPressed: (){},
                            child: const Icon(Icons.play_arrow)),
                        const SizedBox(width: tDashboardCardPadding,),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("3 Sections",style: textTheme.titleLarge,overflow: TextOverflow.ellipsis,),
                            Text("Programing language",style: textTheme.bodyMedium,overflow: TextOverflow.ellipsis,),

                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 320,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(right: 10,top: 5),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: tCardBgColor),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(child: Text("Flutter Crash Course", style: textTheme.titleLarge,maxLines:2 ,overflow: TextOverflow.ellipsis,)),
                        const Flexible(child: Image(image: AssetImage(tBannerImage3),height: 110,)),
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(shape: const CircleBorder()),
                            onPressed: (){},
                            child: const Icon(Icons.play_arrow)),
                        const SizedBox(width: tDashboardCardPadding,),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("3 Sections",style: textTheme.titleLarge,overflow: TextOverflow.ellipsis,),
                            Text("Programing language",style: textTheme.bodyMedium,overflow: TextOverflow.ellipsis,),

                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 320,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(right: 10,top: 5),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: tCardBgColor),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(child: Text("Flutter Crash Course", style: textTheme.titleLarge,maxLines:2 ,overflow: TextOverflow.ellipsis,)),
                        const Flexible(child: Image(image: AssetImage(tBannerImage3),height: 110,)),
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(shape: const CircleBorder()),
                            onPressed: (){},
                            child: const Icon(Icons.play_arrow)),
                        const SizedBox(width: tDashboardCardPadding,),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("3 Sections",style: textTheme.titleLarge,overflow: TextOverflow.ellipsis,),
                            Text("Programing language",style: textTheme.bodyMedium,overflow: TextOverflow.ellipsis,),

                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
        */

      ),
    );
  }
}
