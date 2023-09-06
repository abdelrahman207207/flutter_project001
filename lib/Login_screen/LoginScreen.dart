import 'package:Food_Station/Register/Register_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'cubit/login_cubit.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController=TextEditingController();
  final _passwordController=TextEditingController();
  bool _showPass=true;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.orange,
        body: Container(
          width: double.infinity,
          child: Center(
             child: Padding(
               padding: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
              child:SingleChildScrollView(
                child:Column(
                  children: [
                    SizedBox(height: 100,),
                    Image(image:NetworkImage("https://cdn-icons-png.flaticon.com/512/2771/2771401.png",),width: 100,height: 100,),
                    SizedBox(height: 50,),
                    Container(
                      height:555 ,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))
                          ,color:Colors.white ),
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(AppLocalizations.of(context)!.enteraccount,
                              style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                            SizedBox(height: 10,),
                            Text(AppLocalizations.of(context)!.logintocontonue,
                                style:TextStyle(color: Colors.grey,fontSize: 15,)),
                            SizedBox(height: 30,),

                            SizedBox(height: 20,),
                            Text(AppLocalizations.of(context)!.email,
                                style:TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),
                            TextField(controller: _emailController,
                              onChanged: (value) {
                            },keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(hintText: "dvin.wong@gmail.com",
                                  filled: true ,
                                  suffixIcon: (IconButton(icon: Icon(Icons.verified_outlined),onPressed: (){},))  ), ),
                            SizedBox(height: 20,),
                            Text(AppLocalizations.of(context)!.password,
                                style:TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),
                            TextField(controller: _passwordController,
                              obscureText: _showPass,
                              decoration: InputDecoration(
                                  filled: true   ,
                                hintText: "*********",
                                suffixIcon: (IconButton(icon: Icon(Icons.remove_red_eye),onPressed: (){
                                    if(_showPass){
                                    _showPass=false;
                                  }else{
                                    _showPass=true;
                                  }
                                  setState(() {});
                                    },))
                              ,),

                            ),
                            SizedBox(height: 50,),
                            BlocBuilder<LoginCubit, LoginState>(
                                builder: (context, state) {
                                  if(state is LoginLoadingState){
                                    return Center(child: CircularProgressIndicator(),);
                                  }
                                  return InkWell(
                                    onTap: (){
                                      // if(_formKey.currentState!.validate()){
                                        context.read<LoginCubit>().login(email: _emailController.text,
                                            password: _passwordController.text);
                                        print(state);
                                      // }
                                    },
                                    child: Container(width: 350,height: 60,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Colors.green ),
                                           child: Center(child: Text(AppLocalizations.of(context)!.login,style: TextStyle(color:Colors.white),)),),
                                             );
                                          },
                                        ),
                            SizedBox(height: 20,),

                            Row(mainAxisSize: MainAxisSize.min,children: [
                              SizedBox(width: 60,),
                              Text("Already have an account? ",style: TextStyle(color: Colors.grey),),
                              InkWell(
                                onTap:()=>
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const SignupScreen())),
                                  child: Text("Signup ",style: TextStyle(color: Colors.blueAccent),))

                            ],),
                          ],
                        ),
                      ),)
                  ],) ,) ,),
          ),)
    );
  }
}