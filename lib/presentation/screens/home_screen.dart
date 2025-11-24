import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:mock_machine_coding_practise/bloc/category_selection_bloc/category_selection_bloc.dart';
import 'package:mock_machine_coding_practise/bloc/category_selection_bloc/category_selection_state.dart';
import 'package:mock_machine_coding_practise/presentation/custom_widgets/custom_button.dart';
import 'package:mock_machine_coding_practise/presentation/custom_widgets/custom_text.dart';
import 'package:mock_machine_coding_practise/presentation/screens/category_screen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.widthOf(context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // title
              CustomText(text: "Home", size: 36, weight: FontWeight.bold),
              Gap(60),

              // main item
              CustomText(text: "Selected Category :", size: 24),
              Gap(15),
              BlocBuilder<CategorySelectionBloc, CategorySelectionState>(
                builder: (context, state) => CustomText(
                  text: state.selectedText,
                  size: 42,
                  weight: FontWeight.bold,
                ),
              ),

              Gap(60),
              // button
              CustomButton(
                text: "choose category",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CategoryScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
