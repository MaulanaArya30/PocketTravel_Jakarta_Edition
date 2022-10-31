import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pockettravel_jakarta_edition/pages/home_page.dart';
import 'package:pockettravel_jakarta_edition/widgets/app_large_text.dart';
import 'package:pockettravel_jakarta_edition/widgets/app_text.dart';
import 'package:pockettravel_jakarta_edition/widgets/responsive_button.dart';

import '../misc/colors.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  //List to store images which can later be used for the welcome page
  List images = [
    "jakarta3.jpg",
    "jakarta1.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Makes the page scrollable
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration:
                  BoxDecoration(image: DecorationImage(image: AssetImage(

                      //Used + images index so that the image
                      // will be in order of the name
                      "img/" + images[index]), fit: BoxFit.cover)),
              child: Container(
                margin: const EdgeInsets.only(top: 120, left: 45, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: "Trips"),
                        AppText(
                          text: "Jakarta",
                          size: 35,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 250,
                          child: AppText(
                            text:
                                "Jakarta is a big place with many places to explore, but where should you go?\nLet me be your guide!",
                            color: AppColors.textColor2,
                            size: 14,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          //Button that will redirect us to the Home Page
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()),
                            );
                          },
                          child: Container(
                              width: 200,
                              child: ResponsiveButton(
                                width: 120,
                              )),
                        ),
                      ],
                    ),
                    Column(
                      children: List.generate(2, (indexDots) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          width: 8,
                          height: index == indexDots ? 25 : 8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: index == indexDots
                                  ? AppColors.mainColor
                                  : AppColors.mainColor.withOpacity(0.3)),
                        );
                      }),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
