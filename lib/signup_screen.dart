import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  final _confirmPassController = TextEditingController();
  final _inviteController = TextEditingController();




  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Text(
                "Let's Get You Started",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),
              ),
              const SizedBox(height: 8),
              const Text(
                "Set up your profile with strong protection for safe crypto trading and storage.",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(height: 32),
            
            
              _buildLabel("Email"),
              TextField(
                controller: _emailController,
                decoration: _inputDecoration(
                  hint: "Enter your email",
                  prefixIcon: Icons.email_outlined,
                  
                  suffix: _buildSmallButton("Verify", onPressed: () {}), 
                ),
              ),
              const SizedBox(height: 16),;
              _buildLabel("Password"),
              TextField(
                controller: _passController,
                obscureText: !_isPasswordVisible,
                decoration: _inputDecoration(
                  hint: "Enter Password",
                  prefixIcon: Icons.lock_outline,
                  suffixIcon: IconButton(
                    icon: Icon(_isPasswordVisible ? Icons.visibility : Icons.visibility_off_outlined),
                    onPressed: () => setState(() => _isPasswordVisible = !_isPasswordVisible),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              
              _buildLabel("Confirm Password"),
              TextField(
                controller: _confirmPassController,
                obscureText: !_isPasswordVisible,
                decoration: _inputDecoration(
                  hint: "Re-Enter Password",
                  prefixIcon: Icons.lock_outline,
                  suffixIcon: Icon(Icons.visibility_off_outlined, color: Colors.grey[400]),
                ),
              ),
              const SizedBox(height: 16),

             
              _buildLabel("Invitation Code (optional)"),
              TextField(
                controller: _inviteController,
                decoration: _inputDecoration(
                  hint: "Please Enter Your Code",
                  prefixIcon: Icons.tag,
                ),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Checkbox(
                    value: _agreedToTerms,
                    onChanged: (v) => setState(() => _agreedToTerms = v!),
                    activeColor: const Color(0xFF2F5599),
                  ),
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        text: "I agree to the ",
                        style: const TextStyle(fontSize: 12),
                        children: [
                          TextSpan(
                            text: "Terms of Service",
                            style: TextStyle(color: Colors.blue[700], fontWeight: FontWeight.bold),
                          ),
                          const TextSpan(text: " and "),
                          TextSpan(
                            text: "Privacy Policy",
                            style: TextStyle(color: Colors.blue[700], fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
            ],
          ),
          
        ),
      ),
    );
  }
  
}
