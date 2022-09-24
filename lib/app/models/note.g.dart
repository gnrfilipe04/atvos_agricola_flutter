// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Note on _NoteBase, Store {
  late final _$notesAtom = Atom(name: '_NoteBase.notes', context: context);

  @override
  List<CardInfo> get notes {
    _$notesAtom.reportRead();
    return super.notes;
  }

  @override
  set notes(List<CardInfo> value) {
    _$notesAtom.reportWrite(value, super.notes, () {
      super.notes = value;
    });
  }

  late final _$notesFilteredAtom =
      Atom(name: '_NoteBase.notesFiltered', context: context);

  @override
  List<CardInfo> get notesFiltered {
    _$notesFilteredAtom.reportRead();
    return super.notesFiltered;
  }

  @override
  set notesFiltered(List<CardInfo> value) {
    _$notesFilteredAtom.reportWrite(value, super.notesFiltered, () {
      super.notesFiltered = value;
    });
  }

  late final _$_NoteBaseActionController =
      ActionController(name: '_NoteBase', context: context);

  @override
  dynamic setNotes({required List<CardInfo> newNotes}) {
    final _$actionInfo =
        _$_NoteBaseActionController.startAction(name: '_NoteBase.setNotes');
    try {
      return super.setNotes(newNotes: newNotes);
    } finally {
      _$_NoteBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setNotesFiltered({required List<CardInfo> newNotes}) {
    final _$actionInfo = _$_NoteBaseActionController.startAction(
        name: '_NoteBase.setNotesFiltered');
    try {
      return super.setNotesFiltered(newNotes: newNotes);
    } finally {
      _$_NoteBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setInitialNotes({required List<CardInfo> newNotes}) {
    final _$actionInfo = _$_NoteBaseActionController.startAction(
        name: '_NoteBase.setInitialNotes');
    try {
      return super.setInitialNotes(newNotes: newNotes);
    } finally {
      _$_NoteBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  List<String> getFiltersActive({required List<FilterItem> filterList}) {
    final _$actionInfo = _$_NoteBaseActionController.startAction(
        name: '_NoteBase.getFiltersActive');
    try {
      return super.getFiltersActive(filterList: filterList);
    } finally {
      _$_NoteBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic filterNotesByType({required List<FilterItem> filterList}) {
    final _$actionInfo = _$_NoteBaseActionController.startAction(
        name: '_NoteBase.filterNotesByType');
    try {
      return super.filterNotesByType(filterList: filterList);
    } finally {
      _$_NoteBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic filterNotes() {
    final _$actionInfo =
        _$_NoteBaseActionController.startAction(name: '_NoteBase.filterNotes');
    try {
      return super.filterNotes();
    } finally {
      _$_NoteBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic searchNotes({required String value}) {
    final _$actionInfo =
        _$_NoteBaseActionController.startAction(name: '_NoteBase.searchNotes');
    try {
      return super.searchNotes(value: value);
    } finally {
      _$_NoteBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic searchCards(
      {required String value, required List<CardInfo> cardList}) {
    final _$actionInfo =
        _$_NoteBaseActionController.startAction(name: '_NoteBase.searchCards');
    try {
      return super.searchCards(value: value, cardList: cardList);
    } finally {
      _$_NoteBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
notes: ${notes},
notesFiltered: ${notesFiltered}
    ''';
  }
}
