
import 'package:flutter/material.dart';
import 'package:ui_sample/screen/home_screen.dart';
import 'package:ui_sample/utils/app_colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children :[ 
          Column(
          children: [
            Container(
              width: size.width,
              height: 250,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/background.JPG'), fit: BoxFit.cover)
              ),
              child: Center(
               child:  Image.asset('assets/img/logo.png', scale: 7,)
              ),
            ),
      
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Login or Register To Book\nYour Appointments',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black
                  ),),
      
                  const SizedBox(height: 40,),
      
                  const Padding(
                    padding:  EdgeInsets.only(left : 10.0),
                    child:  Text('Email', 
                    style: TextStyle(
                      fontSize: 17,
                      color: AppColors.black
                    ),),
                  ),
                   const SizedBox(height: 10,),
                  TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(10)),
                      fillColor: AppColors.light,
                      filled: true,
                      hintText: 'Enter your email'
                  
                    ),
                  ),
      
                  const SizedBox(height: 20,),
                  const Padding(
                    padding:  EdgeInsets.only(left : 10.0),
                    child:  Text('Password', 
                    style: TextStyle(
                      fontSize: 17,
                      color: AppColors.black
                    ),),
                  ),
                   const SizedBox(height: 10,),
                  TextField(
                    maxLength: 8,
                    decoration: InputDecoration(counterText: '',
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(10)),
                      fillColor: AppColors.light,
                      filled: true,
                      hintText: 'Enter your password'
                  
                    ),
                  ),
      
      
                 const SizedBox(height: 70,),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> const HomeScreen()));
                    },
                    child: Container(
                      height: 50,
                      width: size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.buttonColor,
                      ),
                      child: const Center(child: Text('Login',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: AppColors.light,
                      ),)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),

        const Positioned(
          bottom: 30,
          left: 20,
          right: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('By creating or logging in to an account you are agreeing',
              style: TextStyle(
                fontSize: 13
              ),),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text('with our',
              style: TextStyle(
                fontSize: 13
              ),),

              Text(' Terms and Conditions ',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 13
              ),),
              Text('and',
              style: TextStyle(
                fontSize: 13
              ),),

              Text(' Privacy Policy.',
              style: TextStyle(
                fontSize: 13,
                 color: Colors.blue,
              ),),
                ],
              ),
            ],
          ))
        ],
      ),
      );
    
  }
}