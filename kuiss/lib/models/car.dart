class User {
  String usn;
  String password;

  User({required this.usn, required this.password});
}

User user1 = User(usn: "mobilesukses", password: "124240128");

class Car {
  int id;
  String name;
  String brand;
  int year;
  int price;
  String description;
  String imageUrl;

  Car({
    required this.id,
    required this.name,
    required this.brand,
    required this.year,
    required this.price,
    required this.description,
    required this.imageUrl,
  });
}

final List<Car> cars = [
  Car(
    id: 1,
    name: 'Civic RS',
    brand: 'Honda',
    year: 2024,
    price: 595000000,
    description: 'Sedan sporty dengan desain modern, performa responsif, dan berbagai fitur keselamatan untuk penggunaan harian.',
    imageUrl: 'https://images.unsplash.com/photo-1552519507-da3b142c6e3d?w=800',
  ),
  Car(
    id: 2,
    name: 'Fortuner GR Sport',
    brand: 'Toyota',
    year: 2024,
    price: 735000000,
    description: 'SUV tangguh dengan desain agresif, kabin luas, dan kemampuan berkendara yang nyaman untuk perjalanan jauh.',
    imageUrl:
        'https://images.unsplash.com/photo-1511919884226-fd3cad34687c?w=800',
  ),
  Car(
    id: 3,
    name: 'Palisade',
    brand: 'Hyundai',
    year: 2024,
    price: 875000000,
    description: 'SUV premium dengan kabin luas dan nyaman, dilengkapi teknologi modern serta berbagai fitur keselamatan.',
    imageUrl:
        'https://images.unsplash.com/photo-1606664515524-ed2f786a0bd6?w=800',
  ),
  Car(
    id: 4,
    name: 'CX-5',
    brand: 'Mazda',
    year: 2023,
    price: 625000000,
    description: 'SUV elegan dengan desain khas Mazda, handling responsif, dan interior premium yang nyaman.',
    imageUrl:
        'https://images.unsplash.com/photo-1503376780353-7e6692767b70?w=800',
  ),
  Car(
    id: 5,
    name: 'Innova Zenix',
    brand: 'Toyota',
    year: 2024,
    price: 475000000,
    description: 'MPV keluarga dengan ruang kabin luas, kenyamanan tinggi, dan efisiensi yang cocok untuk perjalanan sehari-hari.',
    imageUrl: 'https://images.unsplash.com/photo-1549317661-bd32c8ce0db2?w=800',
  ),
  Car(
    id: 6,
    name: 'HR-V',
    brand: 'Honda',
    year: 2024,
    price: 425000000,
    description: 'Compact SUV dengan desain stylish, ukuran praktis untuk perkotaan, serta fitur modern untuk kenyamanan berkendara.',
    imageUrl:
        'https://images.unsplash.com/photo-1606664515524-ed2f786a0bd6?w=800',
  ),
  Car(
    id: 7,
    name: 'Alphard',
    brand: 'Toyota',
    year: 2024,
    price: 1350000000,
    description: 'MPV premium dengan kabin mewah, kursi yang nyaman, dan ruang luas untuk memberikan pengalaman perjalanan kelas atas.',
    imageUrl:
        'https://images.unsplash.com/photo-1563720223185-11003d516935?w=800',
  ),
  Car(
    id: 8,
    name: 'Jimny',
    brand: 'Suzuki',
    year: 2023,
    price: 285000000,
    description: 'SUV kompak dengan kemampuan off-road yang kuat, desain ikonik, dan ukuran yang praktis untuk berbagai kondisi jalan.',
    imageUrl:
        'https://images.unsplash.com/photo-1533473359331-0135ef1b58bf?w=800',
  ),
  Car(
    id: 9,
    name: 'Model 3',
    brand: 'Tesla',
    year: 2024,
    price: 750000000,
    description: 'Mobil listrik modern dengan desain minimalis, performa responsif, dan teknologi berkendara berbasis elektrifikasi.',
    imageUrl: 'https://images.unsplash.com/photo-1560958089-b8a1929cea89?w=800',
  ),
  Car(
    id: 10,
    name: 'Mustang GT',
    brand: 'Ford',
    year: 2023,
    price: 1200000000,
    description: 'Mobil sport ikonik dengan karakter performa tinggi, desain agresif, dan pengalaman berkendara yang khas.',
    imageUrl:
        'https://images.unsplash.com/photo-1494976388531-d1058494cdd8?w=800',
  ),
];
