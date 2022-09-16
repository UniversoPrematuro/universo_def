import 'package:flutter_test/flutter_test.dart';
import 'package:universo_def/app/modules/profile/photoAlbum/photoAlbum_store.dart';
 
void main() {
  late PhotoAlbumStore store;

  setUpAll(() {
    store = PhotoAlbumStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}