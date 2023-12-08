import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: QAndA(),
    );
  }
}

class QAndA extends StatelessWidget {
  QAndA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 185, 15, 1.0),
      body: Column(
        children: [
          SizedBox(height: 70),
          Align(
              alignment: Alignment.center,
              child: CustomTitle(
                title: "FAQ",
              )),
          Expanded(
            child: ListView.builder(
                itemCount: list1.length,
                itemBuilder: (BuildContext context, index) {
                  return list1[index];
                }),
          )
        ],
      ),
    );
  }
}

//Widget Template for Title
class CustomTitle extends StatelessWidget {
  String title;

  CustomTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(title,
          style: GoogleFonts.nunito(
              fontWeight: FontWeight.w800,
              fontSize: 100,
              color: Color.fromRGBO(57, 72, 136, 1.0))),
    );
  }
}

//Widget template for Expansion Tile

class CustomExpansionTile extends StatelessWidget {
  String q;
  String a;

  CustomExpansionTile({super.key, required this.q, required this.a});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        title: Text(q,
            style: GoogleFonts.nunito(
                fontSize: 20,
                color: Colors.black, //Color.fromRGBO(255, 128, 0, 1),
                fontWeight: FontWeight.bold)),
        backgroundColor: Color.fromRGBO(255, 199, 63, 1.0),
        shape: Border(top: BorderSide.none),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 15, bottom: 50),
            child: Text(
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                    fontStyle: FontStyle.italic,
                    color: Color.fromRGBO(57, 72, 136, 1.0)),
                a),
          )
        ]);
  }
}

//List of Frequently Asked Questions

List<CustomExpansionTile> list1 = [
  CustomExpansionTile(
      q: "What is Purrfect?",
      a: "Purrfect is a pet care app that will provide a convenient and easy-to-use platform for pet owners in Naga City. Purrfect pet care mobile app makes it easy for pet owners(fur parents) in Naga City to find and book the best pet care service for their pets. With Purrfect, you can book appointments with a veterinary clinic and/or pet groomers with just a few steps. "),
  CustomExpansionTile(
      q: "What features does this app offer?",
      a: "Our pet care app! Get ready to discover a range of features designed to streamline your pet care routine: \n\nList of Veterinary Clinics \nList of Pet Groomers \nPet Health Record \nBooking Appointment \nUser Authentication \nUser Profile \nUser Feedback \nPet Edition \nSearches "),
  CustomExpansionTile(
      q: "Where can I find more information about privacy?",
      a: "For detailed information regarding data collection, usage, and privacy practices, please refer to our Privacy Policy available within the app or on our website."),
  CustomExpansionTile(
      q: "Why does this app only work in Naga?",
      a: "This app operates exclusively in Naga to create a tightly knit and specialized pet care network for the region. The main scope being Naga allows us to tailor services directly to the local community's needs, ensuring a highly effective and personalized experience."),
  CustomExpansionTile(
      q: "Is there a fee for canceling appointments?",
      a: "No, canceling appointments through our app does not incur any fees. We understand that plans can change, and your pet's schedule might need adjustments. Our aim is to provide flexibility and convenience in managing appointments without any additional charges for cancellations.")
];
