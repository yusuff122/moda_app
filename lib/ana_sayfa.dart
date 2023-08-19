import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_icon_snackbar/flutter_icon_snackbar.dart';
import 'package:moda_app/detay_sayfa.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> with SingleTickerProviderStateMixin{

  late TabController _tabController;

   @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }
  
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      bottomNavigationBar: Material(
        
        color: Colors.white,
        child: TabBar(

          controller: _tabController,
          tabs: [
           Tab(icon:Icon( Icons.more,color: Colors.black,size: 17,), ),
           Tab(icon:Icon( Icons.play_arrow,color: Colors.black, size: 22,), ),
           Tab(icon:Icon( Icons.navigation,color: Colors.black, size: 20,), ),
           Tab(icon:Icon( Icons.supervised_user_circle,color: Colors.black, size: 20,), ),
        ]),
      ),

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Moda Uygulaması",style: TextStyle(fontFamily: 'ozelFont', color: Colors.black87, fontSize: 25, fontWeight: FontWeight.bold)),

        actions: [
          IconButton(onPressed: () {
            
          }, icon: Icon(Icons.camera_alt_outlined, color: Colors.black, size: 30,))
        ],
      ),


      body: ListView(

         children: [
          Container(
            //color: Colors.blue,
            height: 150,
            width: double.infinity,

            child: ListView(
              
              padding: EdgeInsets.all(15),
              scrollDirection: Axis.horizontal,
              children: [
                listeElamani('assets/chanellogo.jpg','assets/model1.jpeg'),
                SizedBox(width: 17,), 
                listeElamani('assets/chanellogo.jpg','assets/model2.jpeg'),
                SizedBox(width: 17,), 
                listeElamani('assets/chanellogo.jpg','assets/model3.jpeg'),
                 SizedBox(width: 17,), 
                listeElamani('assets/chanellogo.jpg','assets/model1.jpeg'),
                 SizedBox(width: 17,), 
                listeElamani('assets/chanellogo.jpg','assets/model2.jpeg'), 
                SizedBox(width: 17,), 
                listeElamani('assets/chanellogo.jpg','assets/model3.jpeg'), 
              ],
            ),
          ),
          
          Padding(

            padding: EdgeInsets.all(10),
            child: Material(

              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              elevation: 15,
              child: Container(
                height: 470,
                width: double.infinity,
                padding: EdgeInsets.all(15),

                child: Column(
                  children: [

                  Row(
                    children: [

                      Container(
                       
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(image: AssetImage('assets/model3.jpeg'),fit: BoxFit.cover)
                        ),
                      ),
                      SizedBox(width: 10,),

                      Container(
                        width: MediaQuery.of(context).size.width-150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Daisy',style: TextStyle(fontFamily:'ozelFont',fontSize: 20,fontWeight: FontWeight.bold ),),
                            Text('34 mins ago',style: TextStyle(fontSize: 12),)
                          ]
                        ),
                      ),
                      Icon(Icons.more_vert_outlined)

                    ],
                  ),
                  
                  SizedBox(height: 10,),
                  Text('Having ideal physique, empathetic, smiling and positive,Trained in modeling'),
                  SizedBox(height: 10,),

                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetaySayfa(img :'assets/modelgrid1.jpeg'),));
                        },
                        child: Hero(
                          tag: 'assets/modelgrid1.jpeg',
                          child: Container(
                            height: 205,
                            width: MediaQuery.of(context).size.width/2-40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(image: AssetImage('assets/modelgrid1.jpeg'),fit: BoxFit.cover)
                            ),
                          ),
                        ),
                      ),

                       SizedBox(width: 15,),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           
                           Container(
                        height: 97,
                        width: MediaQuery.of(context).size.width/2-50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(image: AssetImage('assets/modelgrid2.jpeg'),fit: BoxFit.cover)
                        ),
                      ),

                      SizedBox(height: 10,),

                       InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetaySayfa(img :'assets/modelgrid3.jpeg'),));
                        },
                         child: Hero(
                          tag:'assets/modelgrid3.jpeg' ,
                           child: Container(
                            height: 97,
                            width: MediaQuery.of(context).size.width/2-50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(image: AssetImage('assets/modelgrid3.jpeg'),fit: BoxFit.cover)
                            ),
                                               ),
                         ),
                       ),
                        ],
                      )
                    ],
                    
                  ),

                  SizedBox(height: 10,),

                  Row(
                    children: [
                      Container(
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.purple.shade100,
                          borderRadius: BorderRadius.circular(10)
                          
                          ),
                        child: Center(child: Text('# Luis vuiton',style: TextStyle(fontSize: 12),)),
                      ),

                      SizedBox(width: 5,),
                          Container(
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade100,
                          borderRadius: BorderRadius.circular(10)
                          
                          ),
                        child: Center(child: Text('# Chole',style: TextStyle(fontSize: 12,color: Colors.purple.shade800),)),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Divider(color: Colors.black,),
                  SizedBox(height: 15,),

                 
                   Row(
                    children: [
                      Icon(Icons.reply_all_outlined,color: Colors.brown.shade200,),
                      SizedBox(width: 10),
                      Text('2.3k'),
                       SizedBox(width: 50),
                      Icon(Icons.comment,color: Colors.brown.shade200,),
                      SizedBox(width: 10),
                      Text('200'),
                      SizedBox(width: 50),
                      Icon(Icons.favorite,color: Colors.red,),
                      SizedBox(width: 10),
                      Text('4919'),
                      //SizedBox(width: 10),
                    ],
                   )
                  

                  ],
                ),
            
               
              ),
            ),
          
          ),
          


         ],
      ),
    );
  }
  
  Widget listeElamani(String s, String t) {
     return Column(
      children: [
        Stack(

          children: [
            Container(height: 75, width: 75,
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(image: AssetImage(t),fit: BoxFit.cover)
               ),
            ),
            Positioned(
              top: 47,
              left: 50,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(image: AssetImage(s), fit: BoxFit.cover)
                ),
              ),
            ),

            
          ],
        ),
        SizedBox(height: 10,),
            
            Container(
              height: 30,
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(20)
              ),
              child: TextButton(
                onPressed: () {
                  IconSnackBar.show(context: context, label: 'Followed', snackBarType: SnackBarType.save, duration: Duration(seconds: 3) );
                  
                },
                child: Text('Follow',style: TextStyle(color: Colors.white, fontSize: 12),),
              ),
            )
      ],
     );
  }
  

  
}