import 'package:construction_app/src/common_widgets/search_bar.dart';
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class DocumentsScreen extends StatelessWidget {
  DocumentsScreen({super.key});

  final List<Map<String, dynamic>> documents = [
    {
      'title': 'ErdgeschoB',
      'description': 'Erstellt am 4.9.2023, 10:45:11',
      'imageUrl': 'assets/images/ph_file.svg',
    },
    {
      'title': 'Leistungsverzeichnis.pdf',
      'description': 'V1 Erstellt am 4.9.2023, 10:45:12',
      'imageUrl': 'assets/images/pdf.svg',
    }
  ];

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
          'Dokumente',
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
              ),
            ),
            child: const Icon(
              Icons.more_horiz,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSizer.getWidth(context, 39),
            vertical: AppSizer.getHeight(context, 18),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchBarWidget(),
              const SizedBox(
                height: 18,
              ),
              const Text(
                'Alle Dateien (2)',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                // height: 200,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 18,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 2,
                      offset: Offset(1, 1),
                      spreadRadius: 0,
                    ),
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 2,
                      offset: Offset(-1, -1),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: ListView.separated(
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 15,
                  ),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (context, index) => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DocumentItem(
                        description: documents[index]['description'],
                        imageUrl: documents[index]['imageUrl'],
                        title: documents[index]['title'],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.more_horiz),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DocumentItem extends StatelessWidget {
  DocumentItem({
    super.key,
    required this.description,
    required this.imageUrl,
    required this.title,
  });

  final String imageUrl;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(imageUrl),
        const SizedBox(
          width: 3,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black,
                fontSize: AppSizer.getWidth(context, 14),
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
            // SizedBox(height: 3,),

            Text(
              description,
              style: TextStyle(
                color: Colors.black,
                fontSize: 10,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            )
          ],
        )
      ],
    );
  }
}
