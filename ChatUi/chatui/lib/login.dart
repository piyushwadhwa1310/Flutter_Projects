import 'package:flutter/material.dart';
import 'homescreen.dart';
import 'register.dart';

class MyLogin extends StatefulWidget {
  static const String routeName = "/login";
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: const BoxDecoration(
         image: DecorationImage(
         image: AssetImage('assets/blurredimage.png'),fit: BoxFit.cover
          )
      ),
     
      child: Scaffold(backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Stack(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(left: 35,top: 130),
              child: const Text('Welcome\nBack',
              style: TextStyle(
              color: Colors.black,
              fontSize: 33,
              ),),
            ),
            SingleChildScrollView(

            child:Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5,right: 35,left: 35),
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) {
                      if(value==null || value.isEmpty){
                        return "Please enter correct username ";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                     fillColor: const Color.fromARGB(255, 255, 253, 253),
                      filled: true,
                      hintText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                  ),
                  const SizedBox(height: 30,),
                  TextFormField(
                    validator: (value) {
                      if(value==null || value.isEmpty){
                        return "Please enter password ";
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: const Color.fromARGB(255, 255, 253, 253),
                      filled: true,
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                  ),
                  const SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Sign In',style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 27, fontWeight: FontWeight.w700,
                      ),),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                        child: IconButton(
                          color: const Color.fromARGB(255, 255, 253, 253),
                          onPressed: () {
                            if(formKey.currentState!.validate()){
                              Navigator.pushReplacementNamed(context, ChatApp.routeName);
                            }
                            
                          }, icon: const Icon(Icons.arrow_forward)),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(onPressed: () {
                        Navigator.pushNamed(context, MyRegister.routeName);
                      },
                       child: const Text('Sign Up',
                       style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 18,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),)),
                      TextButton(onPressed: () {},
                       child: const Text('Forgot Password',
                       style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 18,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),))
                    ],
                  ),
                ],
              )
            )
            )
          ],
        ),
      ),
    );
  }
}