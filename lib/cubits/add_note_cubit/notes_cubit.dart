import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/cubits/add_note_cubit/notes_state.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/constatns_file.dart';

class AddNoteCubit extends Cubit<NotesState> {
  AddNoteCubit() : super(AddNotesIntile());

  addNote(NoteModel note) async {
    emit(AddNotesLoading());

    try {
      Box<NoteModel> notesBox = Hive.box(kNotesBox);
      emit(AddNotesISuccess());
      await notesBox.add(note);
    } catch (e) {
      AddNotesFailur(errorMessage: e.toString());
    }
  }
}
