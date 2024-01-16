import 'package:construction_app/src/common_widgets/dots_widget.dart';
import 'package:construction_app/src/common_widgets/plus_icon_button.dart';

import 'package:construction_app/src/constants/colors.dart';
import 'package:construction_app/src/features/Home/presentation/widgets/app_bar.dart';
import 'package:construction_app/src/features/Home/presentation/widgets/drawer_widget.dart';
import 'package:construction_app/src/features/Home/presentation/widgets/popup.dart';
import 'package:construction_app/src/routing/routing.dart';

import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  Future<void> _showPopup(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // prefs.clear();
    bool hasSeenPopup = prefs.getBool('hasSeenPopup') ?? false;

    if (!hasSeenPopup) {
      showPopup(context);
      await prefs.setBool('hasSeenPopup', true);
    }
  }

  @override
  Widget build(BuildContext context) {
    void useEffectOnce(void Function() effect) {
      useEffect(() {
        effect();
        return null;
      }, const []);
    }

    useEffectOnce(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _showPopup(context);
      });
    });

    final selectedIndex = useState(0);
    final pageController = usePageController();

    void onSlide(int index) {
      selectedIndex.value = index;
    }

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        flexibleSpace: Padding(
          padding: EdgeInsets.only(
            top: AppSizer.getHeight(context, 45),
          ),
          child: const HomeAppBarWidget(),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      drawer: const DrawerWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: SizedBox(
                height: 200,
                width: double.infinity,
                child: PageView.builder(
                  onPageChanged: (index) {
                    onSlide(index);
                  },
                  controller: pageController,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: ColorFiltered(
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.3),
                                  BlendMode.darken,
                                ),
                                child: Image.asset(
                                  'assets/images/building.jpg',
                                  fit: BoxFit.cover,
                                  width: MediaQuery.of(context).size.width,
                                ),
                              ),
                            ),
                            Positioned(
                              top: AppSizer.getWidth(context, 24),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 2),
                                    decoration: const BoxDecoration(
                                      color: AppColors.primary,
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(4),
                                        bottomRight: Radius.circular(4),
                                      ),
                                    ),
                                    child: Text(
                                      'E-Plaza warehouse',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize:
                                            AppSizer.getHeight(context, 18),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 2),
                                    decoration: const BoxDecoration(
                                      color: AppColors.primary,
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(4),
                                        bottomRight: Radius.circular(4),
                                      ),
                                    ),
                                    child: Text(
                                      'Construction',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize:
                                            AppSizer.getHeight(context, 18),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: AppSizer.getHeight(context, 18),
                              left: AppSizer.getWidth(context, 6),
                              child: const Text(
                                'Construction Map',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: AppSizer.getHeight(context, 18),
                              right: AppSizer.getWidth(context, 20),
                              child: Icon(
                                Icons.file_download_outlined,
                                color: Colors.white,
                                size: AppSizer.getWidth(context, 25),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: 3,
                ),
              ),
            ),
            SizedBox(
              height: AppSizer.getHeight(context, 18),
            ),
            Center(
              child: DotsWidget(
                selectedIndex: selectedIndex.value,
                size: 20,
                totalDots: 3,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSizer.getWidth(context, 30),
                vertical: AppSizer.getHeight(context, 30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Neues project',
                        style: TextStyle(
                          fontSize: AppSizer.getWidth(context, 18),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      PlusIconbutton(
                        onTap: () {
                          context.pushNamed(AppRoutes.CreateProjectScreen.name);
                        },
                      )
                    ],
                  ),
                  Text(
                    'Erstellen Sie Ihr erstes Projekt, um \n Loszulegen',
                    style: TextStyle(
                      fontSize: AppSizer.getWidth(context, 14),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: AppSizer.getHeight(context, 18),
                  ),
                  
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
