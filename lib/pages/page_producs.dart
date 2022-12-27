import 'package:aimball/models/Carta_guns.dart';
import 'package:aimball/pages/carrito_screen.dart';
import 'package:aimball/pantallaInicio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../carrito/carrito_store.dart';

class PantallaCarta extends StatefulWidget {
  const PantallaCarta({Key key}) : super(key: key);

  @override
  State<PantallaCarta> createState() => _PantallaCartaState();
}

class _PantallaCartaState extends State<PantallaCarta> {

  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Consumer<Carrito>(builder:(context, carrito,child){
      return DefaultTabController(
          length: 3,
          child: Scaffold(
            key: _globalKey,
            backgroundColor: Colors.black,
            appBar: AppBar(
              title: Text("Productos"),
              backgroundColor: Colors.black,
              elevation: 0,
              bottom: TabBar(
                  labelColor: Colors.white,
                  indicatorColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    new Tab(
                      child: Padding(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Text("Accesorios"),
                      ),
                    ),
                    new Tab(
                      child: Padding(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Text("Noticias"),
                      ),
                    ),
                    new Tab(
                      child: Padding(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Text("Proximamente"),
                      ),
                    ),

                  ]),
              actions: [
                new Stack(
                  children: [
                    IconButton(
                        onPressed: (){
                          carrito.numeroItems!=0?
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext)=> ScreenCarrito()
                                  ))
                              :
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("Ir al carrito",textAlign: TextAlign.center,),
                          ));
                        },
                        icon: Icon(Icons.shopping_cart),
                    ),
                    new Positioned(
                      top: 6,
                        right: 6,
                        child: Container(
                      padding: EdgeInsets.all(2),
                      decoration: new BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4)
                      ),
                          constraints: BoxConstraints(
                            minHeight: 14,
                            minWidth: 14
                          ),
                          child: Text(carrito.numeroItems.toString(),textAlign: TextAlign.center,style: TextStyle(
                            color: Colors.red,
                            fontSize: 10,

                          ),),
                    )),
                  ],
                )
              ],
            ),
            drawer: MenuLateral(),
            body: TabBarView(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: GridView.builder(
                    itemCount: accesorios.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: MediaQuery.of(context).size.width / (MediaQuery.of(context).size.height/1.0),
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 2
                    ),
                    itemBuilder: (context, index){
                      return Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white54,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0x000005cc),
                                  blurRadius: 30,
                                  offset: Offset(10, 10)
                              )
                            ]
                        ),
                        child: Column(
                          children: [
                            Image.asset("assets/img/"+accesorios[index].imagen,width: 200,height: 200,),
                            Text(accesorios[index].nombre, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                            Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Text("\$."+accesorios[index].precio.toString(), style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                            ),
                            Container(
                              child: Text(accesorios[index].description, style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                            ),

                            ElevatedButton.icon(
                                onPressed: (){
                                  setState(() {
                                    carrito.agregarItem(
                                        accesorios[index].id.toString(),
                                        accesorios[index].nombre,
                                        accesorios[index].precio,
                                        "1",
                                        accesorios[index].imagen,
                                        1);
                                  });
                                },

                                icon: Icon(Icons.add_shopping_cart),
                                label: Text("Agregar"),)

                          ],
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: GridView.builder(
                    itemCount: noticias.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: MediaQuery.of(context).size.width / (MediaQuery.of(context).size.height/1.0),
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 2
                    ),
                    itemBuilder: (context, index){
                      return Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white54,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0x000005cc),
                                  blurRadius: 30,
                                  offset: Offset(10, 10)
                              )
                            ]
                        ),
                        child: Column(
                          children: [
                            Text(noticias[index].nombre, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                            Padding(
                              padding: EdgeInsets.only(top: 20),
                            ),
                            Container(
                              child: Text(noticias[index].description, style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                            ),

                          ],
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: GridView.builder(
                    itemCount: proximamente.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: MediaQuery.of(context).size.width / (MediaQuery.of(context).size.height/1.0),
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 2
                    ),
                    itemBuilder: (context, index){
                      return Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white54,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0x000005cc),
                                  blurRadius: 30,
                                  offset: Offset(10, 10)
                              )
                            ]
                        ),
                        child: Column(
                          children: [
                            Image.asset("assets/img/"+proximamente[index].imagen,width: 200,height: 200,),
                            Text(proximamente[index].nombre, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                            Padding(
                              padding: EdgeInsets.only(top: 20),
                            ),
                            Container(
                              child: Text(proximamente[index].description, style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )
      );
    }
    );

  }
}

class MenuLateral extends StatelessWidget {
  const MenuLateral({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: Text("Aimball Store"),
              accountEmail: Text("Users: Admin"),
            decoration: BoxDecoration(
                color: Colors.black
            ),
          ),

          InkWell(
            child: new ListTile(
              title: Text("Inicio"),
              leading: Icon(Icons.home),
            ),
            onTap: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext) => PantallaInicio()
              ),
              );
            },
          ),
          //
          InkWell(
            child: new ListTile(
              title: Text("Carrito"),
              leading: Icon(Icons.home),
            ),
            onTap: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext) => ScreenCarrito()
              ),
              );
            },
          ),
          InkWell(
            child: new ListTile(
              title: Text("Salir sesion"),
              leading: Icon(Icons.home),
            ),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext) => PantallaInicio()
              ),
              );
            },
          ),
        ],
      ),
    );
  }
}

