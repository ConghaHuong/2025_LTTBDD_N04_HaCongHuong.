import 'package:flutter/material.dart';

void main() {
  runApp(const UngDungTheGioi());
}

class UngDungTheGioi extends StatelessWidget {
  const UngDungTheGioi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:
          'Khám Phá Ẩm Thực & Du Lịch Thế Giới',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
      ),
      home: const TrangChinh(),
    );
  }
}

class TrangChinh extends StatelessWidget {
  const TrangChinh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Khám Phá Thế Giới'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.fastfood),
              label: const Text(
                'Món ăn nổi tiếng',
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        const QuocGia(),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.place),
              label: const Text(
                'Địa điểm du lịch nổi tiếng',
              ),
              onPressed: () {},
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.group),
              label: const Text(
                'Giới thiệu về nhóm',
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class QuocGia extends StatelessWidget {
  const QuocGia({super.key});

  final List<Map<String, String>> quocgia =
      const [
        {
          'ten': 'Nhật Bản',
          'anh': 'imgs/nhatban.png',
        },
        {
          'ten': 'Việt Nam',
          'anh': 'imgs/vietnam.jpeg',
        },
        {'ten': 'Ý', 'anh': 'imgs/italy.png'},
        {
          'ten': 'Mexico',
          'anh': 'imgs/mexico.png',
        },
      ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chọn quốc gia'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),
        itemCount: quocgia.length,
        itemBuilder: (context, index) {
          var qg = quocgia[index];
          return ClipRRect(
            borderRadius: BorderRadius.circular(
              16,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  qg['anh']!,
                  fit: BoxFit.cover,
                ),
                Container(
                  color: Colors.black45,
                  child: Text(
                    qg['ten']!,
                    style: const TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
