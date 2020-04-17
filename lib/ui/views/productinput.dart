import 'package:flutter/material.dart';
import 'package:tassist/theme/theme.dart';
import 'package:tassist/ui/shared/drawer.dart';
import 'package:tassist/ui/shared/headernav.dart';


class ProductInputScreen extends StatefulWidget {
  @override
  _ProductInputScreenState createState() => _ProductInputScreenState();
}

class _ProductInputScreenState extends State<ProductInputScreen> {

    final GlobalKey<ScaffoldState> _drawerKey = new GlobalKey<ScaffoldState>();
    

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
            key: _drawerKey,
            drawer: tassistDrawer(context),
            appBar: headerNav(_drawerKey),
            // bottomNavigationBar: bottomNav(),
            body: Padding(
              padding: spacer.all.xs,
              child: ListView(children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                  Text('Create new product', style: secondaryListTitle,),
                  TextFormField(
                    style: secondaryListDisc,
                    decoration: InputDecoration(
                      labelText: 'Product Name',
                      labelStyle: secondaryListTitle2.copyWith(color: TassistInfoGrey)
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      TextFormField(
                    style: secondaryListDisc,
                    decoration: InputDecoration(
                      labelText: 'Standard Price',
                      labelStyle: secondaryListTitle2.copyWith(color: TassistInfoGrey)
                    ),
                  ),
                  TextFormField(
                    style: secondaryListDisc,
                    decoration: InputDecoration(
                      labelText: 'Standard Cost',
                      labelStyle: secondaryListTitle2.copyWith(color: TassistInfoGrey)
                    ),
                  )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      TextFormField(
                    style: secondaryListDisc,
                    decoration: InputDecoration(
                      labelText: 'Initial Stock',
                      labelStyle: secondaryListTitle2.copyWith(color: TassistInfoGrey)
                    ),
                  ),
                  TextFormField(
                    style: secondaryListDisc,
                    decoration: InputDecoration(
                      labelText: 'Unit',
                      labelStyle: secondaryListTitle2.copyWith(color: TassistInfoGrey)
                    ),
                  )
                    ],
                  )
                  
                ],),
               
                 Padding(
                   padding: spacer.top.sm,
                   child: Text('Optional', style: secondaryListTitle,),
                 ),
                 Row(
                   children: <Widget>[
                      TextFormField(
                    style: secondaryListDisc,
                    decoration: InputDecoration(
                      labelText: 'Min Stock',
                      labelStyle: secondaryListTitle2.copyWith(color: TassistInfoGrey)
                    ),
                  ),
                  TextFormField(
                    style: secondaryListDisc,
                    decoration: InputDecoration(
                      labelText: 'Reorder Value',
                      labelStyle: secondaryListTitle2.copyWith(color: TassistInfoGrey)
                    ),
                  ),

                   ],
                 ),
   
                Container(
                  padding: spacer.top.sm,
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width / 2,
                  child: RaisedButton(
                           child: Text('+ Save Item', style: secondaryListDisc.copyWith(color: TassistWhite)),
                           color: TassistPrimaryDarkButtonShadow,
                      onPressed: () {Navigator.of(context).pop();
                      }
                    ),
                )          
                ]
              ),
            ),
            
 

  
      
            


          )
        );
      
  }
}

