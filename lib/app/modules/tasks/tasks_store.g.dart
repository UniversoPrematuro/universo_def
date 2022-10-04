// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TasksStore on _TasksStoreBase, Store {
  late final _$escolhaUserAtom =
      Atom(name: '_TasksStoreBase.escolhaUser', context: context);

  @override
  String? get escolhaUser {
    _$escolhaUserAtom.reportRead();
    return super.escolhaUser;
  }

  @override
  set escolhaUser(String? value) {
    _$escolhaUserAtom.reportWrite(value, super.escolhaUser, () {
      super.escolhaUser = value;
    });
  }

  late final _$uidAtom = Atom(name: '_TasksStoreBase.uid', context: context);

  @override
  String? get uid {
    _$uidAtom.reportRead();
    return super.uid;
  }

  @override
  set uid(String? value) {
    _$uidAtom.reportWrite(value, super.uid, () {
      super.uid = value;
    });
  }

  late final _$groupAtom =
      Atom(name: '_TasksStoreBase.group', context: context);

  @override
  String get group {
    _$groupAtom.reportRead();
    return super.group;
  }

  @override
  set group(String value) {
    _$groupAtom.reportWrite(value, super.group, () {
      super.group = value;
    });
  }

  late final _$taskAtom = Atom(name: '_TasksStoreBase.task', context: context);

  @override
  String? get task {
    _$taskAtom.reportRead();
    return super.task;
  }

  @override
  set task(String? value) {
    _$taskAtom.reportWrite(value, super.task, () {
      super.task = value;
    });
  }

  late final _$statusAtom =
      Atom(name: '_TasksStoreBase.status', context: context);

  @override
  String? get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(String? value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

  late final _$answerAtom =
      Atom(name: '_TasksStoreBase.answer', context: context);

  @override
  String? get answer {
    _$answerAtom.reportRead();
    return super.answer;
  }

  @override
  set answer(String? value) {
    _$answerAtom.reportWrite(value, super.answer, () {
      super.answer = value;
    });
  }

  late final _$characterAtom =
      Atom(name: '_TasksStoreBase.character', context: context);

  @override
  SingingCharacter? get character {
    _$characterAtom.reportRead();
    return super.character;
  }

  @override
  set character(SingingCharacter? value) {
    _$characterAtom.reportWrite(value, super.character, () {
      super.character = value;
    });
  }

  late final _$escolhaUAtom =
      Atom(name: '_TasksStoreBase.escolhaU', context: context);

  @override
  String? get escolhaU {
    _$escolhaUAtom.reportRead();
    return super.escolhaU;
  }

  @override
  set escolhaU(String? value) {
    _$escolhaUAtom.reportWrite(value, super.escolhaU, () {
      super.escolhaU = value;
    });
  }

  late final _$taskControllerAtom =
      Atom(name: '_TasksStoreBase.taskController', context: context);

  @override
  StreamController<List<Task>> get taskController {
    _$taskControllerAtom.reportRead();
    return super.taskController;
  }

  @override
  set taskController(StreamController<List<Task>> value) {
    _$taskControllerAtom.reportWrite(value, super.taskController, () {
      super.taskController = value;
    });
  }

  late final _$uploadTaskToFirebaseAsyncAction =
      AsyncAction('_TasksStoreBase.uploadTaskToFirebase', context: context);

  @override
  Future<void> uploadTaskToFirebase(String? uid, String? task, String? answer) {
    return _$uploadTaskToFirebaseAsyncAction
        .run(() => super.uploadTaskToFirebase(uid, task, answer));
  }

  late final _$getTasksFromFirebaseAsyncAction =
      AsyncAction('_TasksStoreBase.getTasksFromFirebase', context: context);

  @override
  Future getTasksFromFirebase(String uid, String group) {
    return _$getTasksFromFirebaseAsyncAction
        .run(() => super.getTasksFromFirebase(uid, group));
  }

  @override
  String toString() {
    return '''
escolhaUser: ${escolhaUser},
uid: ${uid},
group: ${group},
task: ${task},
status: ${status},
answer: ${answer},
character: ${character},
escolhaU: ${escolhaU},
taskController: ${taskController}
    ''';
  }
}
