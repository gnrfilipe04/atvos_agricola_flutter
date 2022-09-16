import 'package:atvos_agricola/app/models/card_info.dart';
import 'package:mobx/mobx.dart';
part 'notes_vm.g.dart';

class NotesVm = _NotesVmBase with _$NotesVm;

abstract class _NotesVmBase with Store {
  @observable
  List<CardInfo> notes = [];

  @observable
  List<CardInfo> notesFiltered = [];

  @action
  setNotes({required List<CardInfo> newNotes}) {
    notes = newNotes;
  }

  @action
  setNotesFiltered({required List<CardInfo> newNotes}) {
    notesFiltered = newNotes;
  }

  @action
  setInitialNotes({required List<CardInfo> newNotes}) {
    notes = newNotes;
    notesFiltered = newNotes;
  }
}
