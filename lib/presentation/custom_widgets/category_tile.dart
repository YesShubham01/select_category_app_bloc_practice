import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:mock_machine_coding_practise/bloc/category_selection_bloc/category_selection_bloc.dart';
import 'package:mock_machine_coding_practise/bloc/category_selection_bloc/category_selection_event.dart';
import 'package:mock_machine_coding_practise/bloc/category_selection_bloc/category_selection_state.dart';
import 'package:mock_machine_coding_practise/presentation/custom_widgets/custom_text.dart';

class CategoryTile extends StatefulWidget {
  final String text;
  final bool isSelected;
  const CategoryTile({super.key, required this.text, required this.isSelected});

  @override
  State<CategoryTile> createState() => _CategoryTileState();
}

class _CategoryTileState extends State<CategoryTile> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategorySelectionBloc, CategorySelectionState>(
      builder: (context, state) {
        bool isSelected = state.selectedText == widget.text;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                context.read<CategorySelectionBloc>().add(
                  SelectCategoryEvent(text: widget.text),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: isSelected ? Colors.grey : Colors.transparent,
                ),
                width: MediaQuery.widthOf(context),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CustomText(text: widget.text, size: 24),
                ),
              ),
            ),
            Gap(5),
          ],
        );
      },
    );
  }
}
