import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/components/nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Positioned(
                    left: -200,
                    top: -200,
                    child: Container(
                      height: 400,
                      width: 400,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFC1CC),
                          borderRadius: BorderRadius.all(Radius.circular(200))),
                    )),
                Positioned(
                    right: -500,
                    top: -100,
                    child: Container(
                      height: 1000,
                      width: 1000,
                      decoration: BoxDecoration(
                          color: Color(0xFF7845D9),
                          borderRadius: BorderRadius.all(Radius.circular(500))),
                    )),
                Positioned(
                    right: 600,
                    top: 140,
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFC1CC),
                          borderRadius: BorderRadius.all(Radius.circular(75))),
                    )),
                Positioned(
                    left: 50,
                    top: 400,
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                          color: Color(0xFF7845D9),
                          borderRadius: BorderRadius.all(Radius.circular(75))),
                    )),
                Positioned(
                    right: 200,
                    top: 200,
                    child: Image.asset(
                      "assets/images/student_management_system.png",
                      height: 400,
                    )),
                Positioned(
                    right: 100,
                    top: 400,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                    )),
                Positioned(
                    right: 150,
                    top: 620,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFC1CC),
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                    )),
                NavBar(),
                Container(
                  padding: EdgeInsets.only(top: 180, left: 150),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Make",
                        style: GoogleFonts.ubuntu(
                            color: Colors.black,
                            fontSize: 80,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Business",
                        style: GoogleFonts.ubuntu(
                            color: Colors.black,
                            fontSize: 80,
                            fontWeight: FontWeight.w500),
                      ),
                      AnimatedTextKit(repeatForever: true, animatedTexts: [
                        TypewriterAnimatedText("Faster",
                            cursor: "|",
                            speed: Duration(milliseconds: 150),
                            textStyle: GoogleFonts.ubuntu(
                                color: Colors.black,
                                fontSize: 80,
                                fontWeight: FontWeight.w500)),
                        TypewriterAnimatedText("Easier",
                            cursor: "|",
                            speed: Duration(milliseconds: 150),
                            textStyle: GoogleFonts.ubuntu(
                                color: Colors.black,
                                fontSize: 80,
                                fontWeight: FontWeight.w500)),
                        TypewriterAnimatedText("Simpler",
                            cursor: "|",
                            speed: Duration(milliseconds: 150),
                            textStyle: GoogleFonts.ubuntu(
                                color: Colors.black,
                                fontSize: 80,
                                fontWeight: FontWeight.w500)),
                      ]),
                      SizedBox(height: 30),
                      Container(
                        width: 450,
                        child: Text(
                          "Let's automate all your business processes and cut out the repetitive labour. Efficient, right?",
                          style: GoogleFonts.ubuntu(
                              color: Colors.grey[500],
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              height: 1.5),
                        ),
                      ),
                      SizedBox(height: 40),
                      InkWell(
                          onTap: () {},
                          onHover: (val) {
                            setState(() {
                              isHover = val;
                            });
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 200),
                            padding: EdgeInsets.symmetric(
                                vertical: 12, horizontal: 24),
                            decoration: BoxDecoration(
                                color: isHover
                                    ? Color(0xFFFFC1CC)
                                    : Color(0xFF7845D9),
                                border: isHover
                                    ? Border.all(width: 2, color: Colors.white)
                                    : Border.all(
                                        width: 2,
                                        color: Color(0xFF7845D9),
                                      ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Text(
                              "Get Started",
                              style: GoogleFonts.nunito(
                                  color: isHover
                                      ? Color(0xFF7845D9)
                                      : Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          )),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
