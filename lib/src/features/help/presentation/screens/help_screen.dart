// ignore_for_file: must_be_immutable

import 'package:construction_app/src/common_widgets/setting_tile.dart';
import 'package:construction_app/src/constants/colors.dart';
import 'package:construction_app/src/features/help/presentation/widgets/help_setting.dart';
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

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
          'Unterstützung',
          style: TextStyle(color: AppColors.primary, fontSize: 16),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            height: 2,
            color: const Color.fromARGB(255, 167, 163, 163),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: AppSizer.getWidth(context, 59),
            right: AppSizer.getWidth(context, 29),
            top: AppSizer.getHeight(context, 24),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SettingTitle(title: 'Kontakt'),
              SizedBox(
                height: AppSizer.getHeight(context, 14),
              ),
              const HelpSettingTile(
                iconPath: "assets/icons/symbols_report.svg",
                text: 'Fehler melden',
              ),
              const HelpSettingTile(
                iconPath: "assets/icons/ep_message.svg",
                text: 'Fultion anfragen',
              ),
              const HelpSettingTile(
                iconPath: "assets/icons/help-circle.svg",
                text: 'Frage stellen',
              ),
              const HelpSettingTile(
                iconPath: "assets/icons/carbon_demo.svg",
                text: 'Demo anfordern',
              ),
              SizedBox(
                height: AppSizer.getHeight(context, 20),
              ),
              const SettingTitle(
                title: 'App Info',
              ),
              SizedBox(
                height: AppSizer.getHeight(context, 14),
              ),
              const HelpSettingTile(
                iconPath: "assets/icons/tdesign_app.svg",
                text: 'Anwendung bewerten',
              ),
              const Text(
                'Version 1.99.0',
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(
                height: AppSizer.getHeight(context, 20),
              ),
              const SettingTitle(
                title: 'Debug Tools',
              ),
              SizedBox(
                height: AppSizer.getHeight(context, 14),
              ),
              const HelpSettingTile(
                iconPath: "assets/icons/cache.svg",
                text: 'Cache Ioschen',
              ),
              const HelpSettingTile(
                iconPath: "assets/icons/upload.svg",
                text: 'Downloads erzwingen',
              ),
              const HelpSettingTile(
                iconPath: "assets/icons/upload.svg",
                text: 'Uploads erzwingen',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
