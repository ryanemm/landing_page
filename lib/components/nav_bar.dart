import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          padding: EdgeInsets.only(top: 30, left: 20, right: 20),
          child: Row(children: [
            SizedBox(width: 20),
            Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                        onTap: () {},
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Center(
                            child: Text(
                              "K",
                              style: GoogleFonts.ubuntu(
                                  color: Colors.black,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        )),
                    SizedBox(width: 30),
                    Text(
                      "Konnect.",
                      style: GoogleFonts.ubuntu(
                          fontSize: 36, fontWeight: FontWeight.w500),
                    ),
                  ],
                )),
            Expanded(
              flex: 6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 50),
                  Text(
                    "Features",
                    style:
                        GoogleFonts.nunito(color: Colors.black, fontSize: 20),
                  ),
                  SizedBox(width: 50),
                  Text(
                    "Pricing",
                    style:
                        GoogleFonts.nunito(color: Colors.black, fontSize: 20),
                  ),
                  SizedBox(width: 50),
                  Text(
                    "Explore",
                    style:
                        GoogleFonts.nunito(color: Colors.black, fontSize: 20),
                  ),
                  Icon(Icons.arrow_drop_down_rounded),
                  SizedBox(width: 50),
                ],
              ),
            ),
            Expanded(
                flex: 3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.search_sharp, color: Colors.white, size: 30),
                    SizedBox(
                      width: 50,
                    ),
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
                              color: isHover ? Colors.white : Color(0xFFFFC1CC),
                              border: isHover
                                  ? Border.all(width: 2, color: Colors.white)
                                  : Border.all(
                                      width: 2,
                                      color: Color(
                                        0xFFFFC1CC,
                                      ),
                                    ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Text(
                            "Get Started",
                            style: GoogleFonts.nunito(
                                color: isHover
                                    ? Color(0xFF7845D9)
                                    : Color(0xFF7845D9),
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                        )),
                    SizedBox(
                      width: 50,
                    ),
                  ],
                ))
          ]),
        ),
      ),
    );
  }
}
