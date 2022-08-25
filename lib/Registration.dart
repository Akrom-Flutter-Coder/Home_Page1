import 'package:flutter/material.dart';
import 'package:animated_background/animated_background.dart';
import 'package:with_figma/Home_page.dart';
class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration>with TickerProviderStateMixin {
  int rememB=1;
int rememA=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body: AnimatedBackground(
          behaviour: RandomParticleBehaviour(
            options:const  ParticleOptions(
             opacityChangeRate: 0.02,
             spawnMaxSpeed: 170
            )
          ),
          
      vsync:this,
          child: Padding(
            padding:const  EdgeInsets.only(top: 170),
            child:Column(
              children: [
              const  Center(
                  child: Text('Registration',
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
                          
                          labelText: 'Create Login',labelStyle: TextStyle(
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
                          
                          labelText: 'Create Password',labelStyle: TextStyle(
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
                Padding(
                  padding: const EdgeInsets.only(left: 40,right: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        child: Row(
                          children: [
                             Icon(Icons.rectangle,
                          color:rememB==rememA? Color(0xff20DF7F):Colors.grey[300]
                          ),
                             const Text('Remember me',
                      style: TextStyle(
                      color: Color(0xff224957),
                      fontSize: 15,
                    )
                      ),

                          ],
                        ),
                      ),
                    
                  
                      
                        InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: ((context) {
                      return const Home_Page();
                    })));
                  },
                   child: const   Text(' sing in ',
                       style: TextStyle(
                      color: Color(0xff224957),
                      fontSize: 15,
                    )
                      ),
                 )
                     
                   
                    ],
                  ),
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