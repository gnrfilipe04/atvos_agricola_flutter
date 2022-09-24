import 'package:atvos_agricola/app/models/card_info.dart';
import 'package:atvos_agricola/app/models/filter.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
part 'note.g.dart';

class NoteItem {
  int id;
  int cardId;
  String title;
  String statusText;
  bool isCompleted;
  String date;
  int centerCostCode;
  String locationDescription;
  int locationCode;

  NoteItem({
    required this.id,
    required this.cardId,
    required this.title,
    required this.statusText,
    required this.isCompleted,
    required this.date,
    required this.centerCostCode,
    required this.locationDescription,
    required this.locationCode,
  });
}

class Note = _NoteBase with _$Note;

abstract class _NoteBase with Store {
  final Filter filter = GetIt.I.get<Filter>();

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

  @action
  List<String> getFiltersActive({required List<FilterItem> filterList}) {
    List<String> filtersActive = filterList
        .where((element) => element.active)
        .map((item) => item.title)
        .toList();

    return filtersActive;
  }

  @action
  filterNotesByType({required List<FilterItem> filterList}) {
    List<String> filtersActive = getFiltersActive(filterList: filterList);

    List<CardInfo> notesFiltered = notes
        .where((element) => filtersActive.contains(element.title))
        .toList();

    if (filtersActive.isEmpty) {
      return notes;
    } else {
      return notesFiltered;
    }
  }

  @action
  filterNotes() {
    List<CardInfo> notesFiltered = filterNotesByType(filterList: filter.list);
    setNotesFiltered(newNotes: notesFiltered);
  }

  @action
  searchNotes({required String value}) {
    final cardsFiltered = searchCards(value: value, cardList: notes);
    notesFiltered = cardsFiltered;
  }

  @action
  searchCards({required String value, required List<CardInfo> cardList}) {
    List<CardInfo> cardsFiltered = cardList
        .where((element) =>
            element.centerCostCode.toString().contains(value) ||
            element.locationDescription.toLowerCase().contains(value) ||
            element.statusText.toLowerCase().contains(value) ||
            element.title.toLowerCase().contains(value))
        .toList();

    if (value.isEmpty) {
      return cardList;
    } else {
      return cardsFiltered;
    }
  }
}
