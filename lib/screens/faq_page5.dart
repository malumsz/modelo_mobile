import 'package:ecommerce_int2/app_properties.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FaqPage5 extends StatefulWidget {
  @override
  _FaqPageState createState() => _FaqPageState();
}

class _FaqPageState extends State<FaqPage5> {
  List<Panel> panels = [
    Panel(
        'OS DADOS PESSOAIS DO USUÁRIO PODERÃO SER COMPARTILHADOS COM AS SEGUINTES PESSOAIS OU EMPRESAS:',
        'Secretarias Estaduais e Municipais de Saúde, Agência Nacional de Vigilância Sanitária (ANVISA), Controladoria-Geral da União (CGU), Tribunal de Contas da união (TCU), Operador que desenvolve o Conecte SUS, Serviço que armazena os dados.',
        false),
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
                    'NÓS COMPRATILHAMOS SEUSS DADOS COM TERCEIROS?',
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
