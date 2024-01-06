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
              SettingTitle(title: 'Kontakt'),
              SizedBox(
                height: AppSizer.getHeight(context, 14),
              ),
              HelpSettingTile(
                icon: const Icon(
                  Icons.report_gmailerrorred_outlined,
                ),
                text: 'Fehler melden',
              ),
              HelpSettingTile(
                icon: const Icon(
                  Icons.mail_outline,
                ),
                text: 'Fultion anfragen',
              ),
              HelpSettingTile(
                icon: const Icon(
                  Icons.help_outline,
                ),
                text: 'Frage stellen',
              ),
              HelpSettingTile(
                icon: const Icon(
                  Icons.tv,
                ),
                text: 'Demo anfordern',
              ),
              SizedBox(
                height: AppSizer.getHeight(context, 20),
              ),
              SettingTitle(
                title: 'App Info',
              ),
              SizedBox(
                height: AppSizer.getHeight(context, 14),
              ),
              HelpSettingTile(
                icon: const Icon(
                  Icons.widgets_outlined,
                ),
                text: 'Anwendung bewerten',
              ),
              const Text(
                'Version 1.99.0',
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(
                height: AppSizer.getHeight(context, 20),
              ),
              SettingTitle(
                title: 'Debug Tools',
              ),
              SizedBox(
                height: AppSizer.getHeight(context, 14),
              ),
              HelpSettingTile(
                icon: const Icon(
                  Icons.storage,
                ),
                text: 'Cache Ioschen',
              ),
              HelpSettingTile(
                icon: const Icon(
                  Icons.file_download_outlined,
                ),
                text: 'Downloads erzwingen',
              ),
              HelpSettingTile(
                icon: const Icon(
                  Icons.file_upload_outlined,
                ),
                text: 'Uploads erzwingen',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
