import 'package:ecommerce_int2/app_properties.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FaqPage4 extends StatefulWidget {
  @override
  _FaqPageState createState() => _FaqPageState();
}

class _FaqPageState extends State<FaqPage4> {
  List<Panel> panels = [
    Panel(
        'NOME COMPLETO',
        'O dado é necessário para identificação do usuário dentro do serviço, e apresentado nos documentos de Resultado de Exame, Carteira Nacional de Vacinação e Certificado de Vacinação Covid-19.',
        false),
    Panel(
        'DATA DE NASCIMENTO',
        'O dado é necessário para identificação do usuário dentro do serviço, e apresentado nos documentos de Resultado de Exame, Carteira Nacional de Vacinação e Certificado de Vacinação Covid-19.',
        false),
    Panel(
        'NÚMERO DE INSCRIÇÃO NO CPF',
        'O dado é necessário para manter o usuário logado.',
        false),
    Panel(
        'ENDEREÇO DE E-MAIL',
        'O dado é necessário para identificação do usuário dentro do serviço e envio de notificações.',
        false),
    Panel(
        'ENDEREÇO',
        'O dado é necessário para identificação do usuário dentro do serviço.',
        false),
    Panel(
        'NÚMERO DE TELEFONE',
        'O dado é necessário para envio de notificações.',
        false)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        brightness: Brightness.light,
        backgroundColor: Colors.transparent,
        title: Text(
          '',
          style: TextStyle(color: darkGrey),
        ),
        elevation: 0,
      ),
      body: SafeArea(
        bottom: true,
        child: Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left:24.0,right:24.0,bottom: 16.0),
                  child: Text(
                    'PARA QUE FINS UTILIZAMOS SEUS DADOS?',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0),
                  ),
                ),... panels.map((panel)=>ExpansionTile(
                      title: Text(
                        panel.title,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600]),
                      ),

                      children: [Container(
                        padding: EdgeInsets.all(16.0),
                          color: Color(0xffFAF1E2),
                          child: Text(
                              panel.content,
                              style:
                              TextStyle(color: Colors.grey, fontSize: 12)))])).toList(),

              ],
            ),
          ),
        ),
    );
  }
}

class Panel {
  String title;
  String content;
  bool expanded;

  Panel(this.title, this.content, this.expanded);
}
