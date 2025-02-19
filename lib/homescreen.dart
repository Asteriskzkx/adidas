import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text(
        //     'SHOP',
        //     style: GoogleFonts.lato(
        //       color: Colors.black,
        //       fontWeight: FontWeight.bold,
        //       fontSize: 16.0,
        //       letterSpacing: 2.0,
        //     ),
        //   ),
        //   backgroundColor: Colors.white,
        //   actions: [
        //     Container(
        //       margin: const EdgeInsets.only(right: 16.0),
        //       child: IconButton(
        //         icon: const Icon(Icons.person_outlined),
        //         onPressed: () {},
        //       ),
        //     ),
        //   ],
        // ),
        body: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Color.fromARGB(255, 240, 240, 240),
                        width: 1.0,
                      ),
                      bottom: BorderSide(
                        color: Color.fromARGB(255, 240, 240, 240),
                        width: 1.0,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.search,
                          weight: 0.1,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Find products...',
                            hintStyle: GoogleFonts.lato(
                              fontSize: 16.0,
                              color: Colors.black26,
                            ),
                            border: InputBorder.none,
                          ),
                          style: GoogleFonts.lato(
                            fontSize: 16.0,
                            color: Colors.black26,
                          ),
                        ),
                      ),
                    ],
                  ),
                ), // Search Bar

                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          'WOMEN',
                          style: GoogleFonts.lato(
                              color: Colors.black,
                              fontSize: 12.0,
                              letterSpacing: 2.0),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          'MEN',
                          style: GoogleFonts.lato(
                              color: Colors.black,
                              fontSize: 12.0,
                              letterSpacing: 2.0),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          'KIDS',
                          style: GoogleFonts.lato(
                              color: Colors.black,
                              fontSize: 12.0,
                              letterSpacing: 2.0),
                        ),
                      ),
                    ],
                  ),
                ), // Category

                SizedBox(
                  width: double.infinity,
                  height: 180,
                  child: Image.asset(
                    'assets/images/promotions.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                ),

                ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 16.0),
                      child: ListTile(
                        leading: Image.asset(
                          "assets/icons/shoes.png",
                          width: 30,
                          height: 30,
                        ),
                        title: const Text('Shoes'),
                      ),
                    ),
                    const Divider(
                      color: Color.fromARGB(255, 240, 240, 240),
                      thickness: 1.0,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 16.0),
                      child: ListTile(
                        leading: Image.asset(
                          "assets/icons/polo-shirt.png",
                          width: 30,
                          height: 30,
                        ),
                        title: const Text('Clothing'),
                      ),
                    ),
                    const Divider(
                      color: Color.fromARGB(255, 240, 240, 240),
                      thickness: 1.0,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 16.0),
                      child: ListTile(
                        leading: Image.asset(
                          "assets/icons/hat.png",
                          width: 30,
                          height: 30,
                        ),
                        title: const Text(
                          'Accessories',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    const Divider(
                      color: Color.fromARGB(255, 240, 240, 240),
                      thickness: 1.0,
                    ),
                  ],
                ),

                GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  childAspectRatio: 2,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: const Color.fromARGB(255, 240, 240, 240),
                        ),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.local_offer, color: Colors.black),
                            const SizedBox(height: 8.0),
                            Text(
                              'SALE',
                              style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: const Color.fromARGB(255, 240, 240, 240),
                        ),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.sports, color: Colors.black),
                            const SizedBox(height: 8.0),
                            Text(
                              'SPORT',
                              style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: const Color.fromARGB(255, 240, 240, 240),
                        ),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.trending_up, color: Colors.black),
                            const SizedBox(height: 8.0),
                            Text(
                              'NEW AND TRENDING',
                              style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: const Color.fromARGB(255, 240, 240, 240),
                        ),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.card_giftcard,
                                color: Colors.black),
                            const SizedBox(height: 8.0),
                            Text(
                              'GIFT CARDS',
                              style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
