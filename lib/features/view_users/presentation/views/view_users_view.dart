import 'package:flutter/material.dart';
import 'package:gym_system/core/utils/constant.dart';
import 'package:gym_system/features/view_users/widgets/build_table.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ViewUsersView extends StatefulWidget {
  const ViewUsersView({super.key});

  @override
  State<ViewUsersView> createState() => _ViewUsersViewState();
}

class _ViewUsersViewState extends State<ViewUsersView> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(()  {
        isHover = true;
      }),
      onExit: (event) => setState(()  {
        isHover = false;
      }),

      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: AppColors.kbackgroundColor,
            boxShadow: []
            ),
          child: Padding(
            padding: const EdgeInsetsGeometry.only(left: 200, right: 200, top: 80, bottom: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ************* Back ************
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                      Navigator.pop(context);  
                     },
                     padding: EdgeInsets.zero,
                     constraints: BoxConstraints(),
                     icon: Icon(
                      Iconsax.close_circle,  
                      color: AppColors.ksubTitleColor,
                      size: 20,
                     ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'Back to home',
                      style: TextStyle(
                        color: AppColors.ksubTitleColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                // ************* Sizebox *************
                const SizedBox(height: 40),
                // ************* Text *************
                Text(
                  'Members Directory',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                // ************* Sizebox *************
                const SizedBox(height: 10),
                // ************* Text 2 *************
                Text(
                  'Total Members: 150',
                  style: TextStyle(
                    color: AppColors.ksubTitleColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                // ************* Sizebox *************
                const SizedBox(height: 30),
                // ************* Table *************
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                  width: double.infinity,
                  height: 500,
                  decoration: BoxDecoration(
                    color: AppColors.kContainerBackgroundColor,
                    border: Border.all(
                      color: isHover ? AppColors.kprimaryColor : AppColors.kContainerBackgroundColor,
                      width: 1
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // ******************************** Member name
                            Icon(Iconsax.user, color: AppColors.kprimaryColor, size: 20,),
                            SizedBox(width: 10,),
                            Text('Member Name', style: TextStyle(color: AppColors.ksubTitleColor),),
                            // ******************************** Sizebox
                            SizedBox(width: 150,),
                            // ******************************** Phone number
                            Icon(Icons.phone, color: AppColors.kprimaryColor, size: 20,),
                            SizedBox(width: 10,),
                            Text('Phone Number', style: TextStyle(color: AppColors.ksubTitleColor),),
                            // ******************************** Sizebox
                            SizedBox(width: 150,),
                            // ******************************** Start date
                            Icon(Icons.date_range, color: AppColors.kprimaryColor, size: 20,),
                            SizedBox(width: 10,),
                            Text('Start Date', style: TextStyle(color: AppColors.ksubTitleColor),),
                            // ******************************** Sizebox
                            SizedBox(width: 150,),
                            // ******************************** End date
                            Icon(Icons.date_range, color: AppColors.kprimaryColor, size: 20,),
                            SizedBox(width: 10,),
                            Text('End Date', style: TextStyle(color: AppColors.ksubTitleColor),),
                            // ******************************** Sizebox
                            SizedBox(width: 150,),
                            // ******************************** Subscription status
                            Icon(Icons.check_circle, color: AppColors.kprimaryColor, size: 20,),
                            SizedBox(width: 10,),
                            Text('Subscription Status', style: TextStyle(color: AppColors.ksubTitleColor),),
                          ],
                        ),
                    
                        SizedBox(height: 30,),
      
                        Expanded(
                          child: ListView.separated(
                            itemBuilder: (BuildContext context, int index) {
                              return BuildTable(
                                name: "Amar HeFny",
                                phone: "01040345145",
                                startDate: "2023-01-01",
                                endDate: "2023-02-01",
                                status: "Active",
                              );
                            },
                            separatorBuilder: (BuildContext context, int index) => Divider(color: AppColors.ksubTitleColor,), 
                            itemCount: 50,
                            ),
                        ),
                      ],
                    ),
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

