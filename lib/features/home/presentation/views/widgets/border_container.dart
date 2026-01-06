import 'package:flutter/material.dart';
import 'package:gym_system/core/utils/constant.dart';

// ignore: must_be_immutable
class BorderContainer extends StatefulWidget {
  IconData icons;
  String? text1;
  String? text2;
  void Function()? onTap;

  BorderContainer({
    super.key,
    required this.icons,
    required this.text1,
    required this.text2,
    required this.onTap,
  });

  @override
  State<BorderContainer> createState() => _BorderContainerState();
}

class _BorderContainerState extends State<BorderContainer> {
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
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          height: 130,
          width: 500,
          decoration: BoxDecoration(
            color: AppColors.kContainerBackgroundColor,
            border: Border.all(
              color: isHover ? AppColors.kprimaryColor : AppColors.kborderColor,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 30),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(
                  widget.icons,
                  color: AppColors.kprimaryColor,
                  size: 35,
                ),
              ),
              SizedBox(width: 20),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.text1 ?? "",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    widget.text2 ?? "",
                    style: TextStyle(
                      color: AppColors.ksubTitleColor,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
