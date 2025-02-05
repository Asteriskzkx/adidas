import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'SHOP',
            style: GoogleFonts.lato(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
              letterSpacing: 2.0,
            ),
          ),
          backgroundColor: Colors.white,
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 16.0),
              child: IconButton(
                icon: const Icon(Icons.person_outlined),
                onPressed: () {},
              ),
            ),
          ],
        ),
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
                      Text(
                        'Find products...',
                        style: GoogleFonts.lato(
                          color: Colors.black26,
                          fontSize: 16.0,
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
                    'assets/images/image-1.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
