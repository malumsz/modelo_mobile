import 'package:ecommerce_int2/app_properties.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FaqPage6 extends StatefulWidget {
  @override
  _FaqPageState createState() => _FaqPageState();
}

class _FaqPageState extends State<FaqPage6> {
  List<Panel> panels = [
    Panel(
        'DIREITO DE CONFIRMAÇÃO E ACESSO:',
        'É o direito do usuário de obter do serviço a confirmação de que os dados pessoais que lhe digam respeito são ou não objeto de tratamento e, se for esse o caso, o direito de acessar os seus dados pessoais. ',
        false),
    Panel(
        'DIREITO DE RETIFICAÇÃO:',
        'É o direito de solicitar a correção de dados incompletos, inexatos ou desatualizados. ',
        false),
    Panel(
        'DIREITO À LIMITAÇÃO DO TRATAMENTO DOS DADOS:',
        'É o direito do usuário de limitar o tratamento de seus dados pessoais, podendo exigir a anonimização, bloqueio ou eliminação de dados desnecessários, excessivos ou tratados em desconformidade com o disposto na Lei Geral de Proteção de Dados. ',
        false),
    Panel(
        'DIREITO DE OPOSIÇÃO:',
        'É o direito do usuário de, a qualquer momento, se opor ao tratamento de dados por motivos relacionados com a sua situação particular, com fundamento em uma das hipóteses de dispensa de consentimento ou em caso de descumprimento ao disposto na Lei Geral de Proteção de Dados. ',
        false),
    Panel(
        'DIREITO DE PORTABILIDADE DOS DADOS:',
        'É o direito do usuário de realizar a portabilidade dos dados a outro fornecedor de serviço ou produto, mediante requisição expressa, de acordo com a regulamentação da autoridade nacional, observados os segredos comercial e industrial.',
        false),
    Panel(
        'DIREITO DE NÃO SER SUBMETIDO A DECISÕES AUTOMATIZADAS:',
        'O titular dos dados tem direito a solicitar a revisão de decisões tomadas unicamente com base em tratamento automatizado de dados pessoais que afetem seus interesses, incluídas as decisões destinadas a definir o seu perfil pessoal, profissional, de consumo e de crédito ou os aspectos de sua personalidade.',
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
                    'QUAIS SÃO OS DIREITOS DOS USUÁRIOS DO SERVIÇO?',
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
