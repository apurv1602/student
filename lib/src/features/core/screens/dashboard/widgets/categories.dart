import 'package:flutter/material.dart';

import '../../../../../constants/colors.dart';
import '../../../models/dashboard/categories_model.dart';

class DashboardCategories extends StatelessWidget {
  const DashboardCategories({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    final list=  DashboardCategoriesModel.list;

    return SizedBox(height: 48,
      child: ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: list[index].onPress,
          child: SizedBox(
            width: 170,
            height: 50,
            child: Row(
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: tDarkColor),
                  child: Center(
                    child: Text(list[index].title,style: textTheme.titleLarge?.apply(color: Colors.white),),
                  ),
                ),
                const SizedBox(width: 5,),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(list[index].heading,style: textTheme.titleMedium ,overflow: TextOverflow.ellipsis,),
                      Text(list[index].subHeading,style: textTheme.bodyLarge ,)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),

        /*
        children: [
          SizedBox(
            width: 170,
            height: 50,
            child: Row(
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: tDarkColor),
                  child: Center(
                    child: Text("JS",style: textTheme.titleLarge?.apply(color: Colors.white),),
                  ),
                ),
                const SizedBox(width: 5,),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Java Script",style: textTheme.titleMedium ,overflow: TextOverflow.ellipsis,),
                      Text("10 Lessons",style: textTheme.bodyLarge ,)
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 170,
            height: 50,
            child: Row(
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: tDarkColor),
                  child: Center(
                    child: Text("JS",style: textTheme.titleLarge?.apply(color: Colors.white),),
                  ),
                ),
                const SizedBox(width: 5,),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Java Script",style: textTheme.titleMedium ,overflow: TextOverflow.ellipsis,),
                      Text("10 Lessons",style: textTheme.bodyLarge ,)
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 170,
            height: 50,
            child: Row(
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: tDarkColor),
                  child: Center(
                    child: Text("JS",style: textTheme.titleLarge?.apply(color: Colors.white),),
                  ),
                ),
                const SizedBox(width: 5,),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Java Script",style: textTheme.titleMedium ,overflow: TextOverflow.ellipsis,),
                      Text("10 Lessons",style: textTheme.bodyLarge ,)
                    ],
                  ),
                )
              ],
            ),
          ),
        */

      ),
    );
  }
}
