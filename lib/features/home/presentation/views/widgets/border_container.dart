import 'package:flutter/material.dart';
import 'package:gym_system/core/utils/constant.dart';

class BorderContainer extends StatelessWidget {
  IconData icons;
  String? text1;
  String? text2;
  
  BorderContainer({super.key, required this.icons, required this.text1, required this.text2});

  @override 
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 500,
      decoration: BoxDecoration(
      color: AppColors.kbackGroundField,
        border: Border.all(
          color: Colors.black.withOpacity(0.5),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(20),
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
          SizedBox(width: 30,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(icons,
             color: AppColors.kprimaryColor, size: 40,),
          ),
          SizedBox(width: 20,),
          
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1 ?? "",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5,),
              Text(
                text2 ?? "",
                style: TextStyle(
                  color: AppColors.ksubTitleColor,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );

  }
}