abstract class NotesState {}

class AddNotesIntile extends NotesState {}

class AddNotesLoading extends NotesState {}

class AddNotesISuccess extends NotesState {}

class AddNotesFailur extends NotesState {
  final String errorMessage;

  AddNotesFailur({required this.errorMessage});
}
