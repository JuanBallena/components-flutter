import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 50.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 60.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckBox(),
            _crearSwitch(),
            Expanded(
              child: _crearImagen(),
            )
          ],
        )
      )
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigo[500],
      label: 'Tamaño de la imagen',
      //divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (_bloquearCheck) ? null : (valor) {
        print(valor);
        setState(() {
          _valorSlider = valor;
        });
      },
    );
  }

  Widget _crearCheckBox() {
    /* return Checkbox(
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor;
        });
      }
    ); */
    return CheckboxListTile(
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor;
        });
      },
      title: Text('Bloquear slider')
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor;
        });
      },
      title: Text('Bloquear slider')
    );
  }

   Widget _crearImagen() {
    return Image(
      image: NetworkImage('https://image.shutterstock.com/image-photo/colorful-hot-air-balloons-flying-260nw-1033306540.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain
    );
  }
}