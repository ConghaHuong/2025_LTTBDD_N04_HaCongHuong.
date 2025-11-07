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
                    builder: (_) => const QuocGia(
                      loai: 'monan',
                    ),
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const QuocGia(
                      loai: 'diadiem',
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.group),
              label: const Text(
                'Giới thiệu về nhóm',
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        const GioiThieuNhom(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class QuocGia extends StatelessWidget {
  final String loai;
  const QuocGia({super.key, required this.loai});

  final List<Map<String, dynamic>>
  quocgia = const [
    {
      'ten': 'Nhật Bản',
      'anh': 'imgs/nhatban.png',
      'monan': [
        {
          'ten': 'Sushi',
          'anh': 'imgs/sushi.jpeg',
          'mota':
              'Món ăn truyền thống Nhật Bản gồm cơm trộn giấm và hải sản tươi.',
        },
        {
          'ten': 'Ramen',
          'anh': 'imgs/ramen.jpeg',
          'mota':
              'Mì nước đậm đà với nước dùng ninh xương và topping đa dạng.',
        },
        {
          'ten': 'Takoyaki',
          'anh': 'imgs/takoyaki.jpeg',
          'mota':
              'Bánh bạch tuộc thơm ngon giòn bên ngoài, mềm bên trong.',
        },
      ],
      'diadiem': [
        {
          'ten': 'Tháp Tokyo',
          'anh': 'imgs/tokyotower.jpeg',
          'mota':
              'Biểu tượng hiện đại của Tokyo, điểm ngắm thành phố lý tưởng.',
        },
        {
          'ten': 'Núi Phú Sĩ',
          'anh': 'imgs/nuiphusi.jpeg',
          'mota':
              'Ngọn núi cao nhất Nhật Bản, biểu tượng thiêng liêng của đất nước.',
        },
        {
          'ten': 'Lâu đài Osaka',
          'anh': 'imgs/thanhosaka.jpeg',
          'mota':
              'Di tích lịch sử nổi tiếng với kiến trúc cổ kính và vườn hoa anh đào.',
        },
      ],
    },
    {
      'ten': 'Việt Nam',
      'anh': 'imgs/vietnam.jpeg',
      'monan': [
        {
          'ten': 'Phở',
          'anh': 'imgs/pho.jpeg',
          'mota':
              'Món ăn truyền thống Việt Nam với nước dùng thơm ngon và thịt bò mềm.',
        },
        {
          'ten': 'Bánh mì',
          'anh': 'imgs/banhmi.jpeg',
          'mota':
              'Món ăn đường phố nổi tiếng, kết hợp giữa bánh mì giòn và nhân đa dạng.',
        },
        {
          'ten': 'Gỏi cuốn',
          'anh': 'imgs/goicuon.jpeg',
          'mota':
              'Món ăn thanh mát gồm tôm, thịt, rau cuốn trong bánh tráng.',
        },
      ],
      'diadiem': [
        {
          'ten': 'Vịnh Hạ Long',
          'anh': 'imgs/halongbay.jpeg',
          'mota':
              'Kỳ quan thiên nhiên thế giới với hàng nghìn hòn đảo đá vôi.',
        },
        {
          'ten': 'Phố cổ Hội An',
          'anh': 'imgs/hoian.jpeg',
          'mota':
              'Di sản văn hoá thế giới nổi tiếng với đèn lồng và phố cổ ven sông.',
        },
        {
          'ten': 'Sa Pa',
          'anh': 'imgs/sapa.jpeg',
          'mota':
              'Thị trấn vùng cao nổi tiếng với ruộng bậc thang và khí hậu mát mẻ.',
        },
      ],
    },
    {
      'ten': 'Ý',
      'anh': 'imgs/italy.png',
      'monan': [
        {
          'ten': 'Pizza',
          'anh': 'imgs/pizza.jpg',
          'mota':
              'Món bánh nướng nổi tiếng với phô mai và cà chua, biểu tượng ẩm thực Ý.',
        },
        {
          'ten': 'Pasta',
          'anh': 'imgs/pasta.jpeg',
          'mota':
              'Mì Ý đa dạng với nhiều loại sốt hấp dẫn, phổ biến khắp thế giới.',
        },
        {
          'ten': 'Lasagna',
          'anh': 'imgs/lasagna.jpeg',
          'mota':
              'Mì nướng nhiều lớp phô mai, thịt và sốt cà chua đặc trưng.',
        },
      ],
      'diadiem': [
        {
          'ten': 'Đấu trường Colosseum',
          'anh': 'imgs/colosseum.jpeg',
          'mota':
              'Công trình La Mã cổ đại biểu tượng của thành Rome.',
        },
        {
          'ten': 'Thành phố Venice',
          'anh': 'imgs/venice.jpeg',
          'mota':
              'Thành phố trên mặt nước nổi tiếng với hệ thống kênh rạch và gondola.',
        },
        {
          'ten': 'Nhà thờ Florence',
          'anh': 'imgs/florence_cathedral.jpeg',
          'mota':
              'Tuyệt tác kiến trúc Gothic nổi tiếng ở Ý với mái vòm đỏ biểu tượng.',
        },
      ],
    },
    {
      'ten': 'Mexico',
      'anh': 'imgs/mexico.png',
      'monan': [
        {
          'ten': 'Taco',
          'anh': 'imgs/taco.jpeg',
          'mota':
              'Món ăn truyền thống Mexico với vỏ bánh ngô và nhân thịt, rau sống.',
        },
        {
          'ten': 'Burrito',
          'anh': 'imgs/burrito.jpeg',
          'mota':
              'Bánh cuốn lớn với nhân đậu, cơm, thịt và rau, được gói trong bánh mì ngô mềm.',
        },
        {
          'ten': 'Quesadilla',
          'anh': 'imgs/quesadilla.jpeg',
          'mota':
              'Bánh ngô nhân phô mai, thịt và rau, chiên vàng giòn rụm.',
        },
      ],
      'diadiem': [
        {
          'ten': 'Kim tự tháp Chichen Itza',
          'anh': 'imgs/chichenitza.jpeg',
          'mota':
              'Kỳ quan thế giới cổ đại của người Maya, nằm ở bán đảo Yucatan.',
        },
        {
          'ten': 'Thành phố Cancún',
          'anh': 'imgs/cancun.jpeg',
          'mota':
              'Thiên đường nghỉ dưỡng với bãi biển xanh và khu du lịch sôi động.',
        },
        {
          'ten': 'Thủ đô Mexico City',
          'anh': 'imgs/mexicocity.jpeg',
          'mota':
              'Trung tâm văn hóa và lịch sử của Mexico với nhiều bảo tàng nổi tiếng.',
        },
      ],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          loai == 'monan'
              ? 'Chọn quốc gia (Món ăn)'
              : 'Chọn quốc gia (Du lịch)',
        ),
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
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DanhSachChiTiet(
                    tenQuocGia: qg['ten'],
                    ds:
                        List<
                          Map<String, String>
                        >.from(qg[loai]),
                  ),
                ),
              );
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius:
                      BorderRadius.circular(16),
                  child: Image.asset(
                    qg['anh']!,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
                Container(
                  color: Colors.black45,
                  child: Text(
                    qg['ten']!,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
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

class DanhSachChiTiet extends StatelessWidget {
  final String tenQuocGia;
  final List<Map<String, String>> ds;
  const DanhSachChiTiet({
    super.key,
    required this.tenQuocGia,
    required this.ds,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(tenQuocGia)),
      body: ListView.builder(
        itemCount: ds.length,
        itemBuilder: (context, index) {
          var item = ds[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        ManHinhChiTiet(
                          ten: item['ten']!,
                          anh: item['anh']!,
                          mota: item['mota']!,
                        ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.orangeAccent,
                padding:
                    const EdgeInsets.symmetric(
                      vertical: 16,
                    ),
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(12),
                ),
              ),
              child: Text(
                item['ten']!,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ManHinhChiTiet extends StatefulWidget {
  final String ten;
  final String anh;
  final String mota;

  const ManHinhChiTiet({
    super.key,
    required this.ten,
    required this.anh,
    required this.mota,
  });

  @override
  State<ManHinhChiTiet> createState() =>
      _ManHinhChiTietState();
}

class _ManHinhChiTietState
    extends State<ManHinhChiTiet> {
  int danhGia = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.ten)),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(
                20,
              ),
              child: Image.asset(
                widget.anh,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              widget.ten,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Text(
                widget.mota,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white70,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Đánh giá theo ý kiến của bạn:',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center,
              children: List.generate(5, (index) {
                return IconButton(
                  onPressed: () {
                    setState(() {
                      danhGia = index + 1;
                    });
                  },
                  icon: Icon(
                    Icons.star,
                    color: danhGia > index
                        ? Colors.orange
                        : Colors.grey,
                    size: 36,
                  ),
                );
              }),
            ),
            Text(
              '$danhGia / 5 sao',
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GioiThieuNhom extends StatelessWidget {
  const GioiThieuNhom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Giới thiệu về nhóm'),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Thành viên nhóm : Hà Công Hướng.\nMSSV: 23010558.',
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
