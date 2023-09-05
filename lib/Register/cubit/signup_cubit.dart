import 'package:bloc/bloc.dart';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
// import 'package:get/get.dart';
import 'package:meta/meta.dart';

import '../../Login_screen/LoginScreen.dart';
import '../../helper/DioHelper.dart';
import '../model/SignupModel.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitial());


  DioHelper _dioHelper=DioHelper();
  SignupModel signupModel=SignupModel();

  void signup({
    required String name,
    required String phone,
    required String email,
    required String password,
})async{
    emit(SignUpLoadingState());
    try{
      final response=await DioHelper.postdata(path: "register",
      body: {
        "name":name,
          "phone":phone,
          "email":email,
          "password":password
          }
      );
      signupModel=SignupModel.fromJson(response.data);
      if(signupModel.status==true) {
        Get.offAll(LoginScreen());
        emit(SignUpSuccessState());
      }
      else{
        Get.snackbar("Error", signupModel.message??"",backgroundColor: Colors.red);
        emit(SignUpErrorState());
      }
    }catch(e){
      emit(SignUpErrorState());

    }


  }


}
