import 'package:flutter/material.dart';
import 'package:sosyalmedyatasarimuygulamasi/Profilim.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ana Sayfa'),
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SafeArea(
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('images/logo.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Kullanıcı Adı',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Profilim(),
                    ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Icon(Icons.person),
                        Text("Profilim"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 5, // Gönderi sayısı
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: Colors.grey[300]!,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.purple,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage('images/logo.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Gönderi Sahibi'),
                                Text('2 saat önce'),
                              ],
                            ),
                            Expanded(child: Container()), // Expanded ile Spacer yerine kullanım
                            Icon(Icons.more_vert),
                          ],
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          'https://picsum.photos/id/106${3 + index}/400/400',
                          width: double.infinity,
                          height: 300,
                          fit: BoxFit.cover,
                        ),
                      ), // Gönderi resmi
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.favorite_border),
                                SizedBox(width: 8),
                                Text('150 beğeni'),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.chat_bubble_outline),
                                SizedBox(width: 8),
                                Text('25 yorum'),
                              ],
                            ),
                            Icon(Icons.send),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: RichText(
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: [
                              TextSpan(
                                text: 'Gönderi açıklaması buraya gelecek. Bu kısım çok uzun olabilir ve birden fazla satır içerebilir.',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height:6,
                color: Colors.black,
              ),
            ],
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: AnaSayfa(),
  ));
}
