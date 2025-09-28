import 'package:cleanarch/core/theming/text_styles.dart';
import 'package:cleanarch/features/shows/domain/entities/show_response_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowsListView extends StatelessWidget {
  List<ShowResponseEntity> shows;
   ShowsListView({required this.shows,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: shows.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 287.h,
                  width: 184.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    image:  DecorationImage(
                      image: AssetImage(shows[index].imageUrl??""),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                shows[index].title??"",
                  style: TextStyles.font14DarkPurpleBold,
                ),
                SizedBox(height: 5.h),
                Text(
                 shows[index].genre??"",
                  style: TextStyles.font12DarkGreyMedium,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}