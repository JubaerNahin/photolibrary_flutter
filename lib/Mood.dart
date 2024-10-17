import 'dart:ui';

import 'package:first_assignment/Photo%20Gallary.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Mood extends StatelessWidget {
  const Mood({super.key});

  @override
  Widget build(BuildContext context) {
    final ScreenWidth = MediaQuery.of(context).size.width;
    final PortraitScreenWidth = ScreenWidth / 2.5;
    final LandscapeScreenWidh = ScreenWidth / 5;

    return Scaffold(
      backgroundColor: const Color(0xFFEFEFEF),
      appBar: AppBar(
        backgroundColor: const Color(0xFF4ccc25),
        leading: Row(
          children: [
            const SizedBox(
              height: 15,
              width: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white.withOpacity(0.4),
                ),
                child: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
        title: const Text(
          'Mood',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        actions: const [
          Row(children: [
            Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
              height: 10,
            ),
          ])
        ],
      ),
      body: OrientationBuilder(builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .35,
                        width: MediaQuery.of(context).size.width * 1,
                        child: Card(
                          elevation: 15,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(35),
                            child: Image(
                              image: AssetImage('image/mood.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 50,
                        child: const Text(
                          'Mood With Nature',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 50,
                        child: const Text(
                          //softWrap: true,
                          'Being in Nature, Or Even Viewing Scenes of Nature,Reduces Anger,Fear,And Stress And Increases Pleasant Feelings',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w400),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Card(
                        elevation: 15,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF4ccc25),
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width * .34,
                                  vertical: 10),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'See More',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 50,
                        child: Text(
                          "Suggestions",
                           textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color(0xFF4ccc25),
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(

                        child: Wrap(
                          spacing: 20,
                          runSpacing: 0,
                          children: [
                            Container(
                              width: PortraitScreenWidth,
                              height: PortraitScreenWidth,
                              child: Card(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
                                elevation: 15,
                                child: Stack(

                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(35),
                                      child: Image(image: AssetImage('image/animal.jpg'),),
                                    ),
                                    Positioned(
                                        bottom: 15,
                                        left: 15,
                                        child: Text("Leaves",style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                        ),)),

                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: PortraitScreenWidth,
                              height: PortraitScreenWidth,
                              child: Card(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
                                elevation: 15,
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(35),
                                      child: Image.asset('image/mood.jpg'),
                                    ),
                                    Positioned(
                                        bottom: 15,
                                        left: 15,
                                        child: Text("Dawn",style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                        ),)),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        } else {
          return const Center();
        }
      }),
    );
  }
}
