abstract class NotesState {}

class NotesIntile extends NotesState {}

class NotesLoading extends NotesState {}

class NotesISuccess extends NotesState {}

class NotesFailur extends NotesState {
  final String errorMessage;

  NotesFailur({required this.errorMessage});
}
