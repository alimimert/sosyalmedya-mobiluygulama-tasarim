import 'package:flutter/material.dart';
import 'package:sosyalmedyatasarimuygulamasi/KaydolmaEkrani.dart';
import 'AnaSayfa.dart';

class GirisYapmaEkrani extends StatefulWidget {
  const GirisYapmaEkrani({Key? key}) : super(key: key);

  @override
  State<GirisYapmaEkrani> createState() => _GirisYapmaEkraniState();
}

class _GirisYapmaEkraniState extends State<GirisYapmaEkrani> {
  TextEditingController kullaniciAdiController = TextEditingController();
  TextEditingController sifreController = TextEditingController();
  bool sifreGizli = true; // Şifrenin gizli olup olmadığını kontrol etmek için bir değişken

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Center(
                    child: Text(
                      "BİNKGRAM",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 34,
                        color: Colors.purple,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 250,
                  child: Image.asset("images/logo.png"),
                ),
                Center(
                  child: Text(
                    "Giriş Yap",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                      color: Colors.purple,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: kullaniciAdiController,
                  decoration: InputDecoration(
                    labelText: 'Kullanıcı Adı',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    prefixIcon: Icon(Icons.person), // Kullanıcı simgesi
                  ),
                ),
                SizedBox(height: 16.0),
                TextField(
                  controller: sifreController,
                  obscureText: sifreGizli,
                  decoration: InputDecoration(
                    labelText: 'Şifre',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    prefixIcon: Icon(Icons.lock), // Kilit simgesi
                    suffixIcon: IconButton(
                      icon: Icon(
                        sifreGizli ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          sifreGizli = !sifreGizli;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple, // Buton rengi
                    ),
                    onPressed: () {
                      girisYap();
                    },
                    child: Text('Giriş Yap'),
                  ),
                ),
                SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Bir Hesabınız Yok Mu? "),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => KaydolmaEkrani()));
                      },
                      child: Text(
                        'Kaydol.',
                        style: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void girisYap() {
    String kullaniciAdi = kullaniciAdiController.text;
    String sifre = sifreController.text;

    if (kullaniciAdi.isNotEmpty && sifre.isNotEmpty) {
      // Kullanıcı adı ve şifre dolu ise Ana Sayfa ekranına geçiş yapalım
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => AnaSayfa()),
      );
    } else {
      // Kullanıcı adı veya şifre boşsa hata mesajı gösterelim
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Lütfen kullanıcı adı ve şifreyi doldurun.'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }
}
