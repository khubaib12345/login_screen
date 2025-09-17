import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool rememberMe=false;

  @override
  void dispose() {
    // Always dispose controllers
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login',style: TextStyle(fontSize: 35),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          //  crossAxisAlignment: CrossAxisAlignment.center ,
            children: [
        
              //exemplary logo and app name just to give it natural outlook
        
        
        
              Center(
                child: Column(
                  children: [
                    Icon(Icons.ramen_dining,size:100,color: Colors.deepPurple,),
        
                    SizedBox(height:8,),
                    Text("Yumly",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold,color: Colors.deepPurple),),
        
        
                  ],
                ),
              ),
        
        
              SizedBox(height: 100,),
        
              //email feild
              Text("Enter your email",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
              SizedBox(height: 6,),
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration:  InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
        
                ),
              ),
              const SizedBox(height: 18),
        
        
              ///password feild
        
              Text("Enter your password",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
              SizedBox(height: 6,),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration:  InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(20),
                  ),
                ),
              ),
        
        
              //remember me and forgot password
        
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      
                   Checkbox(
        
                       value: rememberMe,
        
                       onChanged:(value)
                       {
                         setState(() {
                           rememberMe=value ?? false;
                         });
                       },
                   ), Text("RememberMe"),
                      
        
                    ],
                  ),
                  TextButton(
                      onPressed: (){},
                      child: Text("Forgotpassword",style: TextStyle(color: Colors.deepPurple),)
                  )
                ],
              ),
        
        
        
              //sign in button
              const SizedBox(height: 38),
        
              Center(
                child: SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed:(){
                      print("Email:${emailController.text}");
                      print("Password:${passwordController.text}");
                      } ,
                    child: Text("Sign In",style: TextStyle(fontSize: 18,color: Colors.white),),
                  ),
                ),
              ),
              
              SizedBox(height: 18,),
        
              //don't have account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have account?"),
                  GestureDetector(
                    onTap: (){},
                    child: Text("Signup",style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold,fontSize:16),),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
