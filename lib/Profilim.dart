import 'package:flutter/material.dart';

class Profilim extends StatefulWidget {
  const Profilim({Key? key}) : super(key: key);

  @override
  State<Profilim> createState() => _ProfilimState();
}

class _ProfilimState extends State<Profilim> {
  bool hesapGizliligi = false; // Switch durumunu saklamak için bir değişken

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profilim'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('images/logo.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Kullanıcı Adı',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        '150',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Takipçi'),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '200',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Takip Edilen'),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '20',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Gönderi'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Kullanıcı Hakkında',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Flutter geliştirici. Fotoğrafçılık ve doğa sever. Yeni insanlarla tanışmayı ve yeni projelerde çalışmayı seviyorum.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Paylaştıklarım',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          'https://picsum.photos/id/1062/400/400',
                          width: 110,
                          height: 110,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 8),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          'https://picsum.photos/id/1061/400/400',
                          width: 110,
                          height: 110,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 8),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          'https://picsum.photos/id/1060/400/400',
                          width: 110,
                          height: 110,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          'https://picsum.photos/id/1059/400/400',
                          width: 110,
                          height: 110,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 8),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          'https://picsum.photos/id/1058/400/400',
                          width: 110,
                          height: 110,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 8),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          'https://picsum.photos/id/1057/400/400',
                          width: 110,
                          height: 110,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        'Hesabımı Kimler Görebilsin?',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Switch(
                        value: hesapGizliligi,
                        onChanged: (value) {
                          setState(() {
                            hesapGizliligi = value;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Profilim(),
  ));
}
