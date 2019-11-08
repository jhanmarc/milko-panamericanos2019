import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FlutterTts flutterTts = FlutterTts();

  String imagen1 = "https://media-cdn.tripadvisor.com/media/photo-s/15/c3/5a/f4/women-s-quarters.jpg";
  String ingl1 ="Built around 1700, as the religious nucleus of the Town of Lurín. It is a Baroque-style colonial architecture temple and has been declared a historical monument in 1972. In 1998 the then Pope John Paul II decided to create in Lima three new Dioceses of Lurín that includes all the towns and parishes of the Southern Cone of Lima, by which the old Rural Temple was elevated to the category of Cathedral.";
  String es1 = "Construida hacia 1700, como núcleo religioso del Pueblo de Lurín. Es un Templo de arquitectura colonial de estilo barroco y ha sido declarado monumento histórico en 1972. En 1998 el entonces Papa Juan Pablo II decide crear en Lima tres nuevas Diócesis de Lurín que comprende a todos los pueblos y parroquias del Cono Sur de Lima, por lo cual el antiguo Templo Rural fue elevado a la categoría de Catedral.";

  Future _leer(String es) async {
    //print(await flutterTts.getLanguages);
    await flutterTts.setLanguage("es-PE");
    await flutterTts.setSpeechRate(0.9);
    await flutterTts.setVolume(1.0);
    await flutterTts.setPitch(1.0);
    //print(await flutterTts.getVoices);
    await flutterTts.speak(
        es);
  }

  Future _leerIngles(String ingl) async {
    //print(await flutterTts.getLanguages);
    await flutterTts.setLanguage("en-US");
    await flutterTts.setSpeechRate(0.7);
    await flutterTts.setVolume(1.0);
    await flutterTts.setPitch(1.0);
    //print(await flutterTts.getVoices);
    await flutterTts.speak(
        ingl);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Milko"),
      ),
      body: ListView(
        children: <Widget>[
          _lugars(imagen1, ingl1, es1),
          _lugars(imagen1, ingl1, es1),
          _lugars(imagen1, ingl1, es1)
        ],
      )
    );
  }


  Widget _lugars(String imagen, String ingl, String es){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromRGBO(238, 238, 238,1),
      ),
      width: double.infinity,
      height: 300,
      margin: EdgeInsets.symmetric(vertical: 15, horizontal:15),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: double.maxFinite,
            height: 200,
            decoration: BoxDecoration(
              border: Border.all(width: 3, color: Color.fromRGBO(238, 91, 87, 1)),
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: NetworkImage(imagen),
                fit: BoxFit.fill
              )
            ),
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton.icon(
                color: Colors.lightBlue,
                icon: Icon(Icons.play_circle_outline , color: Colors.white),
                label: Text("Español" , style: TextStyle(color: Colors.white)),
                onPressed: ()=>_leer(es) ,
              ),
              RaisedButton.icon(
                color: Colors.lightBlue,
                icon: Icon(Icons.play_circle_outline , color: Colors.white),
                label: Text("English" , style: TextStyle(color: Colors.white)),
                onPressed: ()=>_leerIngles(ingl) ,
              )
            ],
          ),
        ],
      ),
    );    
  }
}


