

import 'package:bookia_app/core/networking/api_constatns.dart';
import 'package:bookia_app/core/networking/dio_helper.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepo {

 static Future<bool> login({required String email, required String password}) async{
    try{
        final response = await  DioHelper.dio?.post(ApiConstatns.login,
          data: {
          "email": email,
          "password":password,
      }
      );
        if(response?.statusCode==200){
          saveUserToken(response?.data["data"]["token"]);
          return true;
        }else{
          return false;
        }
    }catch(e){
      return false;
    }
  }

  static Future<void> saveUserToken(String token) async{
   final SharedPreferences prefs = await SharedPreferences.getInstance();

   prefs.setString("token", token); 
  }

 static Future<bool> register({required String name, required String email, required String password, required String confirmPassword}) async{
   try{
     final response = await DioHelper.dio?.post("${ApiConstatns.baseUrl}${ApiConstatns.register}",
         data: {
           "name": name,
           "email": email,
           "password":password,
           "password_confirmation": confirmPassword,
         }
     );
     if(response?.statusCode==200){
       saveUserToken(response?.data["data"]["token"]);
       return true;
     }else{
       return false;
     }
   }catch(e){
     print(e.toString());
     return false;
   }
 }

}