import 'package:flutter/material.dart';
import 'package:task_app/data_pass.dart';

import 'main.dart';

class textForm extends StatefulWidget {
  const textForm({super.key});

  @override
  State<textForm> createState() => _textFormState();
}

class _textFormState extends State<textForm> {
  bool tap=true;
  TextEditingController name_controller=TextEditingController();
  TextEditingController number_controller=TextEditingController();
  TextEditingController email_controller=TextEditingController();
  TextEditingController password_controller=TextEditingController();
  TextEditingController address_controller=TextEditingController();
  final numbervallidation =RegExp(r'[0-9]{10}');
   final emailvallidation =RegExp(r"^[a-z0-9.a-z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-z0-9]+\.[a-z]+");
   final passwordvallidation=RegExp( r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
   final formkey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: width*2,
          width: width*1,
          padding: EdgeInsets.all(width*0.03),
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextFormField(
                  controller: name_controller,
                  textCapitalization: TextCapitalization.words,
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.done,
                  style: TextStyle(
                    fontSize: width*0.05,
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: InputDecoration(
                     suffixIcon: Icon(Icons.person),
                    //   prefixStyle: TextStyle(
                    //       fontSize: width*0.05,
                    //       fontWeight: FontWeight.w700
                    //   ),
                      labelText: "Name",
                      labelStyle: TextStyle(
                        fontSize: width*0.05,
                        fontWeight: FontWeight.w600,
                      ),
                      hintText: "pleace enter your name",
                      hintStyle: TextStyle(
                        fontSize: width*0.05,
                        fontWeight: FontWeight.w600,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width*0.03),
                          borderSide: BorderSide(
                            color: Colors.red,
                          )
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width*0.1),
                          borderSide: BorderSide(
                            color: Colors.green,
                          )
                      )
                  ),
                ),
                TextFormField(
                  controller: number_controller,

                  textCapitalization: TextCapitalization.words,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  maxLength: 10,
                  style: TextStyle(
                    fontSize: width*0.05,
                    fontWeight: FontWeight.w600,
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if(!numbervallidation.hasMatch(value!))
                      {
                        return "enter valid number";

                      }
                    else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                     suffixIcon: Icon(Icons.call),
                    //   prefixStyle: TextStyle(
                    //       fontSize: width*0.05,
                    //       fontWeight: FontWeight.w700
                    //   ),
                      labelText: "Number",
                      labelStyle: TextStyle(
                        fontSize: width*0.05,
                        fontWeight: FontWeight.w600,
                      ),
                      hintText: "pleace enter your number",
                      hintStyle: TextStyle(
                        fontSize: width*0.05,
                        fontWeight: FontWeight.w600,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width*0.1),
                          borderSide: BorderSide(
                            color: Colors.green,
                          )
                      )
                  ),
                ),
                TextFormField(
                  // onChanged: (value) {
                  //   email_controller.text = value.toLowerCase();
                  // },
                  controller: email_controller,
                  // textCapitalization: TextCapitalization.words,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.done,
                  style: TextStyle(
                    fontSize: width*0.05,
                    fontWeight: FontWeight.w600,
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if(!emailvallidation.hasMatch(value!))
                    {
                      return "enter valid email";

                    }
                    else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                     suffixIcon: Icon(Icons.mail),
                      labelText: "email",
                      labelStyle: TextStyle(
                        fontSize: width*0.05,
                        fontWeight: FontWeight.w600,
                      ),
                      hintText: "pleace enter your email",
                      hintStyle: TextStyle(
                        fontSize: width*0.05,
                        fontWeight: FontWeight.w600,
                      ),

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width*0.1),
                          borderSide: BorderSide(
                            color: Colors.green,
                          )
                      )
                  ),
                ),
                TextFormField(
                  controller: password_controller,
                  textCapitalization: TextCapitalization.words,
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.done,
                  obscureText:tap?true:false,
                  // obscuringCharacter: "*",
                  maxLength: 8,
                  style: TextStyle(
                    fontSize: width*0.05,
                    fontWeight: FontWeight.w600,
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                     if(!passwordvallidation.hasMatch(value!))
                       {
                         return "enter valid password";
                       }
                     else{
                       return null;
                     }
                  },
                  decoration: InputDecoration(
                     suffixIcon: InkWell(
                         onTap: () {
                           tap=!tap;
                           setState(() {

                           });
                         },
                         child:Icon(tap?Icons.visibility_off:Icons.visibility)
                     ),
                      labelText: "Password",
                      labelStyle: TextStyle(
                        fontSize: width*0.05,
                        fontWeight: FontWeight.w600,
                      ),
                      hintText: "pleace enter your password",
                      hintStyle: TextStyle(
                        fontSize: width*0.05,
                        fontWeight: FontWeight.w600,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width*0.1),
                          borderSide: BorderSide(

                          )
                      )
                  ),
                ),
                TextFormField(
                  controller: address_controller,
                  textCapitalization: TextCapitalization.words,
                  keyboardType: TextInputType.streetAddress,
                  textInputAction: TextInputAction.newline,
                  maxLines: 5,
                  minLines: 5,
                  style: TextStyle(
                    fontSize: width*0.05,
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.note_alt),
                      labelText: "Address",
                      labelStyle: TextStyle(
                        fontSize: width*0.05,
                        fontWeight: FontWeight.w600,
                      ),
                      hintText: "pleace enter your address",
                      hintStyle: TextStyle(
                        fontSize: width*0.05,
                        fontWeight: FontWeight.w600,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width*0.03),
                          borderSide: BorderSide(
                            color: Colors.red,
                          )
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width*0.1),
                          borderSide: BorderSide(
                            color: Colors.green,
                          )
                      )
                  ),


                ),
                InkWell(
                  onTap: () {
                    if(name_controller.text!=""&& number_controller.text!=""&&
                        email_controller.text!=""&& password_controller.text!=""&&
                        address_controller.text!=""&& formkey.currentState!.validate()
                    )
                    {
                      print(name_controller);
                      print(number_controller);
                      print(email_controller);
                      print(password_controller);
                      print(address_controller);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => dataPass(
                        name: name_controller.text,
                        number: number_controller.text,
                        email: email_controller.text,
                        password: password_controller.text,
                        address: address_controller.text,
                      ),
                      )
                      );
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Center(child: Text("Submited Successfuly! "))));
                      // name_controller.clear();
                      // number_controller.clear();
                      // email_controller.clear();
                      // password_controller.clear();
                      // address_controller.clear();
                    }
                    else{
                      name_controller.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please enter your name!"))):
                      number_controller.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please enter your number!"))):
                      email_controller.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please enter your email!"))):
                      password_controller.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please enter your password!"))):
                    address_controller.text==""? ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please enter your address!"))):
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("pleace enter your valid details")));
                    }

                  },
                  child: Container(
                    height: width*0.08,
                    width: width*0.2,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(width*0.03)
                    ),
                    child: Center(
                      child: Text(
                        "submit",
                        style: TextStyle(
                            color: Colors.white
                        ),

                      ),
                    ),
                  ),
                ),

              ],

            ),
          ),
        ),
      ),
    );
  }
}
