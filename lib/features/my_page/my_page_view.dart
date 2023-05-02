import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'my_page_state.dart';

class MyPageView extends StatelessWidget {
  const MyPageView(this.state, {Key? key}) : super(key: key);

  final MyPageState state;

  @override
  Widget build(BuildContext context) {
    state.width = MediaQuery.of(context).size.width;
    state.height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Principal
            // _home(),

            // Acerca de mi
            _aboutMe(),

            // Trabajos / Portafolio
            // _work(),

            // Contacto
            // _contact(),
          ],
        ),
      ),
    );
  }

  Widget _home() {
    return Container(
      height: state.height,
      decoration: BoxDecoration(
        // border: Border.all(width: 2, color: Colors.red),
        image: DecorationImage(
          // fit: BoxFit.contain,
          // fit: BoxFit.fitWidth,
          fit: BoxFit.cover,
          // fit: BoxFit.fill,
          // fit: BoxFit.fitHeight,
          // fit: BoxFit.none,
          // fit: BoxFit.scaleDown,
          image: Image.asset(
            'assets/images/background.jpg',
          ).image,
        ),
      ),
      child: Center(
        child: Container(
          // color: Colors.grey.shade100,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 230,
                            height: 230,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 4,
                                color: Color.fromRGBO(162, 39, 0, 1.0),
                              ),
                              borderRadius: BorderRadius.circular(200),
                            ),
                            child: CircleAvatar(
                              backgroundImage:
                                  Image.asset('assets/images/profile.jpg')
                                      .image,
                            ),
                          ),
                          const SizedBox(height: 20),
                          SelectableText(
                            'Khristopher Santiago',
                            style: GoogleFonts.sourceSansPro(
                              textStyle: const TextStyle(
                                fontSize: 48,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 10),
                          SelectableText(
                            'Passionate about technology and science',
                            style: GoogleFonts.sourceSansPro(
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 10),
                          SelectableText(
                            'Mobile developer',
                            style: GoogleFonts.sourceSansPro(
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 20),
                          SelectableText(
                            'Flutter / Dart • Android / Java • Python / OpenCV',
                            style: GoogleFonts.sourceSansPro(
                              textStyle: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 20),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButtonRoundWidget(
                                  onPressed: state.onPressedEmail,
                                  icon: const Icon(Icons.email,
                                      color: Colors.white),
                                ),
                                const SizedBox(width: 20),
                                IconButtonRoundWidget(
                                  onPressed: state.onPressedLinkedin,
                                  icon: const FaIcon(FontAwesomeIcons.linkedin,
                                      color: Colors.white),
                                ),
                                const SizedBox(width: 20),
                                IconButtonRoundWidget(
                                  onPressed: state.onPressedGithub,
                                  icon: const FaIcon(FontAwesomeIcons.github,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _aboutMe() {
    // -- Descripción
    // -- Herramientas
    // -- Conociminetos
    // -- Estudios

    return Container(
      height: state.height,
      color: Colors.grey.shade800,
    );
  }

  Widget _work() {
    return Container(
      height: state.height,
      color: Colors.grey.shade700,
    );
  }

  Widget _contact() {
    return Container(
      height: state.height,
      color: Colors.grey.shade600,
    );
  }
}

class IconButtonRoundWidget extends StatelessWidget {
  const IconButtonRoundWidget({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  final void Function() onPressed;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.white),
        borderRadius: BorderRadius.circular(30),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: icon,
      ),
    );
  }
}
