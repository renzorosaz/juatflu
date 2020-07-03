import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MetodoPagosPage extends StatefulWidget {
  MetodoPagosPage({Key key}) : super(key: key);

  @override
  _MetodoPagosPageState createState() => _MetodoPagosPageState();
}

class _MetodoPagosPageState extends State<MetodoPagosPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Método de Pago',
            style: TextStyle(
              color: Colors.orange[800],
              fontSize: 20,
            ),
          ),
        ),
        body: SingleChildScrollView(
                  child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical:30),
                    width: size.width * 0.88,
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Seleccina tu método de pago',
                    style: TextStyle(
                      color: Colors.orange[800],
                      fontSize: 20,
                    ),
                  )
              ),
              Container(
                color: Colors.yellowAccent,
                width: size.width * 1,
                height: size.height * 0.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _cardEfectivo(size: size),
                    Container(
                      color: Colors.green,
                      width: size.width * 0.88,
                      height: size.height* 0.08,
                      child: Text('Yape'),
                    ),
                    Container(
                      color: Colors.pink,
                      width: size.width * 0.88,
                      height: size.height* 0.08,
                      child: Text('Plin'),
                    )

                  ],
                ),
              ),
              Container(
                width: size.width * 1,
                height: size.height * 0.28,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _crearNombreC(size: size),
                    _numeroC(size: size),
                   _btnGuardar()
                 ],
                ),
              )
            ]
          ),
        )
      );
  }
}

class _btnGuardar extends StatelessWidget {
  const _btnGuardar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      color: Colors.greenAccent,
      child: Text('Boton'),
    );
  }
}

class _numeroC extends StatelessWidget {
  const _numeroC({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {

      return Container(
      width: size.width * 0.88,
      child: TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            icon: Icon( Icons.phone, color: Colors.green ),
            hintText: '954 - 984 - 585',
            labelText: 'Celular',
          ),
        ),
      );
  }
}

class _crearNombreC extends StatelessWidget {
  const _crearNombreC({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {

    return Container(
    
    width: size.width * 0.88,
    child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            icon: Icon( Icons.person, color: Colors.green ),
            hintText: 'Juan Pepito',
            labelText: 'Nombre de Contacto',
          ),
        ),
    );

  }
}

class _cardEfectivo extends StatelessWidget {
  const _cardEfectivo({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        Container(
        width: size.width * 0.88,
        height: size.height* 0.08,
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
        Row(
          children: [
            Text('Icono efectivo'),
            Text('Efectivo',
             style: TextStyle(
             color: Colors.deepOrange[900],
             fontSize: 15,
             fontWeight: FontWeight.w500,)
             )
          ],
        ),
      ],
          
    );
  }
}
