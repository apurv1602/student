import 'package:flutter/material.dart';

class ForgerPasswordBtnWidget extends StatelessWidget {
  const ForgerPasswordBtnWidget({
    super.key, required this.btnIcon, required this.title, required this.subtitle, required this.onTap,
  });

  final IconData btnIcon;
  final String title,subtitle;
  final VoidCallback onTap;



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.grey.shade200
        ),
        child: Row(
          children: [
            Icon(btnIcon,size: 50.0,color: Colors.black,),
            const SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,style: Theme.of(context).textTheme.titleMedium?.apply(color: Colors.black),),
                Text(subtitle, style: Theme.of(context).textTheme.bodyLarge?.apply(color: Colors.black),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
