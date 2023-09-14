import 'package:flutter/material.dart';
import 'package:student/src/constants/sizes.dart';
import 'package:student/src/constants/text_strings.dart';
import 'package:student/src/features/core/screens/dashboard/widgets/appbar.dart';
import 'package:student/src/features/core/screens/dashboard/widgets/banners.dart';
import 'package:student/src/features/core/screens/dashboard/widgets/categories.dart';
import 'package:student/src/features/core/screens/dashboard/widgets/search.dart';
import 'package:student/src/features/core/screens/dashboard/widgets/top_courses.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final textTheme= Theme.of(context).textTheme;

    return   Scaffold(
      appBar: const DashboardAppBar(),
      body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDashboardPadding),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [


                  //Heading
                  Text(tDashboardTitle, style: textTheme.bodyMedium,),
                  Text(tDashboardHeading,style: textTheme.displaySmall,),
                  const SizedBox(height: tDashboardPadding,),


                  //SearchBox
                  DashboardSearchBox(textTheme: textTheme),
                  const SizedBox(height: tDashboardPadding,),


                  //Categories
                  DashboardCategories(textTheme: textTheme),
                  const SizedBox(height: tDashboardPadding,),


                  //Banner
                  DashboaardBanner(textTheme: textTheme),
                  const SizedBox(height: tDashboardPadding,),


                  //Top Courses
                  Text(tDashboardTopCourses,style: textTheme.displaySmall,),
                  DashboardTopCourses(textTheme: textTheme)
                ],
              )
          )
      ),
    );
  }
}





