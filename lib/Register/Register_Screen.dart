import 'package:Food_Station/Login_screen/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../Login_screen/cubit/login_cubit.dart';
import 'cubit/signup_cubit.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _showPass=true;
  final _emailController=TextEditingController();
  final _passwordController=TextEditingController();
  final _phoneController=TextEditingController();
  final _nameController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepOrange,
        body: Container(
          height:MediaQuery.sizeOf(context).height ,
          width:MediaQuery.sizeOf(context).width,
          child: Center(

            child: Padding(padding: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
              child:SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 100,),
                    Image(image:NetworkImage("https://cdn-icons-png.flaticon.com/512/2771/2771401.png",)
                      ,width: 100,height: 100,),
                    SizedBox(height: 50,),
                      Container(
                        height:570 ,
                        width:MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                        color:Colors.white ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15,top: 10,right: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [Text(AppLocalizations.of(context)!.creataccount,
                              style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                            ),
                               SizedBox(height:10 ,),
                              Text(AppLocalizations.of(context)!.sinuptocontinue,
                                  style:TextStyle(color: Colors.grey,fontSize: 15,)),
                              SizedBox(height: 30,),
                              Text(AppLocalizations.of(context)!.name,
                                  style:TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),
                              TextField(keyboardType: TextInputType.text,
                                controller: _nameController,
                                decoration: InputDecoration(hintText: "Davin Wong",
                                    filled: true   ),
                              ),
                              SizedBox(height: 20,),
                              Text(AppLocalizations.of(context)!.phone,
                                  style:TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),
                              TextField(keyboardType: TextInputType.number,
                                controller: _phoneController,
                                decoration: InputDecoration(hintText: "Davin Wong",
                                    filled: true   ),
                              ),
                              SizedBox(height: 20,),
                              Text(AppLocalizations.of(context)!.email,
                                  style:TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),
                              TextField(
                                controller: _emailController,
                                onChanged: (value) {},
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(hintText: "dvin.wong@gmail.com",
                                    filled: true ,
                                    suffixIcon: (IconButton(icon: Icon(Icons.verified_outlined),
                                      onPressed: (){},))  ), ),
                              SizedBox(height: 20,),
                              Text(AppLocalizations.of(context)!.password,
                                  style:TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),
                              TextField(
                                controller: _passwordController,
                                obscureText: _showPass,
                                decoration: InputDecoration(
                                  hintText: "*********",
                                    filled: true   ,
                                    suffixIcon: (IconButton(icon: Icon(Icons.remove_red_eye),onPressed: (){
                                      if(_showPass){
                                        _showPass=false;
                                      }else{
                                        _showPass=true;
                                      }
                                      setState(() {});
                                    },))),),
                              SizedBox(height: 10,),
                              BlocBuilder<SignupCubit, SignupState>(
                                builder: (context, state) {
                                  if(state is SignUpLoadingState){
                                    return Center(child: CircularProgressIndicator(),);
                                  }
                                  return InkWell(
                                    onTap: (){
                                      // if(_formKey.currentState!.validate()){
                                      context.read<SignupCubit>().signup(name: _nameController.text,
                                          phone: _phoneController.text,
                                          email: _emailController.text,
                                          password: _passwordController.text);
                                      print(state);
                                      // }
                                    },
                                    child: Container(width: 350,height: 60,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:Colors.green ),
                                      child: Center(child: Text(AppLocalizations.of(context)!.signup,
                                        style: TextStyle(color:Colors.white),)),),
                                  );
                                },
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                SizedBox(width: 60,),
                                Text("Already have an account?  ",
                                  style: TextStyle(color: Colors.grey),),
                                  InkWell(
                                      onTap:()=>
                                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const LoginScreen())),
                                      child: Text("Login ",style: TextStyle(color: Colors.blueAccent),))
                              ],),
                            ],
                          ),
                        ),),
                    ]
                  ,),
              ) ,),
          ),)
    );
  }
}
