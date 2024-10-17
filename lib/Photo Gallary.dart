import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'Mood.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const photo_gallary(),
        theme: ThemeData());
  }
}

class photo_gallary extends StatelessWidget {
  const photo_gallary({super.key});

  @override
  Widget build(BuildContext context) {
    final ScreenWidth = MediaQuery.of(context).size.width;
    final PortraitContainer = ScreenWidth / 2.5;
    final LandscapeContainer = ScreenWidth / 5;

    return Scaffold(
      backgroundColor: const Color(0xFFEFEFEF),
      appBar: AppBar(
        backgroundColor: const Color(0xFF4ccc25),
        leading: Row(
          children: [
            const SizedBox(
              width: 15,
              height: 15,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.4),
                      borderRadius: BorderRadius.circular(10)),
                  width: 40,
                  height: 40,
                  child: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.white,
                  )),
            )
          ],
        ),
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
        title: const Text(
          "Photo Gallery",
          style: TextStyle(
              color: Colors.white,
              // fontFamily: 'Roboto',
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          if (orientation == Orientation.landscape) {
            return Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Wrap(spacing: 20, runSpacing: 20, children: [
                    InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const Mood();
                          }));
                        },
                        child: BuildContainer(
                            LandscapeContainer, 'Mood', 'image/mood.jpg')),
                    InkWell(
                        onTap: () {},
                        child: BuildContainer(LandscapeContainer, 'Aesthetic',
                            'image/aesthetic.jpg')),
                    InkWell(
                        onTap: () {},
                        child: BuildContainer(
                            LandscapeContainer, 'City', 'image/city.jpg')),
                    InkWell(
                        onTap: () {},
                        child: BuildContainer(
                            LandscapeContainer, 'Animals', 'image/animal.jpg')),
                    InkWell(
                        onTap: () {},
                        child: BuildContainer(
                            LandscapeContainer, 'Travel', 'image/travel.jpg')),
                    InkWell(
                        onTap: () {},
                        child: BuildContainer(
                            LandscapeContainer, 'Sky', 'image/sky.jpg')),
                    InkWell(
                        onTap: () {},
                        child: BuildContainer(
                            LandscapeContainer, 'Road', 'image/road.jpg')),
                    InkWell(
                        onTap: () {},
                        child: BuildContainer(LandscapeContainer, 'Floweres',
                            'image/flower.jpg')),
                  ]),
                ),
              ),
            );
          } else {
            return Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Wrap(spacing: 20, runSpacing: 20, children: [
                    InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const Mood();
                          }));
                        },
                        child: BuildContainer(
                            PortraitContainer, 'Mood', 'image/mood.jpg')),
                    InkWell(
                        onTap: () {},
                        child: BuildContainer(PortraitContainer, 'Aesthetic',
                            'image/aesthetic.jpg')),
                    InkWell(
                        onTap: () {},
                        child: BuildContainer(
                            PortraitContainer, 'City', 'image/city.jpg')),
                    InkWell(
                        onTap: () {},
                        child: BuildContainer(
                            PortraitContainer, 'Animals', 'image/animal.jpg')),
                    InkWell(
                        onTap: () {},
                        child: BuildContainer(
                            PortraitContainer, 'Travel', 'image/travel.jpg')),
                    InkWell(
                        onTap: () {},
                        child: BuildContainer(
                            PortraitContainer, 'Sky', 'image/sky.jpg')),
                    InkWell(
                        onTap: () {},
                        child: BuildContainer(
                            PortraitContainer, 'Road', 'image/road.jpg')),
                    InkWell(
                        onTap: () {},
                        child: BuildContainer(
                            PortraitContainer, 'Floweres', 'image/flower.jpg')),
                  ]),
                ),
              ),
            );
          }
        },
      ),
    );
  }
//change
  //change 1
  Widget BuildContainer(ContainerSize, label, imagename) {
    return Container(
      width: ContainerSize,
      height: ContainerSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 15,
              offset: const Offset(0, 10))
        ],
        image: DecorationImage(image: AssetImage(imagename!)),
      ),
      child: Stack(children: [
        Positioned(
          left: 20,
          bottom: 20,
          child: Text(
            label!,
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                shadows: [
                  Shadow(
                    color: Colors.black.withOpacity(0.6),
                    blurRadius: 5,
                  )
                ]),
          ),
        )
      ]),
    );
  }
}
