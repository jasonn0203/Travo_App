//* Using Singleton design patern to save the local variables that can use in the app globally
//* - Singletons can be useful in cases where you need to ensure that there is only one instance of a class. For example, you might use a singleton to store global state or to provide a shared resource

//! --------------------------------------------- Declaration --------------------------------

import 'package:hive_flutter/hive_flutter.dart';

class LocalStorageHelper {
  //* Constructor (private)
  LocalStorageHelper._local();

  //* static property is created that holds the instance of the class
  static final LocalStorageHelper _shared = LocalStorageHelper._local();

  //* a special method that can be used to create instances of a class
  factory LocalStorageHelper() {
    return _shared;
  }

  //Store value using Hive
  Box<dynamic>? hiveBox; //Create Box object

  //Initialize the object
  static initLocalStorageHelper() async {
    _shared.hiveBox = await Hive.openBox('TravoApp');
  }

  //Get value
  static dynamic getValue(String key) {
    return _shared.hiveBox?.get(key);
  }

  //set value
  static setValue(String key, dynamic value) {
    _shared.hiveBox?.put(key, value);
  }
}


//! --------------------------------------------- Explanation --------------------------------
/**
 * When you call the LocalStorageHelper() method, it will:

  *? 1. Check if the _shared property is null.
  *? 2. If it is, it will create a new instance of the class and store it in the _shared property.
  *? 3. If it is not null, it will simply return the value of the property.

  This means that the LocalStorageHelper() method will always return the same instance of the class, no matter how many times you call it.

 */