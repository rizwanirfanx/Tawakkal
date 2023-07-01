import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomListItem extends StatelessWidget {
  const CustomListItem(
      {super.key,
      this.text,
      this.icon,
      this.suffixWidget,
      this.middleContent,
      this.callback});
  final String? text;
  final Icon? icon;
  final Widget? suffixWidget;
  final VoidCallback? callback;
  final Widget? middleContent;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      InkWell(
        onTap: callback ?? () {},
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey, width: 0.3),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  icon ?? Container(),
                  SizedBox(width: 8),
                  middleContent ??
                      Text(text ?? 'I didn\'t feel safe in this ride',
                          style: GoogleFonts.inter(color: Colors.black54)),
                ],
              ),
              suffixWidget ?? const Icon(Icons.chevron_right),
            ],
          ),
        ),
      ),
    ]);
  }
}
