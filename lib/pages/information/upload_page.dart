import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siga_alunos/pages/home.dart';
import 'package:siga_alunos/themes/app_colors.dart';
import 'package:siga_alunos/themes/app_text_styles.dart';

class UploadPage extends StatefulWidget {
  const UploadPage({super.key});

  @override
  State<UploadPage> createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.twilightBlue,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Upload de Arquivos',
                    style: AppTextStyles.infoSectionTitlteTxt,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Home()),
                      );
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Icon(
                        Icons.keyboard_arrow_left,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 240,),
              GestureDetector(
                onTap: () => _showPicker(context),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  width: 384,
                  height: 72,
                  decoration: BoxDecoration(
                    color: AppColors.matteBlack,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Subir Arquivo',
                        style: GoogleFonts.lexendDeca(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                      const Icon(
                        Icons.upload,
                        size: 36,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

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
                  Icons.camera,
                  color: Colors.white,
                ),
                title: Text(
                  'Câmera',
                  style: AppTextStyles.profileListTileTxt,
                ),
                onTap: () {

                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.attach_file,
                  color: Colors.white,
                ),
                title: Text(
                  'Dispositivo',
                  style: AppTextStyles.profileListTileTxt,
                ),
                onTap: () {

                },
              ),
            ],
          ),
        );
      },
    );
  }
}