import 'package:cleanarch/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CharactersListView extends StatelessWidget {
   CharactersListView({Key? key}) : super(key: key);

  @override final characters = [
      _Character(
        image: "assets/images/naruto.png",
        name: "Gon Freecss",
        showName: "Hunter x Hunter"
      ),
      _Character(
        image: "assets/images/kilua.png",
        name: "Killua Zoldyck",
        showName: "Hunter x Hunter"
      ),
      _Character(
        image: "assets/images/conan.png",
        name: "Shinichi Kudo",
        showName: "Detective Conan"
      ),
      _Character(
        image: "assets/images/guko.jpg",
        name: "Goku",
        showName: "Dragon Ball"
      ),
      _Character(
        image: "assets/images/vegeta.png",
        name: "Vegeta",
        showName: "Dragon Ball"
      ),
      _Character(
        image: "assets/images/tanjiro.png",
        name: "Tanjiro Kamado",
        showName: "Demon Slayer"
      ),
      _Character(
        image: "assets/images/lufee.png",
        name: "Lufee",
        showName: "One Piece"
      ),
    ];

  Widget build(BuildContext context) {
    // Static character data
   
    return SizedBox(
      height: 140.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: characters.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            children: [
              CircleAvatar(
                radius: 40.r,
                backgroundImage: AssetImage(
                  characters[index].image,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                characters[index].name,
                style: TextStyles.font16DarkPurpleSemiBold,
              ),
              Text(
                characters[index].showName,
                style: TextStyles.font14DarkestGreySemiBold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Simple class to hold character data
class _Character {
  final String image;
  final String name;
  final String showName;

  _Character({
    required this.image,
    required this.name,
    required this.showName,
  });
}