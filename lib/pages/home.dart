import 'package:flutter/material.dart';
import 'package:siga_alunos/pages/home_page.dart';
import 'package:siga_alunos/pages/information_page.dart';
import 'package:siga_alunos/pages/profile_page.dart';
import 'package:siga_alunos/themes/app_colors.dart';
import 'package:siga_alunos/themes/app_text_styles.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0; // Índice da página atual
  final PageController _pageController = PageController(); // Controlador do PageView

  final List<Widget> _pages = [
    HomePage(),
    InformationPage(),
    ProfilePage(),
  ];

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentIndex = _pageController.page!.round(); 
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose(); 
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.twilightBlue,
      body: PageView(
        controller: _pageController, 
        children: _pages, 
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(36),
          topRight: Radius.circular(36),
        ),
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
          ),
          child: BottomNavigationBar(
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            selectedLabelStyle: AppTextStyles.bottomNavBarLabel,
            unselectedLabelStyle: AppTextStyles.bottomNavBarLabel,
            showUnselectedLabels: true,
            backgroundColor: AppColors.matteBlack,
            currentIndex: _currentIndex,
            onTap: (index) {
              _pageController.jumpToPage(index);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: AppColors.lightPurple,
                  size: 32,
                ),
                label: 'Início'
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.info,
                  color: AppColors.skyBlue,
                  size: 32,
                ),
                label: 'Informações',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.amber,
                  size: 32,
                ),
                label: 'Perfil',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
