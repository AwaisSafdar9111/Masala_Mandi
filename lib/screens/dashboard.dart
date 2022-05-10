// import 'package:flutter/material.dart';
//
// class Dashboard extends StatefWidget {
//   @override
//   _DashboardState createState() => _DashboardState();
// }
//
// class _DashboardState extends State<Dashboard> {
//   //keys
//   var product_list = [
//     {
//       "name": 'Haldi',
//       "picture": 'images/categories ico/coriander(Dhania).png',
//       "old price": 195,
//       "price": 165,
//     },
//     {
//       "name": 'Desi Ghee',
//       "picture": 'images/categories icons/Desi ghee.png',
//       "old price": 195,
//       "price": 165,
//     },
//     {
//       "name": 'Haldi',
//       "picture": 'images/categories icons/turmeric(Haldi).png',
//       "old price": 195,
//       "price": 165,
//     },
//     {
//       "name": 'Haldi',
//       "picture": 'images/categories icons/cream.png',
//       "old price": 195,
//       "price": 165,
//     },
//     {
//       "name": 'Haldi',
//       "picture": 'images/categories icons/coriander(Dhania).png',
//       "old price": 195,
//       "price": 165,
//     },
//
//   ];@override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.green ,
//         title: Text('catagories'),
//       ),
//       body: Center(
//         child:Card(
//           margin: EdgeInsets.all(10),
//       color: Colors.green[100],
//       shadowColor: Colors.blueGrey,
//       elevation: 10,
//       child: Hero(
//         tag: new Text("hero tag 1`"),
//         child: Material(
//           borderRadius: BorderRadius.circular(20.0),
//           child: InkWell(
//             onTap: () => Navigator.of(context).push(
//               //here we are passing the values of the product to the product details page
//                 new MaterialPageRoute(builder: (context) => new ProductDetails(
//                   product_details_name: prod_name,
//                   product_details_new_price: prod_price,
//                   product_details_old_price: prod_old_price,
//                   product_detail_picture: prod_picture,
//                 ))),
//             child: GridTile(
//               footer: Container(
//                 color: Colors.white54,
//                 child: new Row(
//                   children: <Widget>[
//                     Expanded(child: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
//
//                     ),
//                     new Text("\$${prod_price}",style: TextStyle (color: Colors.purple,fontWeight: FontWeight.bold),)
//                   ],
//                 ),
//               ),
//               child: Image.asset(
//                 prod_picture,
//                 fit: BoxFit.contain,
//               ),
//             ),
//           ),
//         ),
//       ),
//     ),
//       ),
//     );
//   }
// }