// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_vm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NotesVm on _NotesVmBase, Store {
  late final _$notesAtom = Atom(name: '_NotesVmBase.notes', context: context);

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
      Atom(name: '_NotesVmBase.notesFiltered', context: context);

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

  late final _$_NotesVmBaseActionController =
      ActionController(name: '_NotesVmBase', context: context);

  @override
  dynamic setNotes({required List<CardInfo> newNotes}) {
    final _$actionInfo = _$_NotesVmBaseActionController.startAction(
        name: '_NotesVmBase.setNotes');
    try {
      return super.setNotes(newNotes: newNotes);
    } finally {
      _$_NotesVmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setNotesFiltered({required List<CardInfo> newNotes}) {
    final _$actionInfo = _$_NotesVmBaseActionController.startAction(
        name: '_NotesVmBase.setNotesFiltered');
    try {
      return super.setNotesFiltered(newNotes: newNotes);
    } finally {
      _$_NotesVmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setInitialNotes({required List<CardInfo> newNotes}) {
    final _$actionInfo = _$_NotesVmBaseActionController.startAction(
        name: '_NotesVmBase.setInitialNotes');
    try {
      return super.setInitialNotes(newNotes: newNotes);
    } finally {
      _$_NotesVmBaseActionController.endAction(_$actionInfo);
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
