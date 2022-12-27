import 'package:aimball/pages/page_producs.dart';
import 'package:flutter/material.dart';

class PantallaInicio extends StatefulWidget {
  const PantallaInicio({Key key}) : super(key: key);

  @override
  State<PantallaInicio> createState() => _PantallaInicioState();
}

class _PantallaInicioState extends State<PantallaInicio> {
  @override
  Widget build(BuildContext context) {

    final elevatedButtonStyle = ElevatedButton.styleFrom(
      primary: Colors.white,
      onPrimary: Colors.black,
      padding: EdgeInsets.all(13.0)
    );

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Stack(
          children: [
            Positioned(
                child: Align(
                  alignment: FractionalOffset.bottomRight,
                  child: Container(
                    padding: EdgeInsets.only(right: 15, left: 5, top: 50, bottom: 50),
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(200)
                      )
                    ),
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text("Las mejores armas, a los mejores precios", style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                          letterSpacing: 5
                        ),),
                      ),
                    ),
                  ),
                ),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset("assets/img/LOGO.PNG", width: MediaQuery.of(context).size.width/2,
                  height: 200,
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 50)),
                ElevatedButton(
                    style: elevatedButtonStyle,
                    onPressed: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext) => PantallaCarta()
                      ),
                      );
                },
                    child: Icon(Icons.chevron_right,color: Colors.black,)),
                
              ],
            ),

          ],
        ),
      ),
    );
  }
}
