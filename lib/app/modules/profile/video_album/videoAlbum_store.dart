import 'package:mobx/mobx.dart';

part 'videoAlbum_store.g.dart';

class VideoAlbumStore = _VideoAlbumStoreBase with _$VideoAlbumStore;
abstract class _VideoAlbumStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}