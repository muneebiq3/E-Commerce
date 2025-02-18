import 'package:first_app/widget/support_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    List categories = [
      "images/headphone_icon.png",
      "images/laptop.png",
      "images/watch.png",
      "images/TV.png",
    ];
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: 
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(
                        "Hey, Muneeb", 
                        style: AppWidget.boldTextFieldStyle()
                      ),

                      Text(
                        "Good Morning", 
                        style: AppWidget.lightTextFieldStyle()
                      ),
                      
                    ],
                  ),

                  ClipRRect(

                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "images/boy.jpg", 
                      height: 70, 
                      width: 70, 
                      fit: BoxFit.cover,
                    ) 
                  )

                ],
              ),

              SizedBox(height: 30,),
              Container(

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                width: MediaQuery.of(context).size.width,
                child: TextField(

                  decoration: InputDecoration(

                    border: InputBorder.none, 
                    hintText: "Search Products", 
                    hintStyle: AppWidget.lightTextFieldStyle(),
                    prefixIcon: Icon(
                      Icons.search, 
                      color: Colors.black,
                    )
                  ),    

                )

              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories", 
                    style: AppWidget.semiBoldTextFieldStyle()  
                  ),

                  Text(
                    "See all", 
                    style:  TextStyle(
                      color: Color(0xFFfd6f3e), 
                      fontSize: 18.0, 
                      fontWeight: FontWeight.bold
                    )
                  )

                ],
              ),

              SizedBox(height: 20),
              Row(

                children: [
                  Container(
                    height: 130,
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(right: 20),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFFD6F3E)
                    ),
                    
                    child: Center(
                      child: Text(
                        "All", 
                        style: TextStyle(
                          color: Colors.white, 
                          fontSize: 20.0, 
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),

                  ),

                  Expanded(

                    child: Container(
                      height: 130,
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: categories.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return CategoryTile(
                            image: categories[index]
                          );
                        } ,
                      ),
                    ),

                  ),

                ],

              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "All Products", 
                    style: AppWidget.semiBoldTextFieldStyle()  
                  ),

                  Text(
                    "See all", 
                    style:  TextStyle(
                      color: Color(0xFFfd6f3e), 
                      fontSize: 18.0, 
                      fontWeight: FontWeight.bold
                    )
                  )

                ],
              ),
              SizedBox(height: 20),
              Container(

                height: 190,
                child: ListView(

                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(color: Colors.white),
                      child: Column(
                        children: [
                          Image.asset(
                            "images/headphone2.png", 
                            height: 120,
                            width: 120, 
                            fit: BoxFit.cover
                          ),
                          Text(
                            "Headphone", 
                            style: AppWidget.semiBoldTextFieldStyle()
                          ),
                          
                        ],
                      ),
                    )

                  ],

                ),
              )

            ],
          ),

      ),

    );
  }
}
class CategoryTile extends StatelessWidget {

  String image;
  CategoryTile(
    {
      super.key, 
      required this.image
    }
  );

  @override 
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white
      ),

      child: Column(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            image, 
            width: 50, 
            height: 50, 
            fit: BoxFit.cover
          ),
          Icon(Icons.arrow_forward)

        ],

      ),
      
    );

  }
}