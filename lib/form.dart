import 'package:flutter/material.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {

  final namecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Text("Create Account"),
              const SizedBox(height: 20,),
              
              TextField(
                controller: namecontroller,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hint: Text("Enter Your Full Name"),
                  fillColor: Colors.red,
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),

              SizedBox(height: 20),



              TextField(
                controller: emailcontroller,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hint: Text("Enter Your Email"),
                  fillColor: Colors.red,
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
              )
            ],
          ),
          ),    
      ),
    );
  }
}