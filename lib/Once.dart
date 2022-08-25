import 'package:flutter/material.dart';
import 'package:animated_background/animated_background.dart';
import 'package:with_figma/Home_page.dart';
import 'package:with_figma/Registration.dart';
class Once extends StatefulWidget {
  const Once({super.key});

  @override
  State<Once> createState() => _OnceState();
}

class _OnceState extends State<Once> with TickerProviderStateMixin{
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
            padding:  EdgeInsets.only(top: 170,),
            child:Column(
              children: [
              const  Center(
                
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(' Welcome to our application',
                    style: TextStyle(
                      color: Color(0xff224957),
                      fontSize: 55,
                      fontWeight: FontWeight.w500,
                    ),),
                  ),
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
            
              const  SizedBox(
                  height: 90,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, 
                        MaterialPageRoute(builder: ((context) {
                          return const Home_Page();
                        })));
                      },
                      child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                      color: const Color(0xff20DF7F),
                      ),
                      child:const Center(
                        child:  Text('Sign in',
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
                    const  SizedBox(
                  height: 30,
                ),
                   Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: ((context) {
                          return const  Registration();
                        })));
                      },
                      child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                      color: const Color(0xff20DF7F),
                      ),
                      child:const Center(
                        child:  Text('Registation',
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
                const   SizedBox(height: 133),
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