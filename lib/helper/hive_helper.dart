import 'package:hive/hive.dart';

class HiveHelper {
  static const myToken="myToken";
  static const myTokenKey="mytokenkey";
  static var myTokenBox=Hive.box(myToken);

  static void setToken(String token)async{
    await myTokenBox.put(myTokenKey, token);
  }

  static Future<String> getToken()async{
    if(myTokenBox!=null){
      return myTokenBox.get(myTokenKey);
    }else{
      return "";
    }
  }
  static void clearToken(){
    myTokenBox.clear();
  }
}