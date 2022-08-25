import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';
import 'package:with_figma/Registration.dart';
class Home_Page extends StatefulWidget {
  const Home_Page({super.key});
  @override
  State<Home_Page> createState() => _Home_PageState();
}
class _Home_PageState extends State<Home_Page> with TickerProviderStateMixin{
int rememB=1;
int rememA=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home:Scaffold(
        body: AnimatedBackground(
          behaviour: RandomParticleBehaviour(
            options:const ParticleOptions(
             opacityChangeRate: 0.02,
             spawnMaxSpeed: 170
            )
          ),
      vsync:this,
          child: Padding(
            padding:  EdgeInsets.only(top: 170),
            child:Column(
              children: [
              const  Center(
                  child: Text('Sign in',
                  style: TextStyle(
                    color: Color(0xff224957),
                    fontSize: 55,
                    fontWeight: FontWeight.w500,
                  ),),
                ),
              const SizedBox(
                  height: 45,
                ),
              const  Center(
                  child: Text('Sign in and start managing your candidates!',
                  style: TextStyle(
                    color: Color(0xff224957),
                    fontSize: 15,
                  
                  ),),
                ),
               const SizedBox(
                  height: 25,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: Container(
                      decoration: BoxDecoration(
                        color:const Color(0xff224957),
                        borderRadius: BorderRadius.circular(9)
                      ),
                      child: TextFormField(
                        onChanged:(value) {
                          setState(() {
                          });
                        },
                       keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          
                          labelText: 'Login',labelStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                          ),
                          fillColor: Color(0xff224957),
                           enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(9)),
                                 ),
                                   focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(9)),
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1))
                        ),
                      ),
                    ),
                  ),
                ),
                 const SizedBox(
                  height: 40,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: Container(
                      decoration: BoxDecoration(
                        color:const Color(0xff224957),
                        borderRadius: BorderRadius.circular(9)
                      ),
                      child: TextFormField(
                        onChanged:(value) {
                          setState(() {
                          });
                        },
                       keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          
                          labelText: 'Password',labelStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                          ),
                          fillColor: Color(0xff224957),
                           enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(9)),
                                 ),
                                   focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(9)),
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1))
                        ),
                      ),
                    ),
                  ),
                ),
               const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (() {
                        setState(() {
                         if(rememB==rememA){
                          rememA=0;
                         }
                         else if(rememB!=rememA){
                          rememA=1;
                         }
                        });
                      }),
                      child: Icon(Icons.rectangle,
                      color:rememB==rememA? Color(0xff20DF7F):Colors.grey[300]
                      ),
                    ),
                   const Text('Remember me',
                    style: TextStyle(
                    color: Color(0xff224957),
                    fontSize: 15,
                  )
                    ),
                   const SizedBox(
                      width: 100,
                    ),
                 InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: ((context) {
                      return const Registration();
                    })));
                  },
                   child: const   Text('Forgot password?',
                       style: TextStyle(
                      color: Color(0xff224957),
                      fontSize: 15,
                    )
                      ),
                 )
                  ],
                ),
              const  SizedBox(
                  height: 30,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: InkWell(
                      child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                      color: const Color(0xff20DF7F),
                      ),
                      child:const Center(
                        child:  Text('Login',
                        style: TextStyle(
                                color: Color(0xff224957),
                                fontSize: 19,
                                fontWeight: FontWeight.w600
                              ),
                        
                        ),
                      ),
                                  ),
                    ),
                  )),
                  SizedBox(height: 113),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                  width: double.infinity,
                   
                      child: Image.asset('assets/images/4.jpg',fit: BoxFit.cover,)),
                  )
              ],
            )
          ),
        ),
        )
    );
  }
}