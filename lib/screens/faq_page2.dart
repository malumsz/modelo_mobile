import 'package:ecommerce_int2/app_properties.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FaqPage2 extends StatefulWidget {
  @override
  _FaqPageState createState() => _FaqPageState();
}

class _FaqPageState extends State<FaqPage2> {
  List<Panel> panels = [
    Panel(
        'DADOS PESSOAIS',
        'Nome completo, Data de nascimento, Sexo, Nacionalidade, CPF, Filiação, Endereço de e-mail, Endereço, Número de telefone, Localização do usuário, Foto do usuário.',
        false),
    Panel(
        'SOBRE SEU DISPOSITIVO',
        'Acesso à rede (internet móvel ou WiFi); Acesso à identificação do dispositivo; Acesso à câmera e fotos, mídia e arquivos de áudio e vídeo de seu aparelho.',
        false),
    Panel(
        'DADOS DE SAÚDE',
        'Alergias, Peso, Altura, IMC, Pressão Arterial, Glicose, Doações de Sangue, Vacinação Covid-19 , Resultado de Exame Covid-19 , Internações Hospitalares , Contatos de emergência, Profissionais que atenderam o usuário, Medicamentos Dispensados (Programa Farmácia Popular), Situação Cadastral no Sistema Nacional de Transplantes.',
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
                    'QUAIS DADOS PESSOAIS SÃO UTILIZADOS?',
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
                        padding: EdgeInsets.all(18.0),
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
