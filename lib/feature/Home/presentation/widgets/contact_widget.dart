 
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/feature/Home/presentation/Screen/home_screen.dart';
import 'package:my_portfolio/feature/Home/presentation/widgets/contact_item.dart';
 import 'package:url_launcher/url_launcher.dart';
import 'dart:html' as html;

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: HomeScreen.contactKey,
      height: 500,
      //  color: const Color.fromARGB(255, 21, 163, 28),
      child: Column(
        children: [
          Text("Contact",
              style: GoogleFonts.kayPhoDu(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              )),
          const SizedBox(
            height: 100,
          ),
          Wrap(
            children: [
              ContactItem(
                  onPressed: () {
                    openWhatsApp();
                  },
                  color: const Color(0xff25D366),
                  icon: "images/whatsapp.svg",
                  contactName: "Whats App"),
              ContactItem(
                  onPressed: () {
                    openLink("https://github.com/Ahmed10khattab");
                  },
                  color: const Color.fromARGB(255, 0, 0, 0),
                  icon: "images/github.svg",
                  contactName: "gitHub"),
              ContactItem(
                  onPressed: () {
                    openEmail();
                  },
                  color: const Color(0xffEA4335),
                  icon: "images/gmail.svg",
                  contactName: "Gmail"),
              ContactItem(
                  onPressed: () {
                    openLink(
                        "https://www.linkedin.com/in/ahmed-khattab-b2a960289");
                  },
                  color: Colors.blue,
                  icon: "images/linkedin.svg",
                  contactName: "linkedin")
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 200,
            width: 400,
            //   color: Colors.black,
            child: Column(
              spacing: 10,
              children: [
                GestureDetector(
                  onTap: () {
                    callNumber("+201125675449");
                  },
                  child: RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                        text: "Mobile : ",
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    TextSpan(
                        text: "+201125675449   Call",
                        style: TextStyle(color: Colors.blue, fontSize: 20))
                  ])),
                ),
                InkWell(
                  onTap: () async {
                    await Clipboard.setData(
                      const ClipboardData(text: "ahmed011khattab@gmail.com"),
                    );

                    // Optional: show message
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          behavior: SnackBarBehavior.floating,
                          margin:   EdgeInsets.symmetric(
                              horizontal: 70, vertical: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius:  BorderRadiusGeometry.all(Radius.circular(20)),
                          ),
                          content: Text("Email copied successfully")),
                    );
                  },
                  child: RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                        text: "Email : ",
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    TextSpan(
                        text: "ahmed011khattab@gmail.com",
                        style: TextStyle(color: Colors.blue, fontSize: 20))
                  ])),
                ),
                const SizedBox(height: 50,),
                GestureDetector(
                  onTap: () {
                    downloadCVWeb();
                  },
                  child: Container(
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.cyanAccent),
                    child: Center(
                      child: Text("Download CV",
                          style: GoogleFonts.kayPhoDu(
                            color: Colors.black,
                            fontSize: 16,
                          )),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void openWhatsApp() async {
    final Uri whatsappUrl = Uri.parse(
        'https://wa.me/${201125675449}?text=${Uri.encodeComponent("hello,\nhow are you Ahmed")}');

    if (await canLaunchUrl(whatsappUrl)) {
      await launchUrl(whatsappUrl, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch WhatsApp';
    }
  }

  Future<void> openLink(String url) async {
    final Uri uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(
        uri,
        mode: LaunchMode.externalApplication, // يفتح في التطبيق لو متوفر
      );
    } else {
      throw "Could not launch $url";
    }
  }

  Future<void> openEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'ahmed011khattab@gmail.com',
      // query: 'subject=Contact&body=Hello Ahmed,', // اختياري
    );

    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    } else {
      throw 'Could not launch email app';
    }
  }

  Future<void> callNumber(String phoneNumber) async {
    final Uri phoneUri = Uri(scheme: 'tel', path: "+201125675449");

    if (await canLaunchUrl(phoneUri)) {
      await launchUrl(phoneUri);
    } else {
      throw 'Could not launch dialer';
    }
  }

  Future<void> downloadCVWeb() async {
    final data = await rootBundle.load("images/cv.pdf");
    final bytes = data.buffer.asUint8List();

    final blob = html.Blob([bytes], 'application/pdf');
    final url = html.Url.createObjectUrlFromBlob(blob);


    html.Url.revokeObjectUrl(url);
  }
}
