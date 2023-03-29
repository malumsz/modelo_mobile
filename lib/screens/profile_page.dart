import 'package:ecommerce_int2/app_properties.dart';
import 'package:ecommerce_int2/screens/faq_page.dart';
import 'package:ecommerce_int2/screens/faq_page2.dart';
import 'package:ecommerce_int2/screens/faq_page3.dart';
import 'package:ecommerce_int2/screens/faq_page4.dart';
import 'package:ecommerce_int2/screens/faq_page5.dart';
import 'package:ecommerce_int2/screens/faq_page6.dart';
import 'package:ecommerce_int2/screens/faq_page7.dart';
import 'package:ecommerce_int2/screens/faq_page8.dart';


import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Padding(
            padding:
                EdgeInsets.only(left: 16.0, right: 16.0, top: kToolbarHeight),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Text(
                    'Política de Privacidade',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Text(
                    'Explorar a Política',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0)
                  ),
               
                ListTile(
                  title: Text('O que é o Conecte SUS?'),
                  leading: Image.asset('assets/icons/support.png', fit: BoxFit.scaleDown, width: 30, height: 30,),
                  trailing: Icon(Icons.chevron_right, color: yellow),
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => FaqPage())),
                ),
                Divider(),
                ListTile(
                  title: Text('Quais dados pessoais são utilizados?'),
                  leading: Image.asset('assets/icons/support.png'),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: yellow,
                  ),
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => FaqPage2())),
                ),
                Divider(),
                ListTile(
                  title: Text('Como os dados pessoais são coletados?'),
                  leading: Image.asset('assets/icons/support.png'),
                  trailing: Icon(Icons.chevron_right, color: yellow),
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => FaqPage3())),
                ),
                Divider(),
                ListTile(
                  title: Text('Para que fins utilizamos seus dados?'),
                  leading: Image.asset('assets/icons/support.png'),
                  trailing: Icon(Icons.chevron_right, color: yellow),
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => FaqPage4())),
                ),
                Divider(),
                ListTile(
                  title: Text('Nós compartilhamos seus dados com terceiros?'),
                  leading: Image.asset('assets/icons/support.png'),
                  trailing: Icon(Icons.chevron_right, color: yellow),
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => FaqPage5())),
                ),
                Divider(),
                ListTile(
                  title: Text('Quais são os direitos dos usuários do serviço?'),
                  leading: Image.asset('assets/icons/support.png'),
                  trailing: Icon(Icons.chevron_right, color: yellow),
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => FaqPage6())),
                ),
                Divider(),
                ListTile(
                  title: Text('Quais são as obrigações dos usuários do serviço?'),
                  leading: Image.asset('assets/icons/support.png'),
                  trailing: Icon(Icons.chevron_right, color: yellow),
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => FaqPage7())),
                ),
                Divider(),
                ListTile(
                  title: Text('Em caso de dúvidas entre em contato.'),
                  leading: Image.asset('assets/icons/faq.png'),
                  trailing: Icon(Icons.chevron_right, color: yellow),
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => FaqPage8())),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  
}
