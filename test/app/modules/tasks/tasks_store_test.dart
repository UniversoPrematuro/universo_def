import 'package:flutter_test/flutter_test.dart';
import 'package:universo_def/app/modules/tasks/tasks_store.dart';
 
void main() {
  late TasksStore store;

  setUpAll(() {
    store = TasksStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}