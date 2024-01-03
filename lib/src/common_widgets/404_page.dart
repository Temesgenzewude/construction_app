import 'package:construction_app/src/routing/routing.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageNotFoundScreen extends Page {
  final String message;

  PageNotFoundScreen({this.message = "Page not found"})
      : super(key: ValueKey(message));

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (BuildContext context) {
        return Scaffold(
            appBar: AppBar(
              title: Text(
                message,
                style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              centerTitle: true,
              backgroundColor: Theme.of(context).secondaryHeaderColor,
            ),
            body: Container(
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/bg_images/bg_image.png'),
                  fit: BoxFit.cover,
                ),
                color: Colors.grey.withOpacity(0.2),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                          top: 50, bottom: 20, left: 20, right: 20),
                      child: Text(
                        '404 - Page Not Found',
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                      width: 200,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Theme.of(context).secondaryHeaderColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        onPressed: () {
                          context.go('/${AppRoutes.SplashScreen.name}');
                        },
                        child: const Text(
                          'Go Home',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ));
      },
    );
  }
}
