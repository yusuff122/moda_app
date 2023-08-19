import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DetaySayfa extends StatefulWidget {
  String img;
   DetaySayfa({required this.img});

  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children:[ Hero(
          tag: widget.img,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(widget.img),fit: BoxFit.cover)
            ),
          ),
          ),

          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Material(
              borderRadius: BorderRadius.circular(10),

             child: Container(
              height: 210,
              width: MediaQuery.of(context).size.width-60,
              decoration: BoxDecoration(color: Colors.white,
              borderRadius: BorderRadius.circular(15)
              ),

              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          height: 120,
                          width: 100,
                          
                          decoration: BoxDecoration(
                            color: Colors.white54,
                            border: Border.all(color: Colors.grey),
                            image: DecorationImage(image: AssetImage('assets/dress.jpg'))
                          ),
                        ),
                      ),
                      Column(
                       
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('LAMINATED', style: TextStyle(fontSize: 25, fontFamily: 'ozelFont', fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Text('Louis vuitton', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black45),),
                              SizedBox(width: 15,),
                              Icon(Icons.add_alert_rounded,color: Colors.black, )
                            ],
                          ),
                          SizedBox(height: 10,),
                          Container(
                           
                            width: MediaQuery.of(context).size.width-170,
                            height: 30,
                            child: Text('Clothing, all kinds of clothing and accessories  that cover part or all of the body', style: TextStyle(fontSize: 13,color: Colors.black54),),
                          ),

                          //SizedBox(height: 10,),
                          
                          
                        ],
                      ),
                      
                    ],
                  ),
                  Divider(color: Colors.black54,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Padding(
                        padding:  EdgeInsets.only(left: 30, top: 5),
                        child: Text('\$6000',style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),),
                      ),
                      Container(margin: EdgeInsets.only(right: 15),height : 40,child: FloatingActionButton(onPressed: (){}, child: Icon(Icons.arrow_forward_ios),backgroundColor: Colors.brown  ,))
                    ],
                  )
                ],
              ),
             )
            ),
           )
      ]),
    );
  }
}