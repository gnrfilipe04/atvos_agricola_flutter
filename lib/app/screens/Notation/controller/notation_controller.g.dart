// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notation_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NotationController on _NotationControllerBase, Store {
  late final _$typeNoteAtom =
      Atom(name: '_NotationControllerBase.typeNote', context: context);

  @override
  String get typeNote {
    _$typeNoteAtom.reportRead();
    return super.typeNote;
  }

  @override
  set typeNote(String value) {
    _$typeNoteAtom.reportWrite(value, super.typeNote, () {
      super.typeNote = value;
    });
  }

  late final _$_NotationControllerBaseActionController =
      ActionController(name: '_NotationControllerBase', context: context);

  @override
  dynamic init() {
    final _$actionInfo = _$_NotationControllerBaseActionController.startAction(
        name: '_NotationControllerBase.init');
    try {
      return super.init();
    } finally {
      _$_NotationControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
typeNote: ${typeNote}
    ''';
  }
}
