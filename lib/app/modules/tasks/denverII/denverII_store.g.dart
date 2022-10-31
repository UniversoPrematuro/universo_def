// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'denverII_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DenverIIStore on _DenverIIStoreBase, Store {
  late final _$pageAtom =
      Atom(name: '_DenverIIStoreBase.page', context: context);

  @override
  int get page {
    _$pageAtom.reportRead();
    return super.page;
  }

  @override
  set page(int value) {
    _$pageAtom.reportWrite(value, super.page, () {
      super.page = value;
    });
  }

  late final _$faseAtom =
      Atom(name: '_DenverIIStoreBase.fase', context: context);

  @override
  int? get fase {
    _$faseAtom.reportRead();
    return super.fase;
  }

  @override
  set fase(int? value) {
    _$faseAtom.reportWrite(value, super.fase, () {
      super.fase = value;
    });
  }

  late final _$answersAtom =
      Atom(name: '_DenverIIStoreBase.answers', context: context);

  @override
  Map<dynamic, dynamic>? get answers {
    _$answersAtom.reportRead();
    return super.answers;
  }

  @override
  set answers(Map<dynamic, dynamic>? value) {
    _$answersAtom.reportWrite(value, super.answers, () {
      super.answers = value;
    });
  }

  @override
  String toString() {
    return '''
page: ${page},
fase: ${fase},
answers: ${answers}
    ''';
  }
}
