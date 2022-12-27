import 'package:aimball/carrito/carrito_store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenCarrito extends StatefulWidget {
  const ScreenCarrito({Key key}) : super(key: key);

  @override
  State<ScreenCarrito> createState() => _ScreenCarritoState();
}

class _ScreenCarritoState extends State<ScreenCarrito> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Carrito>(builder: (context, carrito,child){
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Pedidos"),
            elevation: 0,
          ),
          body: Container(

            child: carrito.items.length==0 ? Center(child: Text("Carrito Vacio"),) : Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                for(var item in carrito.items.values)
                  Card(
                    margin: EdgeInsets.all(10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset("assets/img/"+item.imagen, width: 100,),
                        Expanded(child: Container(
                          padding: EdgeInsets.all(5),
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(item.nombre),
                              Text("s/." + item.precio.toString() + " x " + item.unidad),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(

                                    child: IconButton(
                                      icon: Icon(Icons.remove, size: 14,color: Colors.white,),
                                      onPressed: (){
                                        setState(() {
                                          carrito.decrementarCantidadItem(item.id);
                                        });
                                      },
                                    ),
                                    width: 50,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.all(Radius.circular(30))
                                    ),
                                  ),
                                  Container(
                                    width: 20,
                                    child: Center(child: Text(item.cantidad.toString()),),
                                  ),
                                  Container(
                                    child: IconButton(onPressed: (){
                                      setState(() {
                                        carrito.incrementarCantidadItem(item.id);
                                      });
                                    },
                                        icon: Icon(Icons.add, size: 14,color: Colors.white,),

                                    ),
                                    width: 50,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.all(Radius.circular(30)))
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                        Container(
                          height: 100,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.white54,
                          ),
                          child: Center(
                            child: Text("s/." + (item.precio * item.cantidad).toString()),
                          ),
                        )
                      ],
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Expanded(child: Text("Subtotal:")),
                      Text("S/." + carrito.subTotal.toStringAsFixed(2)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Expanded(child: Text("Impuesto:"),),
                      Text("S/." + carrito.impuesto.toStringAsFixed(2)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Expanded(child: Text("Total:"),),
                      Text("S/." + carrito.total.toStringAsFixed(2)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
    });
  }
}
