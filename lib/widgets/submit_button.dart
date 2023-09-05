
import 'package:Food_Station/Orders.dart';
import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  SubmitButton({super.key, required this.name});
  String name;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
         Navigator.of(context).push(MaterialPageRoute(builder: (context)=> orders()));},
      child: Container(
        width: double.infinity,
        height: 62,
        decoration: const ShapeDecoration(
          color: Color(0xFFFF7621),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
        child: Center(
          child: Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'Sen',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
