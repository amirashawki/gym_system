import 'package:flutter/material.dart';

class BuildTable extends StatelessWidget {
  final String name;
  final String phone;
  final String startDate;
  final String endDate;
  final String status;
  const BuildTable({super.key, required this.name, required this.phone, required this.startDate, required this.endDate, required this.status});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 30,),
          // ******************************** Member name
          Text(name, style: TextStyle(color: Colors.white),),
          // ******************************** Sizebox
          SizedBox(width: 198,),
          // ******************************** Phone number
          Text(phone, style: TextStyle(color: Colors.white),),
          // ******************************** Sizebox
          SizedBox(width: 182,),
          // ******************************** Start date
          Text(startDate, style: TextStyle(color: Colors.white),),
          // ******************************** Sizebox
          SizedBox(width: 175,),
          // ******************************** End date
          Text(endDate, style: TextStyle(color: Colors.white),),
          // ******************************** Sizebox
          SizedBox(width: 167,),
          // ******************************** Subscription status
          Text(status, style: TextStyle(color: Colors.white),),
        ],
      ),
    );
  }
}