import 'package:flutter/material.dart';
import 'package:gym_system/core/widgets/cutom_button_back.dart';
import 'package:gym_system/features/add_user/presentation/views/widgets/add_user_card.dart';

class AddUserView extends StatelessWidget {
  const AddUserView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              Center(child: CutomButtonBack()),
              SizedBox(height: 20),
              Center(child: AddMemberCard()),
            ],
          ),
        ),
      ),
    );
  }
}
