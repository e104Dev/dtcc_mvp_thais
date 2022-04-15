import 'package:carousel_slider/carousel_slider.dart';
import 'package:dtcc_mvp_thais/pages/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<String> imgList = [
    'https://images.pexels.com/photos/3184188/pexels-photo-3184188.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/36785/soldier-military-uniform-american.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/3184195/pexels-photo-3184195.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/3195765/pexels-photo-3195765.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260'
  ];

  final conteudo = {
    'O que é?': Icons.breakfast_dining,
    'Como participar?': Icons.breakfast_dining,
    'Quem somos?': Icons.breakfast_dining
  };

  static final icones = [
    {'O que é?': Icons.breakfast_dining},
    {'Como participar?': Icons.question_answer},
    {'Quem somos?': Icons.account_box},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(color: Colors.transparent),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/2519774/pexels-photo-2519774.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
              ),
              accountName: Text(
                'Thais Lorraine',
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyMedium!.color,
                ),
              ),
              accountEmail: Text(
                'thais@gmail.com',
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyMedium!.color,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configurações'),
            ),
            const ListTile(
              leading: Icon(Icons.email),
              title: Text('contato@gmail.com'),
            ),
            const ListTile(
              leading: Icon(Icons.phone_android),
              title: Text('(19) 99999-9999'),
            ),
            const ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Sair'),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
                autoPlay: true, aspectRatio: 16 / 9, enlargeCenterPage: true),
            items: imgList
                .map(
                  (e) => Center(
                    child: Image.network(
                      e,
                      fit: BoxFit.cover,
                      width: 1000,
                    ),
                  ),
                )
                .toList(),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: icones.length,
              itemBuilder: (context, index) {
                return ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxHeight: 200,
                    minHeight: 100,
                  ),
                  child: CardMvp(
                    conteudoResumido:
                        'Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. ',
                    titulo: icones[index].entries.first.key,
                    icone: icones[index].values.first,
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.food_bank,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: 'Configurações'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.gps_fixed,
              ),
              label: 'Pontos'),
        ],
      ),
    );
  }
}
