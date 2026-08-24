import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
 
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
 
class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _identityController = TextEditingController();
  final TextEditingController _keycodeController = TextEditingController();
  bool _obscureKeycode = true;
 
  @override
  void dispose() {
    _identityController.dispose();
    _keycodeController.dispose();
    super.dispose();
  }
 
  InputDecoration _fieldDecoration({
    required String hint,
    Widget? suffixIcon,
  }) {
    return InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(color: Colors.white.withOpacity(0.25)),
      filled: true,
      fillColor: Colors.white.withOpacity(0.04),
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      suffixIcon: suffixIcon,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.white.withOpacity(0.08)),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.white.withOpacity(0.08)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Color(0xFF3B6EF5)),
      ),
    );
  }
 
  Widget _label(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white.withOpacity(0.45),
          fontSize: 11,
          fontWeight: FontWeight.w600,
          letterSpacing: 1,
        ),
      ),
    );
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B0D12),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: Container(
              constraints: const BoxConstraints(maxWidth: 420),
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: const Color(0xFF13161D),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white.withOpacity(0.06)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Welcome Back',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Sign in to your Zaya account.',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.4),
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(height: 24),
 
                  // Continue with Google
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton.icon(
                      onPressed: () {
                        // TODO: implementasi login Google
                      },
                      icon: Image.asset(
                        'assets/google.png',
                        width: 20,
                        height: 20,
                      ),
                      label: const Text(
                        'Continue with Google',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        side: BorderSide(color: Colors.white.withOpacity(0.1)),
                        backgroundColor: Colors.white.withOpacity(0.03),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
 
                  // Divider OR MANUAL
                  Row(
                    children: [
                      Expanded(
                          child: Divider(color: Colors.white.withOpacity(0.08))),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'OR MANUAL',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.25),
                            fontSize: 10,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                      Expanded(
                          child: Divider(color: Colors.white.withOpacity(0.08))),
                    ],
                  ),
                  const SizedBox(height: 20),
 
                  // Identity
                  _label('EMAIL'),
                  TextField(
                    controller: _identityController,
                    style: const TextStyle(color: Colors.white),
                    decoration: _fieldDecoration(hint: 'email@example.com'),
                  ),
                  const SizedBox(height: 16),
 
                  // Keycode + Forgot
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _label('PASSWORD'),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: GestureDetector(
                          onTap: () {
                            // TODO: navigasi lupa keycode
                          },
                          child: const Text(
                            'Forgot?',
                            style: TextStyle(
                              color: Color(0xFF6C8CFF),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  TextField(
                    controller: _keycodeController,
                    obscureText: _obscureKeycode,
                    style: const TextStyle(color: Colors.white),
                    decoration: _fieldDecoration(
                      hint: '••••••••',
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureKeycode
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                          color: Colors.white.withOpacity(0.3),
                          size: 20,
                        ),
                        onPressed: () {
                          setState(() => _obscureKeycode = !_obscureKeycode);
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
 
                  // Establish Connection button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // TODO: implementasi proses login
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF3B6EF5),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 0,
                      ),
                      child: const Text(
                        'LOGIN',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),
 
                  // Register link
                  Center(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.4),
                          fontSize: 13,
                        ),
                        children: [
                          const TextSpan(text: 'New to the network? '),
                          const TextSpan(
                            text: 'Register',
                            style: TextStyle(
                              color: Color(0xFF6C8CFF),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Divider(color: Colors.white.withOpacity(0.06)),
                  const SizedBox(height: 12),
 
                  // Bottom footer badges
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.lock_outline,
                          size: 12, color: Colors.white.withOpacity(0.25)),
                      const SizedBox(width: 4),
                      Text(
                        'ENCRYPTED SESSION',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.25),
                          fontSize: 10,
                          letterSpacing: 0.5,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Icon(Icons.verified_outlined,
                          size: 12, color: Colors.white.withOpacity(0.25)),
                      const SizedBox(width: 4),
                      Text(
                        'VAULT-STABLE',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.25),
                          fontSize: 10,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}