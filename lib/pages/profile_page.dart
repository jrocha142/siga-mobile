import 'dart:io'; // Necessário para File
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart'; // Adicionar o pacote image_picker
import 'package:siga_alunos/pages/login_page.dart';
import 'package:siga_alunos/themes/app_colors.dart';
import 'package:siga_alunos/themes/app_text_styles.dart';
import 'package:siga_alunos/util/components/profile_card.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  XFile? _profileImage; 
  final ImagePicker _picker = ImagePicker(); 

  Future<void> _showPicker(context) async {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.black,
      builder: (BuildContext bc) {
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: const Icon(
                  Icons.photo_library,
                  color: Colors.white,
                ),
                title: Text(
                  'Galeria',
                  style: AppTextStyles.profileListTileTxt,
                ),
                onTap: () {
                  _pickImage(ImageSource.gallery); 
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.photo_camera,
                  color: Colors.white,
                ),
                title: Text(
                  'Câmera',
                  style: AppTextStyles.profileListTileTxt,
                ),
                onTap: () {
                  _pickImage(ImageSource.camera); 
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _pickImage(ImageSource source) async {
    final XFile? image = await _picker.pickImage(source: source);

    if (image != null) {
      setState(() {
        _profileImage = image; // Atualizar o estado com a nova imagem
      });
    }
  }

  Future<void> _logOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      Navigator.push(
        context, 
        MaterialPageRoute(builder: (context) => LoginPage())
      );
    } catch(e) {
      print('Erro ao deslogar: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.twilightBlue,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            width: 500,
            height: 284,
            decoration: const BoxDecoration(
              color: AppColors.matteBlack,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(84),
                bottomRight: Radius.circular(84),
              ),
            ),
            child: Column(
              children: [
                Text(
                  'Perfil',
                  style: AppTextStyles.profileTitleTxt,
                ),
                const SizedBox(height: 24),
                // Stack para sobrepor o ícone de edição à foto
                Stack(
                  children: [
                    // Container que será a foto de perfil
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        image: _profileImage != null
                            ? DecorationImage(
                                image: FileImage(
                                  File(_profileImage!.path),
                                ),
                                fit: BoxFit.cover,
                              )
                            : null, // Se a imagem estiver presente, ela será mostrada
                      ),
                    ),
                    // Ícone de editar (câmera) posicionado no canto inferior direito
                    if (_profileImage == null) // Mostrar o ícone apenas se não houver imagem
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: GestureDetector(
                          onTap: () => _showPicker(context), // Chama a função para escolher imagem
                          child: Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              color: AppColors.lightPurple,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: const Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 12),
                Text(
                  'João Pedro Rocha',
                  style: AppTextStyles.profileNameTxt,
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          const ProfileCard(cardText: 'Dados da Conta', color: AppColors.lightPurple, icon: Icon(Icons.info)),
          const SizedBox(height: 8),
          const ProfileCard(cardText: 'Configurações', color: AppColors.grassGreen, icon: Icon(Icons.settings)),
          const SizedBox(height: 8),
          const ProfileCard(cardText: 'Matrícula', color: AppColors.skyBlue, icon: Icon(Icons.school)),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: _logOut,
            child: const ProfileCard(cardText: 'Sair', color: AppColors.limeGreen, icon: Icon(Icons.exit_to_app))
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
