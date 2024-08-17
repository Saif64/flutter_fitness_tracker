import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBox extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;

  final bool isPassword;
  final String fieldName;
  const SearchBox(
      {super.key,
      required this.controller,
      required this.hintText,
      this.isPassword = false,
      required this.fieldName});

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  final FocusNode _focusNode = FocusNode();
  Color _color = const Color(0xFFE3E3E7);
  Color _prefixColor = Color(0xff667085);

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        setState(() {
          _color = Colors.deepPurple.shade50;
          _prefixColor = Colors.blue;
        });
      } else {
        setState(() {
          _color = const Color(0xFFE3E3E7);
          _prefixColor = Color(0xff667085);
        });
      }
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: _focusNode,
      obscureText: widget.isPassword,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          fillColor: _color,
          filled: true,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                color: Colors.deepPurple,
                width: 0.5,
              )),
          hintText: widget.hintText,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Icon(
              Icons.search_outlined,
              color: _prefixColor,
              size: 30,
            ),
          ),
          hintStyle: GoogleFonts.montserrat(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Color(0xff667085),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
              width: 0.1,
              style: BorderStyle.none,
            ),
            borderRadius: BorderRadius.circular(30),
          )),
    );
  }
}
