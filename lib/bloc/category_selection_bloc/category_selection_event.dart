abstract class CategorySelectionEvent {}

class SelectCategoryEvent extends CategorySelectionEvent {
  final String text;
  SelectCategoryEvent({required this.text});
}
