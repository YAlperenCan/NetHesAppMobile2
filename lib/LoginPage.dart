import 'package:flutter/material.dart';
import 'package:loginpage/SonHareketler2.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://cdn.discordapp.com/attachments/731126213292064871/1001441274991214592/unknown.png'),
              fit: BoxFit.cover,
              opacity: 0.95)),
      child: Scaffold(

        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Container(
                height: 50,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://cdn.discordapp.com/attachments/731126213292064871/1001464747935408158/logo-nethesapp-white.png'))),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.purple[900],
                    borderRadius: BorderRadius.circular(8.0)),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    'E-mail ve şifre bilgilerinizle giriş yapabilirsiniz',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 30.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12.0)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: TextFormField(
                      onTap: () {
                        setState(() {});
                      },
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'E-mail',
                          hintStyle: TextStyle(
                              color: Colors.black54.withOpacity(0.35))),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 30.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12.0)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                    ),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Şifre',
                          hintStyle: TextStyle(
                              color: Colors.black54.withOpacity(0.35))),
                      ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35, right: 30, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Şifremi Unuttum',
                          style: TextStyle(fontSize: 17),
                        )),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=>Sonhareketler2()),
                          );
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.purple[900],
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                'Giriş Yap',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.white),
                              ),
                            )))
                  ],
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
