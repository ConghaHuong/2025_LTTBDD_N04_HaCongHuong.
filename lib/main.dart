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
              onPressed: () {},
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
