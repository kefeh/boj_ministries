import 'package:boj_ministries/Home/helper/constants.dart';
import 'package:boj_ministries/Home/presentation/widgets/footer_icons.dart';
import 'package:boj_ministries/Home/presentation/widgets/header.dart';
import 'package:boj_ministries/Home/presentation/widgets/menu_drawer.dart';
import 'package:boj_ministries/Home/presentation/widgets/nav_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const containerSize = 250.0;
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, toolbarHeight),
        child: Header(),
      ),
      body: Scaffold(
        key: scaffoldKey,
        endDrawer: const MenuDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Column(
                    children: [
                      Image.asset('logo/jesus.png'),
                      const SizedBox(height: containerSize * 4 / 5)
                    ],
                  ),
                  Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          "But He was wounded for our transgressions, He was bruised for our iniquities; the chastisement for our peace was upon Him, and by His stripes we are healed",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w200,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 10.0,
                        ),
                        child: Text(
                          "Isaiah 53:5",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w200,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Container(
                          height: containerSize,
                          width: size.width / 2,
                          decoration: BoxDecoration(
                              color: const Color(0xFF7A0424),
                              borderRadius: BorderRadius.circular(30)),
                        ),
                        Container(
                          height: (containerSize * 9) / 10,
                          width: size.width,
                          decoration: BoxDecoration(
                              color: const Color(0xFF7A0424),
                              borderRadius: BorderRadius.circular(30)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 34,
                  horizontal: 26,
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "svgs/jesus_sweat.svg",
                      semanticsLabel: "Jesus with crown of thorns",
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "The Blood of Christ is precious because it is Christ's own great ransom paid for the redemption of mankind. In this belief, as there was to be no remission of sin without the shedding of blood, the 'Incarnate Word' not only offered his life for the salvation of the world ...",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w100,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              backgroundColor: const Color(0xFF7A0424),
                              shadowColor: Colors.black.withOpacity(0.5),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 8.0,
                                vertical: 13,
                              ),
                              child: Text(
                                "Read More",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w100,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 300,
                child: GridView.extent(
                  scrollDirection: Axis.horizontal,
                  maxCrossAxisExtent: 170,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.7,
                  padding: const EdgeInsets.symmetric(
                    vertical: 30,
                    horizontal: 10,
                  ),
                  children: [
                    for (var i = 1; i < 1000; i++)
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFF7A0424),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Icon(
                              Icons.calendar_month,
                              color: Colors.white.withOpacity(0.1),
                              size: 75,
                            ),
                            Text(
                              'MINISTRY$i',
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
              Container(
                height: 300,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 10),
                decoration: const BoxDecoration(
                  color: Color(0xFF7A0424),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 17,
                      right: 0,
                      child: SvgPicture.asset(
                        "svgs/footer_svg.svg",
                        semanticsLabel: "footer path svgs",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 28.0,
                        vertical: 8,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const SizedBox(height: 30),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: const [
                                      NavItems(
                                        text: "Home",
                                        active: true,
                                      ),
                                      NavItems(text: "About"),
                                      NavItems(text: "Sermons"),
                                      NavItems(text: "Contact"),
                                      NavItems(text: "Charity"),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: const [
                                      NavItems(
                                        text: "Contact",
                                        active: true,
                                      ),
                                      Text(
                                        "Call: 116A 65X69 432C \nFrancc. Yucalpetem Merida \nYucatan Mexico",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                      FooterIcons()
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          const Divider(
                            thickness: 2,
                            color: Colors.white24,
                          ),
                          Container(
                            height: 40,
                            alignment: Alignment.center,
                            child: const Text(
                              "Copyrights: 2020 BOJ Ministries. All Rights reserved",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
