abstract class AddNotesState {}

class AddNotesIntile extends AddNotesState {}

class AddNotesLoading extends AddNotesState {}

class AddNotesISuccess extends AddNotesState {}

class AddNotesFailur extends AddNotesState {
  final String errorMessage;

  AddNotesFailur({required this.errorMessage});
}
