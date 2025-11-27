import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_picross/common/decorations.dart';

/// トップページ
class TopScreen extends StatelessWidget {
  const TopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: backgroundDecoration,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/character.png',
                  width: 128,
                ),
                const SizedBox(
                  width: 16,
                ),
                Text(
                  'QR Picross',
                  style: GoogleFonts.orbitron(
                    fontSize: 72.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        blurRadius: 4.0,
                        color: Colors.black.withValues(alpha: 0.5),
                        offset: const Offset(4.0, 4.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 72,
            ),
            ElevatedButton(
              onPressed: () => context.go('/input'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                foregroundColor: Colors.white,
                backgroundColor: Colors.orange,
              ),
              child: const Text(
                'QRピクロスを作る',
                style: TextStyle(fontSize: 24.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
