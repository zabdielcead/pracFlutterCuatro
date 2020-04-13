import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo    = TextStyle(fontSize:20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize:18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( // se parece a listview la diferencia es que la imagen la sube hasta arriba lo pone debajo del simbolo wifi y el listview respetaba el appbar
        child: Column(
            children: <Widget>[
              _crearImagen(),
              _crearTitulo(),
              _crearAcciones(),
              _crearTexto()
            ],
        ),
      )
    );
  }

  Widget _crearImagen() {
   return   Container(
              width:double.infinity,
              child: Image(
                    image: NetworkImage('https://images.pexels.com/photos/814499/pexels-photo-814499.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                    height: 180.0,
                    fit: BoxFit.cover,
                  ),
            );
  }

  Widget _crearTitulo(){
    return  SafeArea( // safe area es para que cuando se en horizontal no le afecte la barra negra delos iphone por ejemplo no tape el texto
    // safe area detecta desplegar información segura para que no sea tapado por algo 
                child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
                      child: Row(// ordenar elementos de forma horizontal
                          // en un row el mainaxisalignment es horizontal y el crosaxisalignment es vertical
                        children:<Widget>[
                              Expanded(// expande pero respetando las dimensiones de icon y text que están despues del expanded
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('Lago con un puente', style:estiloTitulo),
                                      SizedBox(height: 7.0),// es un espacio entre los textos
                                      Text('Lago que se encuentra en Alemania', style:estiloSubTitulo),
                                    ],
                                  ),
                              ),
                          Icon(Icons.star, color: Colors.red, size:30.0),
                          Text('41', style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                    ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call,    'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'SHARE')

      ],
    );
  }

  Widget _accion(IconData icon, String texto) {
    return  Column(
          children: <Widget>[
            Icon(icon, color: Colors.blue, size: 40.0),
            SizedBox(height: 5.0),
            Text(texto, style: TextStyle( fontSize: 15.0, color: Colors.black) )
          ],
        );
  }

  Widget _crearTexto(){
    return SafeArea(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                  child: Text(
                      'njfihfiwehfiwehfiewhfiouwehfiewhfiuwehfiuehfuewhfuewhfuewhfuwehfuewhfuewdsfsdfsdfdsfdsfdsfdsfsdfsdfsfe efewfwefwe  rewrfw e rwerwerw rfrw wrerw e wer w',
                      textAlign: TextAlign.justify,
                  ),
                ),
          );
  }
}