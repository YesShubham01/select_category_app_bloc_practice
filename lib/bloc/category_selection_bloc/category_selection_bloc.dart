import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mock_machine_coding_practise/bloc/category_selection_bloc/category_selection_event.dart';
import 'package:mock_machine_coding_practise/bloc/category_selection_bloc/category_selection_state.dart';

// we need a bloc machine?
// what is bloc machine?
// any class with extent Bloc class

// this class extends bloc class
// block class need two template types Bloc<A,B>
// A is Event. B is State
// Event decides which action to perform
// State decides what is the UI based on the event.

class CategorySelectionBloc
    extends Bloc<CategorySelectionEvent, CategorySelectionState> {
  CategorySelectionBloc()
    : super(CategorySelectionState(selectedText: "Travel")) {
    // when bloc machine recieves [SelectCategoryEvent] execute this function
    on<SelectCategoryEvent>((event, emit) {
      emit(
        CategorySelectionState(selectedText: event.text),
      ); // update the state
    });
  }
}
