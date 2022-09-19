abstract class ILocalStorage {
  Future save(
      {bool isFile = false, required String key, required dynamic value});
  Future get({bool isFile = false, required String key});
  Future delete({bool isFile = false, required String key});
}
