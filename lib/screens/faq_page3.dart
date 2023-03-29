import 'package:ecommerce_int2/app_properties.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FaqPage3 extends StatefulWidget {
  @override
  _FaqPageState createState() => _FaqPageState();
}

class _FaqPageState extends State<FaqPage3> {
  List<Panel> panels = [
    Panel(
        'DADOS PESSOAIS',
        'Nome completo: Obtido de terceiros (Login Único, CADSUS), Data de nascimento: Obtido de terceiros (CADSUS), Sexo: Obtido de terceiros (CADSUS), Filiação: Obtido de terceiros (CADSUS), Nacionalidade: Obtido de terceiros (CADSUS), CPF: Obtido de terceiros (CADSUS), E-mail: Obtido de terceiros (CADSUS), Endereço: Obtido de terceiros (CADSUS), Número de telefone: Obtido de terceiros (CADSUS).',
        false),
    Panel(
        'SOBRE SEU DISPOSITIVO',
        'Localização do usuário: Obtida pelo dispositivo de acesso, após autorização do usuário\n\nFoto do usuário: câmera e fotos, mídia e arquivos de áudio e vídeo do dispositivo, após autorização do usuário.',
        false),
    Panel(
        'DADOS DE SAÚDE',
        'Dados de Saúde (Alergias, IMC, Pressão, Glicose, Doações de Sangue): Informado pelo usuário\n\nVacinação Covid-19: Obtido de terceiros (Rede Nacional de Dados em Saúde - RNDS)\n\nResultado de Exame de Covid-19: Obtido de terceiros (RNDS)\n\nInternações Hospitalares: Obtido de terceiros (RNDS)\n\nContatos de emergência e de profissionais de saúde (Nome e Telefone) : Informado pelo usuário\n\nMedicamentos Dispensados (Programa Farmácia Popular – Sistema Horus) : Obtido de terceiros\n\nSituação Cadastral no Sistema Nacional de Transplantes: Obtido de terceiros (Sistema Nacional de Transplantes)',
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
                    'COMO OS DADOS SÃO COLETADOS?',
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
