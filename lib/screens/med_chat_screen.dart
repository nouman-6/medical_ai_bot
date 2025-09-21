import 'package:flutter/material.dart';
import 'package:flutter_ai_toolkit/flutter_ai_toolkit.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class MedicalChatScreen extends StatefulWidget {
  const MedicalChatScreen({super.key});

  @override
  State<MedicalChatScreen> createState() => _MedicalChatScreenState();
}

class _MedicalChatScreenState extends State<MedicalChatScreen> {
  String apiKey = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFF5F5F5),
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.local_hospital, color: Colors.red, size: 26),
              SizedBox(width: 8),
              Text(
                "Medical AiBot",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(color: Color(0xFFF5F5F5)),
          child: LlmChatView(
            suggestions: const [
              "I’m having frequent headaches. What should I do?",
              "When should I consult a doctor about a fever?",
              "What are some tips to improve my sleep?",
            ],
            style: LlmChatViewStyle(
              backgroundColor: Colors.transparent,
              chatInputStyle: ChatInputStyle(
                hintText: "Ask me about your health...",
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
              ),
              suggestionStyle: SuggestionStyle(
                textStyle: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,

                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
              ),
            ),
            provider: GeminiProvider(
              model: GenerativeModel(
                model: "gemini-2.0-flash",
                apiKey: apiKey,
                systemInstruction: Content.system(
                  "You are a professional medical health assistant. Only respond to health and medically related questions and make them concise and straight to the point without too much explanation."
                  "If a question is unrelated to health or medicine, politely inform the user that you can only answer medical-related queries.",
                ),
              ),
            ),

            welcomeMessage:
                "Hello Nouman! 🌿 I’m your medical companion. Ask me anything related to your health or wellness.",
          ),
        ),
      ),
    );
  }
}
