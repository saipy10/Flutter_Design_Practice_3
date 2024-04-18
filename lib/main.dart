import 'package:flutter/material.dart';
import 'package:flutter_design_3/widgets/textstyle1.dart';
import 'package:flutter_design_3/widgets/item.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 20, 20, 20),
        body: Stack(
          children: [
            CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: 400,
                  backgroundColor: const Color.fromARGB(221, 20, 20, 20),
                  flexibleSpace: FlexibleSpaceBar(
                    background: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        PageView(
                          controller: _pageController,
                          children: const [
                            item(
                              image: "leo",
                            ),
                            item(
                              image: "leo1",
                            ),
                            item(
                              image: "leo2",
                            ),
                            item(
                              image: "leo3",
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                launchUrl(
                                  Uri.parse(
                                      "https://www.google.com/search?q=leonardo+dicaprio&oq=le&gs_lcrp=EgZjaHJvbWUqBggAEEUYOzIGCAAQRRg7MgYIARBFGDkyBggCEEUYOzIGCAMQRRg7MhMIBBAuGIMBGMcBGLEDGNEDGIAEMgYIBRBFGD0yBggGEEUYPDIGCAcQRRg90gEINDA3OWowajeoAgCwAgA&sourceid=chrome&ie=UTF-8"),
                                );
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  child: const Text(
                                    "Leonardo DiCaprio",
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  ),
                                ),
                                const Text(
                                  "American actor and film producer",
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "About",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.amber,
                                decorationThickness: 3,
                                backgroundColor:
                                    Color.fromARGB(221, 40, 40, 40),
                                color: Colors.white60,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "Leonardo Wilhelm DiCaprio is an American actor and film producer. Known for his work in biographical and period films, he is the recipient of numerous accolades, including an Academy Award, a British Academy Film Award, and three Golden Globe Awards.",
                            style: textStyle(15),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            "Born ",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.amber,
                              decorationThickness: 3,
                              backgroundColor: Color.fromARGB(221, 40, 40, 40),
                              color: Colors.white60,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "11 November 1974 (age 49 years),\n Los Angeles, California, United States",
                            style: textStyle(15),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            "Awards",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.amber,
                              decorationThickness: 3,
                              backgroundColor: Color.fromARGB(221, 40, 40, 40),
                              color: Colors.white60,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const Text(
                            "2016 Winner Oscar\nBest Performance by an Actor in a Leading Role\nThe Revenant",
                            style: TextStyle(
                              color: Colors.white60,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "1997 Winner Silver Berlin Bear\nBest Actor\nRomeo + Juliet",
                            style: TextStyle(
                              color: Colors.white60,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
