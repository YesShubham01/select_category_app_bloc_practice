import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:mock_machine_coding_practise/bloc/category_selection_bloc/category_selection_bloc.dart';
import 'package:mock_machine_coding_practise/bloc/category_selection_bloc/category_selection_event.dart';
import 'package:mock_machine_coding_practise/presentation/custom_widgets/category_tile.dart';
import 'package:mock_machine_coding_practise/presentation/custom_widgets/custom_text.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  List<String> list = ["Travel", "Food", "Booking", "Swimming"];

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
              CustomText(text: "Categories", size: 36, weight: FontWeight.bold),
              Gap(60),

              // list
              Expanded(
                flex: 1,
                child: ListView.builder(
                  itemCount: list.length,
                  padding: EdgeInsets.all(10),
                  itemBuilder: (context, index) =>
                      CategoryTile(text: list[index], isSelected: false),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
