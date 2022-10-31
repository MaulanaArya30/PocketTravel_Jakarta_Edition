import 'package:flutter/material.dart';
import 'package:pockettravel_jakarta_edition/misc/colors.dart';
import 'package:pockettravel_jakarta_edition/widgets/app_buttons.dart';
import 'package:pockettravel_jakarta_edition/widgets/app_large_text.dart';
import 'package:pockettravel_jakarta_edition/widgets/app_text.dart';
import 'package:pockettravel_jakarta_edition/widgets/responsive_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List images = [
    "jakarta3.jpg",
    "jakarta1.jpg",
    "museum.jpg",
    "parks.jpg",
    "mountain.jpg",
  ];
  int gottenStars = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                child: Container(
              width: double.maxFinite,
              height: 365,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("img/bottega.jpg"), fit: BoxFit.cover),
              ),
            )),
            Positioned(
                left: 20,
                top: 50,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.menu),
                      color: Colors.white,
                    )
                  ],
                )),
            Positioned(
                top: 330,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  width: MediaQuery.of(context).size.width,
                  height: 550,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(
                            text: "Bottega Ristorante",
                            color: Colors.black.withOpacity(0.8),
                          ),
                          AppLargeText(text: "\$\$\$", color: Colors.green),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: AppColors.mainColor,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          AppText(
                            text: "Jl. Jend. sudirman, Senayan",
                            color: AppColors.textColor1,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(5, (index) {
                              return Icon(Icons.star,
                                  color: index < gottenStars
                                      ? AppColors.starColor
                                      : AppColors.textColor2);
                            }),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          AppText(
                            text: "(4.0)",
                            color: AppColors.textColor2,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      AppLargeText(
                        text: "Rate your experience",
                        color: Colors.black.withOpacity(0.8),
                        size: 20,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      AppText(
                        text: "Rate your experience with this place!",
                        color: AppColors.mainColor,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Wrap(
                        children: List.generate(5, (index) {
                          return Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: AppButtons(
                                size: 50,
                                color: Colors.black,
                                backgroundColor: AppColors.buttonBackground,
                                borderColor: AppColors.buttonBackground,
                                icon: Icons.star,
                                isIcon: true,
                            ),
                          );
                        }),
                      ),
                      SizedBox(height: 20,),
                      AppLargeText(text: "Description", color: Colors.black.withOpacity(0.8), size: 20,),
                      SizedBox(height: 10,),
                      AppText(
                          text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                          color: AppColors.mainTextColor,
                      ),
                    ],
                  ),
                )),
            Positioned(
                bottom: 20,
                left: 20,
                right: 20,
                child: Row(
                  children: [
                    AppButtons(
                        size: 60,
                        color: AppColors.textColor1,
                        backgroundColor: Colors.white,
                        borderColor: AppColors.textColor1,
                        isIcon: true,
                        icon: Icons.bookmark,
                    ),
                    SizedBox(width: 20,),
                    ResponsiveButton(
                      isResponsive: true,
                    )
                  ],
                ),)
          ],
        ),
      ),
    );
  }
}
