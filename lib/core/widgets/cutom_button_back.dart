import 'package:flutter/material.dart';

class CutomButtonBack extends StatefulWidget {
  const CutomButtonBack({super.key});

  @override
  State<CutomButtonBack> createState() => _CutomButtonBackState();
}

class _CutomButtonBackState extends State<CutomButtonBack> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() {
        isHover = true;
      }),
      onExit: (event) => setState(() {
        isHover = false;
      }),
      child: SizedBox(
        width: 520,
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
              icon: Icon(
                Icons.arrow_back,
                size: 19,
                color: isHover ? Colors.white : Color(0xff9AA4C7),
              ),
            ),
            SizedBox(width: 10,),

            Text(
              'Back To Home',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: isHover ? Colors.white : Color(0xff9AA4C7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
