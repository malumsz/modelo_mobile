import 'package:ecommerce_int2/app_properties.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FaqPage7 extends StatefulWidget {
  @override
  _FaqPageState createState() => _FaqPageState();
}

class _FaqPageState extends State<FaqPage7> {
  List<Panel> panels = [
    Panel(
        'OBRIGAÇÕES DOS USUÁRIOS DO SERVIÇO:',
        'O usuário se responsabiliza pela precisão e veracidade dos dados informados e reconhece que a inconsistência destes poderá implicar a impossibilidade de se utilizar o serviço Conecte SUS.\n\nDurante a utilização do serviço, a fim de resguardar e de proteger os direitos de terceiros, o usuário se compromete a fornecer somente seus dados pessoais, e não os de terceiros.\n\nO login e senha só poderão ser utilizados pelo usuário cadastrado. Ele se compromete em manter o sigilo da senha, que é pessoal e intransferível, não sendo possível, em qualquer hipótese, a alegação de uso indevido, após o ato de compartilhamento.\n\nO usuário do serviço é responsável pela atualização das suas informações pessoais e consequências na omissão ou erros nas informações pessoais cadastradas.',
        false),
    Panel(
        'SAIBA MAIS SOBRE SUAS OBRIGAÇÕES:',
        'Não é possível realizar retificação de informação pelo Conecte SUS, salvo aquelas consideradas como “Registros e Contatos”, que se referem a informações auto declaradas de Índice de Massa Corpórea (IMC), Alergias, Pressão Arterial, Glicose e Doações de Sangue.\n\nDados cadastrais, como nome, data de nascimento, sexo, e-mail, inclusão/exclusão de nome social, são recebidos pelo sistema Cadastro Nacional de Usuários do SUS - CadSUS, onde, a partir do Cartão Nacional de Saúde – CNS, são validados com as informações disponíveis na Receita Federal. Para a correção desses dados, o cidadão deverá atualizar as informações na Receita Federal e/ou solicitar junto a qualquer estabelecimento de saúde (Alteração de dados na Receita Federal pode ser realizado em: https://servicos.receita.fazenda.gov.br/Servicos/CPF/alterar/default.asp).\n\nOs dados de saúde são inseridos nos sistemas de informação diretamente por profissionais de saúde, nos estabelecimentos assistenciais. A visualização das informações no Conecte SUS é possível após o devido envio destes dados à Rede Nacional de Dados em Saúde (RNDS). Para qualquer tipo de correção e alteração de dados de saúde, deve-se entrar em contato com o estabelecimento onde foi realizada a ação ou serviço de saúde, ou secretaria estadual ou municipal de saúde e solicitar a correção do registro. Compete ao gestor local de saúde, responsável pela coleta dos dados, a correção de dados incompletos, inexatos ou desatualizados, requisitada pelo cidadão, conforme Inciso III do Art. 18 da Lei nº 13.709/2018, Lei Geral de Proteção de Dados Pessoais.\n\nO Usuário é responsável pela reparação de todos e quaisquer danos, diretos ou indiretos (inclusive decorrentes de violação de quaisquer direitos de outros usuários, de terceiros, inclusive direitos de propriedade intelectual, de sigilo e de personalidade), que sejam causados à Administração Pública, a qualquer outro Usuário, ou, ainda, a qualquer terceiro, inclusive em virtude do descumprimento do disposto nesta Política de Privacidade ou de qualquer ato praticado a partir de seu acesso ao serviço.\n\nO Órgão não poderá ser responsabilizado pelos seguintes fatos:\na. Equipamento infectado ou invadido por atacantes;\nb. Equipamento avariado no momento do consumo de serviços;\nc. Proteção do computador;\nd. Proteção das informações baseadas nos computadores dos usuários;\ne. Abuso de uso dos computadores dos usuários;\nf. Monitoração clandestina do computador dos usuários;\ng. Vulnerabilidades ou instabilidades existentes nos sistemas dos usuários;\nh. Perímetro inseguro;\n\nO uso comercial das expressões utilizadas em aplicativos como marca, nome empresarial ou nome de domínio, além dos conteúdos do serviço, assim como os programas, bancos de dados, redes, arquivos que permitem que o usuário acesse sua conta estão protegidos pelas leis e tratados internacionais de direito autoral, marcas, patentes, modelos e desenhos industriais.\n\nAo acessar o aplicativo, os usuários declaram que irão respeitar todos os direitos de propriedade intelectual e os decorrentes da proteção de marcas, patentes e/ou desenhos industriais, depositados ou registrados em, bem como todos os direitos referentes a terceiros que porventura estejam, ou estiverem de alguma forma, disponíveis no serviço. O simples acesso ao serviço não confere aos usuários qualquer direito ao uso dos nomes, títulos, palavras, frases, marcas, patentes, imagens, dados e informações, dentre outras, que nele estejam ou estiverem disponíveis.\n\nA reprodução de conteúdo descritos anteriormente está proibida, salvo com prévia autorização por escrito ou caso se destinem ao uso exclusivamente pessoal e sem que em nenhuma circunstância os usuários adquiram qualquer direito sobre esses conteúdos.\n\nÉ vedada a utilização do serviço para finalidades comerciais, publicitárias ou qualquer outra que contrarie a finalidade para a qual foi concebido, conforme definido neste documento, sob pena de sujeição às sanções cabíveis na Lei nº 9.610/1998, que protege os direitos autorais no Brasil.\n\nOs visitantes e usuários assumem toda e qualquer responsabilidade, de caráter civil e/ou criminal, pela utilização indevida das informações, textos, gráficos, marcas, imagens, enfim, todo e qualquer direito de propriedade intelectual ou industrial do serviço.\n\nEm nenhuma hipótese, a Administração Pública Federal será responsável pela instalação no equipamento do Usuário ou de terceiros, de códigos maliciosos (vírus, trojans, malware, worm, bot, backdoor, spyware, rootkit, ou de quaisquer outros que venham a ser criados), em decorrência da navegação na Internet pelo Usuário.',
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
                    'QUAIS SÃO AS OBRIGAÇÕES DOS USUÁRIOS DO SERVIÇO?',
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
