import 'package:flutter/material.dart';
import 'package:loginpage/BottomNavigator.dart';
import 'package:loginpage/SonHareketler2.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool gorunum = true;
  final _formKey = GlobalKey<FormState>();
  void _toggle() {
    setState(() {
      gorunum = !gorunum;
    });
  }

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
           // autovalidateMode: AutovalidateMode.onUserInteraction,
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  Column(
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
                              validator: (deger) {
                              if (deger == null || deger.isEmpty ) {
                                return 'Lütfen e-mail giriniz.';
                              }
                              else if(!deger.contains(RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"))){
                                return 'Lütfen geçerli bir e-mail giriniz.';
                              }
                              return null;
                            },
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
                              validator: (deger) {
                                if (deger == null || deger.isEmpty ) {
                                  return 'Lütfen şifre giriniz.';
                                }
                                else if(deger.length < 8){
                                  return 'Şifre uzunluğu en az 8 karakterli olmalıdır.';
                                }
                                return null;
                              },
                              obscureText: gorunum,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: 'Şifre',
                                  hintStyle: TextStyle(
                                      color: Colors.black54.withOpacity(0.35)),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      gorunum
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                    ),
                                    onPressed: _toggle,
                                  )),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 35, right: 30, top: 10),
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
                                  if (_formKey.currentState!.validate()) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            BottomNavigatorTest()),
                                  );
                                }
                                },
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.purple[900],
                                        borderRadius:
                                            BorderRadius.circular(8.0)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Text(
                                        'Giriş Yap',
                                        style: TextStyle(
                                            fontSize: 17, color: Colors.white),
                                      ),
                                    ))),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 120,
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      highlightColor: Colors.blue,
                      icon: Icon(
                        Icons.contact_support_outlined,
                        color: Colors.purple[900],
                        size: 35.0,
                      ),
                      onPressed: () {
                        openDialog();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future openDialog() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Sizinle iletişime geçebilmemiz için lütfen e-mailinizi ve şikayetinizi yazınız."),
          content: Container(
            height: 150.0,
            width: 400.0,
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(hintText: 'Lütfen mail adresinizi giriniz.'),
                ),
                TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(hintText: 'Lütfen şikayetinizi yazınız.',

                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Gönder"))
          ],
        ),
      );
}
