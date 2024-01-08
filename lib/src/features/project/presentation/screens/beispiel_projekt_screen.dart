import 'package:construction_app/src/common_widgets/button.dart';
import 'package:construction_app/src/common_widgets/setting_tile.dart';
import 'package:construction_app/src/constants/colors.dart';
import 'package:construction_app/src/features/project/presentation/widgets/setting_tile.dart';
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BeispielProjekt extends StatelessWidget {
  const BeispielProjekt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.pop();
          },
        ),
        title: const Text(
          'Beispielprojekt',
          style: TextStyle(
            color: Color(0xFF041675),
            fontSize: 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(
                right: AppSizer.getWidth(
              context,
              39,
            )),
            child: const Text(
              'Fertig',
              style: TextStyle(
                color: Color(0xFF223CC5),
                fontSize: 12,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSizer.getWidth(context, 34),
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/building_2.png',
                  height: 261,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              SettingTile(
                text: 'Projektstatistik',
                icon: true,
              ),
              SettingTile(
                text: 'Tickets mit GPS position anzeigen',
                icon: true,
              ),
              SettingTitle(title: 'Projektverwaltung',),
              SettingTile(
                text: 'Benutzer im Projekt',
                suffixText: '1 Benutzer',
                icon: true,
              ),
              SettingTile(
                text: 'Gruppen',
                icon: true,
              ),
              SettingTitle(title: 'Projektinformationen'),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                  bottom: 8.0,
                  right: 18.0,
                ),
                child: SettingTile(
                  text: 'Projektnummer',
                  suffixText: 'BP1',
                ),
              ),
              SettingTile(
                text: 'Beschreibung',
                suffixText: 'Hotelkomplex',
                icon: true,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                  bottom: 8.0,
                  right: 18.0,
                ),
                child: SettingTile(
                  text: 'Strasse',
                  suffixText: 'HauptstraBe 1',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                  bottom: 8.0,
                  right: 18.0,
                ),
                child: SettingTile(
                  text: 'Stadt',
                  suffixText: 'Wien',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                  bottom: 8.0,
                  right: 18.0,
                ),
                child: SettingTile(
                  text: 'Staat',
                  suffixText: 'Austria',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                  bottom: 8.0,
                  right: 18.0,
                ),
                child: SettingTile(
                  text: 'PLZ',
                  suffixText: '1010',
                ),
              ),
              SettingTile(
                text: 'Website',
                suffixText: 'bView.com',
                icon: true,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                  bottom: 8.0,
                  right: 18.0,
                ),
                child: SettingTile(
                  text: 'Projektstart',
                  suffixText: '01.10.21',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                  bottom: 8.0,
                  right: 18.0,
                ),
                child: SettingTile(
                  text: 'Projektende',
                  suffixText: '30.06.24',
                ),
              ),
              SettingTitle(title: 'Zusatzinformationen'),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                  bottom: 8.0,
                  right: 18.0,
                ),
                child: SettingTile(
                  text: 'Bauherr',
                  suffixText: 'Bauradar AG',
                ),
              ),
              SizedBox(
                height: AppSizer.getHeight(context, 40),
              ),
              Button(
                backgroundColor: AppColors.primary,
                textColor: Colors.white,
                title: 'Details bearbeiten',
                width: double.infinity,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
