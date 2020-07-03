import 'package:flutter/material.dart';

class ServiciosPage extends StatefulWidget {
  @override
  _ServiciosPageState createState() => _ServiciosPageState();
}

class _ServiciosPageState extends State<ServiciosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[800],
        title: Text(
          'Servicios',
        ),
      ),
      body: _ListaOpciones(),
    );
  }
}

class _ListaOpciones extends StatelessWidget {
  const _ListaOpciones({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        children: [
          Container(
              width: 500,
              height: 50,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(left: 25.0),
              child: Text(
                'Seleccina tu servicio',
                style: TextStyle(
                  color: Colors.orange[800],
                  fontSize: 20,
                ),
              )
          ),
          Container(
            padding: EdgeInsets.only(top: 30),
            width: 500,
            height: 200,
            child: Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _cardEnTienda(),
                _cardDelivery()
              ],
            ),
          ),
          Container(
            
            width: 500,
            height: 150,
            child: Container(  
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _cardSuscripcion()
                ],
              ),
            ),
          ),
          Container(
            width: 500,
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _cardGift()
              ],
            ),
          ),
          
          Container(
            margin: EdgeInsets.symmetric(vertical: 60),
            
            width: 200,
            height: 50,
            child: _fondoBoton(),
          ),
        ],
      ),
    );
  }

  Widget _fondoBoton() {

    return Container(
      
          child: Container(       
                  decoration: BoxDecoration(
                    color: Colors.orange[800],
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: <BoxShadow>[
                      BoxShadow( 
                        color: Colors.deepOrange[900],
                        offset: Offset(0.2,5)
                      )
                    ]
                  ),

                  child: Center(
                    
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text('Guardar',
                            style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
            ),
    );
  }
}

class _cardGift extends StatelessWidget {
  const _cardGift({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
          Container(
        width:120,
        height: 120,
        decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: <BoxShadow>[
                    BoxShadow( 
                      color: Colors.blueGrey[100],
                      offset: Offset(0.2,5)
                    )
                  ]
                ),
       
       ),
       Container(
         padding: EdgeInsets.only(left:30,top:25),
         
          child: Column(
            
           children: [
             Container(               
               child: Image(
                 image: AssetImage('assets/tienda3.png'),
                 color: Colors.yellowAccent[700],
               ),
             ),
             SizedBox(height: 10),
             Text('GifCard',
             style: TextStyle(
            color: Colors.deepOrange[900],
             fontSize: 15,
             fontWeight: FontWeight.w500,)
             )//letra
           ],
         ),
       )

      ],
          
    );
  }
}

class _cardSuscripcion extends StatelessWidget {
  const _cardSuscripcion({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
          Container(
        width:120,
        height: 120,
        decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: <BoxShadow>[
                    BoxShadow( 
                      color: Colors.blueGrey[100],
                      offset: Offset(0.2,5)
                    )
                  ]
                ),
       
       ),
       Container(
         padding: EdgeInsets.only(left:17,top:25),
         
          child: Column(
            
           children: [
             Container(
               
               child: Image(
                 image: AssetImage('assets/tienda1.png'),
                 color: Colors.yellowAccent[700],
               ),
             ),
             SizedBox(height: 10),
             Text('Suscripción',
             style: TextStyle(
            color: Colors.deepOrange[900],
             fontSize: 15,
             fontWeight: FontWeight.w500,)
             )//letra
           ],
         ),
       )

      ],
          
    );
  }
}

class _cardDelivery extends StatelessWidget {
  const _cardDelivery({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
          Container(
        width:120,
        height: 120,
        decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: <BoxShadow>[
                    BoxShadow( 
                      color: Colors.blueGrey[100],
                      offset: Offset(0.2,5)
                    )
                  ]
                ),
       
       ),
       Container(
         padding: EdgeInsets.only(left:25,top:25),
         
          child: Column(
            
           children: [
             Container(
               
               child: Image(
                 image: AssetImage('assets/tienda2.png'),
                 color: Colors.yellowAccent[700],
               ),
             ),
             SizedBox(height: 10),
             Text('Delivery',
             style: TextStyle(
            color: Colors.deepOrange[900],
             fontSize: 15,
             fontWeight: FontWeight.w500,)
             )//letra
           ],
         ),
       )

      ],
          
    );
  }
}

class _cardEnTienda extends StatelessWidget {
  const _cardEnTienda({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
          Container(
        width:120,
        height: 120,
        decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: <BoxShadow>[
                    BoxShadow( 
                      color: Colors.blueGrey[100],
                      offset: Offset(0.2,5)
                    )
                  ]
                ),

       ),
       Container(
         padding: EdgeInsets.only(left:25,top:25),

          child: Column(

           children: [
             Container(

               child: Image(
                 image: AssetImage('assets/tienda2.png'),
                 color: Colors.yellowAccent[700],
               ),
             ),
             SizedBox(height: 10),
             Text('En Tienda',
             style: TextStyle(
            color: Colors.deepOrange[900],
             fontSize: 15,
             fontWeight: FontWeight.w500,)
             )//letra
           ],
         ),
       )

      ],
          
    );
  }
}
