import 'package:flutter_test/flutter_test.dart';
import 'package:universo_def/app/modules/news/news_store.dart';
 
void main() {
  late NewsStore store;

  setUpAll(() {
    store = NewsStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}