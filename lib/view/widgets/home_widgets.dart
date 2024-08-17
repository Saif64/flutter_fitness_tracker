import 'package:fitness_tracker/view/widgets/search_box.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../shared/helper.dart';

PreferredSizeWidget? homeAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    centerTitle: false,
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Hello! ',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: const Color(
                      0xff000B23), // Set the color to match the theme or your preference
                ),
              ),
              TextSpan(
                text: 'Muntasir Mahmud Saif',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: const Color(
                      0xff000B23), // Set the color to match the theme or your preference
                ),
              ),
            ],
          ),
        ),
        const Gap(2),
        Text(
          HelperFunctions.formatDateTime(),
          textAlign: TextAlign.start,
          style: GoogleFonts.montserrat(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey.shade400,
            ),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Stack(
              children: [
                Image.asset(
                  "assets/icons/shape.png",
                  height: 45,
                  width: 45,
                ),
                Positioned(
                  right: 10,
                  top: 5,
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ],
    leading: Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Container(
        height: 45,
        width: 45,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Image.asset("assets/images/profile_pic.png"),
      ),
    ),
  );
}

Widget searchContainer(TextEditingController searchController) {
  return Container(
    height: 120,
    color: Colors.grey.shade100,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Center(
        child: SearchBox(
            controller: searchController,
            hintText: "Search",
            fieldName: "Search"),
      ),
    ),
  );
}

Widget inProgressCard() {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(
        color: const Color(0xffD0D5DD),
      ),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'In-Progress',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: const Color(0xff494949)),
                    ),
                    Gap(12),
                    Text(
                      '56%',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                          color: const Color(0xff000B23)),
                    ),
                  ],
                ),
                const Icon(
                  Icons.arrow_circle_right_outlined,
                  size: 30,
                  color: Color(0xff667085),
                )
              ],
            ),
            Gap(14),
            Container(
              height: 4,
              decoration: BoxDecoration(
                color: Color(0xff686868),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            Gap(14),
            Row(
              children: [
                Text(
                  "You've Burned",
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: const Color(0xff494949)),
                ),
                Gap(3),
                Image.asset("assets/icons/fire.png"),
                Text(
                  "1,220.5",
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: const Color(0xff000B23)),
                ),
                Gap(3),
                Text(
                  "out of 2,000 cal.",
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: const Color(0xff494949)),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
