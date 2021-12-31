import 'package:flutter_secure_storage/flutter_secure_storage.dart';



class Preferences{

  static final FlutterSecureStorage _secureStorage = FlutterSecureStorage();



  static Future write({required String key, required String value})async{

    if(key.isEmpty && value.isEmpty) throw "Cannot write empty key and value";

    var writtenData = await _secureStorage.write(key: key, value: value,);

    return writtenData;
  }


  static Future read({required String key})async{

    if(key.isEmpty) throw "Cannot read empty key";

    var readData = await _secureStorage.read(key: key);

    return readData;
  }


  static Future readAll()async{

    Map<String, String> readAllData = await _secureStorage.readAll();

    return readAllData;
  }


  static Future delete({required String key})async{

    if(key.isEmpty) throw "Cannot delete empty key";

    var deleteData = await _secureStorage.delete(key: key);

    return deleteData;
  }


  static Future deleteAll()async{

    var deleteAllData = await _secureStorage.deleteAll();

    return deleteAllData;
  }

}


class StoreKey{

  static const userDetails = "userDetails";

}