import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() => runApp(Food());

class Food extends StatelessWidget {
  final List rest = ['assets/download.png','assets/cook.png','assets/hardees.jpg'
  ,'assets/kfc.png','assets/pizza.png','assets/sub.png'];
  final List best = ['Best Taste','Best Price','Best Seller','Best Price'];
  final List names = ['Big Mac','Chicken Bucket', 'Smashed Meal','Combo Meal'];
  final List bestpics = ['assets/bigmac.jpg','assets/bestprice.jpg','assets/combo.jpg'
  ,'assets/meal.jpg'];
  final List restN = ['Macdonalds\'','KFC','Cook Door','Macdonalds\''];
  final List dist = ['2 mi','3 mi','1 mi','6 mi','4 mi','2 mi'];


  void _sheet(context){
    showModalBottomSheet(context: context, 
    builder:(BuildContext context){
      return Container(
      height: 400,
      child: Column(children: [

        ListTile(
          title: Text('OPtion1'),
        ),
        ListTile(
          title: Text('OPtion2'),
        ),
        ListTile(
          title: Text('OPtion3'),
        ),

      ],),  
        
        );
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.white,
            body: Column(children: [
              Container(
                color: Colors.amberAccent,
                child: Column(
                  children: [
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 30.0, 0, 0),
                        child: SizedBox(
                            child: Text(
                          'Food',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w200,
                              color: Colors.grey[601]),
                        )),
                      ),
                    ]),
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 9),
                        child: SizedBox(
                            child: Text(
                          'Delivery app',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[600]),
                        )),
                      ),
                    ]),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 55, 0, 0),
                    child: Text(
                      'Restaurants',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  )
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  height: 170,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                  ),
                  child: ListView.builder(
                    itemCount: rest.length,
                    itemBuilder: (context, index){
                      return GestureDetector(
                        onTap: ()=> _sheet(context) ,
                    child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            child: Stack(
                              children: [
                                Image.asset(rest[index],
                                height: 170,
                                width: 130,
                                fit: BoxFit.cover,
                                ),
                                Positioned(
                                  bottom: 6,
                                  left: 12,
                                  child: Text(dist[index])
                                  )
                              ],
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      );
                    },
                    scrollDirection: Axis.horizontal,
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 5 ),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Popular',
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
                    )),
              ),
              SizedBox(
                height:2,
              ),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    color: Colors.white,
                    child: ListView.builder(
                      itemCount: bestpics.length,
                      itemBuilder: (context, index){

                        return Padding(
                          padding: const EdgeInsets.only(left: 8.0, bottom: 8, right: 8),
                          child: Container(
                            child: Stack(
                              children:[
                                Positioned(
                                  child: Container(
                                    child: ClipRRect(
                                     child: Image.asset(bestpics[index],
                                      fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    width: 130,
                                    height: 130,
                                    ),
                                  bottom: 5,
                                  right: 5,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [

                                        Padding(
                                          padding: const EdgeInsets.only(left: 15.0, top: 15),
                                          child: Text(best[index],
                                          style: TextStyle(color: Colors.grey[601], fontWeight: FontWeight.w300),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 15.0, top: 20),
                                          child: Text(names[index],
                                            style: TextStyle(color: Colors.grey[600],fontSize: 27),
                                            ),
                                        ),
                                         Padding(
                                          padding: const EdgeInsets.only(left: 15.0, top: 2),
                                          child: Text(restN[index],
                                            style: TextStyle(color: Colors.grey[600],fontSize: 15,
                                            fontWeight: FontWeight.w300 ),
                                            ),
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left: 15.0, top: 10),
                                              child: Text('Add to Cart',
                                                style: TextStyle(color: Colors.grey[600],fontSize: 15,
                                                fontWeight: FontWeight.w300),
                                                ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 3),
                                              child: IconButton(icon: Icon(Icons.add_shopping_cart, size: 20)
                                              , onPressed: null),
                                            )
                                          ],
                                        ),


                                ],)


                              ]
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 4,
                                  offset: Offset(-2, 5)
                                )
                              ]
                            ),

                          ),
                        );
                      },

                  ),
                  )
                ),
              )
            ])));
  }
}
