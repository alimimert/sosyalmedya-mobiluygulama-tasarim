import 'package:flutter/material.dart';
import 'package:sosyalmedyatasarimuygulamasi/GirisYapmaEkrani.dart';

class KaydolmaEkrani extends StatefulWidget {
  const KaydolmaEkrani({Key? key}) : super(key: key);

  @override
  State<KaydolmaEkrani> createState() => _KaydolmaEkraniState();
}

class _KaydolmaEkraniState extends State<KaydolmaEkrani> {
  TextEditingController isimSoyisimController = TextEditingController();
  TextEditingController kullaniciAdiController = TextEditingController();
  TextEditingController sifreController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Center(
                      child: Text(
                        "BİNKGRAM",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: Colors.purple
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    child: Image.asset("images/logo.png"),
                  ),
                  Center(
                    child: Text("Kayıt Ol",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                          color: Colors.purple
                      ),),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: isimSoyisimController,
                    decoration: InputDecoration(
                      labelText: 'Ad Soyad',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16)
                      ),
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  TextField(
                    controller: kullaniciAdiController,
                    decoration: InputDecoration(
                      labelText: 'Kullanıcı Adı',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16)
                      ),
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  TextField(
                    controller: sifreController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Şifre',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16)
                      ),
                      prefixIcon: Icon(Icons.lock),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'E-posta',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16)
                      ),
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purple,
                      ),
                      onPressed: () {
                        kayitOl();
                      },
                      child: Text('Kaydol'),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Zaten Bir Hesabınız Var Mı? "),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => GirisYapmaEkrani()
                          ));
                        },
                        child: Text(
                          'Giriş Yap.',
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
      ),
    );
  }

  void kayitOl() {
    String isimSoyisim = isimSoyisimController.text;
    String kullaniciAdi = kullaniciAdiController.text;
    String sifre = sifreController.text;
    String email = emailController.text;

    if (isimSoyisim.isNotEmpty && kullaniciAdi.isNotEmpty && sifre.isNotEmpty && email.isNotEmpty) {
      // Kullanıcı bilgileri dolu ise kayıt işlemleri gerçekleştirilecek
      // Burada kayıt işlemlerini gerçekleştirebilirsiniz.
      // SnackBar ile başarılı kayıt mesajını gösterelim ve Giriş Yapma Ekranına geçiş yapalım.
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Kayıt başarıyla gerçekleştirildi!'),
          duration: Duration(seconds: 2),
        ),
      );
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => GirisYapmaEkrani()
      ));
      // Giriş Yapma Ekranına geçiş yapalım
      Navigator.pushReplacementNamed(context, '/giris');
    } else {
      // Kullanıcı bilgileri boşsa hata mesajı gösterelim
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Lütfen tüm alanları doldurun.'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }
}
