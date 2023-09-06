import 'package:Food_Station/locationPage.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../category.dart';
import '../../helper/DioHelper.dart';
import '../../helper/hive_helper.dart';
import '../Model/LoginModel.dart';
part 'login_state.dart';




class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  DioHelper dioHelper=DioHelper();
  LoginModel loginModel=LoginModel();

  void login({required String email
    ,required String password})
  async{
      emit(LoginLoadingState());
      try{
        final response=await DioHelper.postdata(
          path: "login",
          body: {
            "email":email,
            "password":password
          }
        );
        loginModel=LoginModel.fromJson(response.data);
        if(loginModel.status==true){
          HiveHelper.setToken(loginModel.data!.token!);
          DioHelper.headers["Authorization"]=loginModel.data?.token;
          Get.to(locationPage());
          Get.snackbar("Success", loginModel.message??"",backgroundColor: Colors.white);
          print("///////////////////////");
          print(loginModel.data?.token??"");
          emit(LoginSuccessState());
        }else{
          print("xxxxxxxxxxxxxxxxxxxxxx");
          Get.snackbar("Error", loginModel.message??"",backgroundColor: Colors.red);
          emit(LoginErrorState());
        }
      }
      catch(e){
        emit(LoginErrorState());
      }
    

  }

}
