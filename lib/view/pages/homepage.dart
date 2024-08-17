import 'package:fitness_tracker/shared/text_type.dart';
import 'package:fitness_tracker/view/widgets/home_widgets.dart';
import 'package:fitness_tracker/view/widgets/search_box.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController? searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: homeAppBar(),
      body: Column(
        children: [
          searchContainer(searchController!),
          const Gap(14),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Your Statistics',
                      style: TextType.bigText(),
                    ),
                    Text(
                      'See All',
                      style: TextType.seeAll(),
                    ),
                  ],
                ),
                const Gap(14),
                inProgressCard(),
                const Gap(14),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 80,
                          width: 200,
                          padding: const EdgeInsets.all(12),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                width: 6,
                                color: Colors.green,
                              ),
                            ),
                            color: Color(0xffF6F5F6),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/icons/shoe.png',
                                    height: 16,
                                    width: 16,
                                  ),
                                  const Gap(2),
                                  Text(
                                    'Steps',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: const Color(0xff494949)),
                                  ),
                                ],
                              ),
                              const Gap(4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    '19,124',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20,
                                        color: const Color(0xff000B23)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Gap(16),
                        Container(
                          height: 80,
                          width: 200,
                          padding: const EdgeInsets.all(12),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                width: 6,
                                color: Colors.blue,
                              ),
                            ),
                            color: Color(0xffF6F5F6),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/icons/sleep.png',
                                    height: 16,
                                    width: 16,
                                  ),
                                  const Gap(2),
                                  Text(
                                    'Sleep',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: const Color(0xff494949)),
                                  ),
                                ],
                              ),
                              const Gap(4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '7',
                                          style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20,
                                            color: const Color(0xff000B23),
                                            // Set the color to match the theme or your preference
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'h ',
                                          style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            color: const Color(
                                                0xff000B23), // Set the color to match the theme or your preference
                                          ),
                                        ),
                                        TextSpan(
                                          text: '34',
                                          style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20,
                                            color: const Color(0xff000B23),
                                            // Set the color to match the theme or your preference
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'm',
                                          style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            color: const Color(
                                                0xff000B23), // Set the color to match the theme or your preference
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
