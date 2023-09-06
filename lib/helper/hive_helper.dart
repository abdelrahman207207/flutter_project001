import 'package:hive/hive.dart';

class HiveHelper {
  static const myToken="myToken";
  static const myTokenKey="mytokenkey";
  static var myTokenBox=Hive.box(myToken);

  static const myData="mydata";
  static const myDataKey="mydatakey";
  static var myDataBox=Hive.box(myData);


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
  static List<Map> data=[{}];


  static void addData(Map text) async {
    data.add(text);
    await myDataBox.put(myDataKey, data);
  }

  static Future<List<Map>> getDatas() async {
    if (myDataBox.isNotEmpty) {
        data = await myDataBox.get(myDataKey);
    return data;
    }else
      return [{}];
  }

}