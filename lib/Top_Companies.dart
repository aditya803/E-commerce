import 'package:flutter/material.dart';


class TopCompanies extends StatefulWidget {
  @override
  _TopCompaniesState createState() => _TopCompaniesState();
}

class _TopCompaniesState extends State<TopCompanies> {

  var companyList= [
    {
     "name": "A",
      "image":"assets/1.jpg" ,
      "location": "Delhi",
    },
    {
      "name": "A",
      "image": "assets/2.jpg" ,
      "location": "Delhi",
    },
    {
      "name": "A",
      "image": "assets/3.jpg" ,
      "location": "Delhi",
    },
    {
      "name": "A",
      "image": "assets/4.jpg" ,
      "location": "Delhi",
    },
    {
      "name": "A",
      "image": "assets/5.jpg" ,
      "location": "Delhi",
    },
    {
      "name": "A",
      "image": "assets/6.jpg" ,
      "location": "Delhi",
    },
    {
      "name": "A",
      "image": "assets/7.jpg" ,
      "location": "Delhi",
    },
    {
      "name": "A",
      "image": "assets/8.jpg" ,
      "location": "Delhi",
    },
    {
      "name": "A",
      "image": "assets/9.jpg" ,
      "location": "Delhi",
    },
    {
      "name": "A",
      "image": "assets/10.jpg" ,
      "location": "Delhi",
    },
    {
      "name": "A",
      "image": "assets/11.jpg" ,
      "location": "Delhi",
    },
    {
      "name": "A",
      "image": "assets/12.jpg" ,
      "location": "Delhi",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(

        itemCount: companyList.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (BuildContext context,int index){
          return SingleProd(
            prod_name: companyList[index]['name'],
            prod_image: companyList[index]['image'],
            prod_location: companyList[index]['location'],
          );
        });
  }
}

class SingleProd extends StatelessWidget {
  final prod_name;
  final prod_image;
  final prod_location;

  SingleProd({
   this.prod_name,
   this.prod_image,
   this.prod_location,
});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(onTap: (){},
            child: GridTile(
                footer: Container(
                  color: Colors.transparent,
                  child: ListTile(
                    leading: Text(
                        prod_name,
                        textAlign: TextAlign.center,
                    ),
                  ),
                ),
                child: Image.asset(prod_image,
                fit: BoxFit.fitHeight)),
            ),
          )),
    );
  }
}
