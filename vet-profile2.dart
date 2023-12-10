import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:purrfect/services/review_container_widget.dart';
import 'package:purrfect/services/service_button_container_widget.dart';

class VetProfile extends StatefulWidget {
  const VetProfile({Key? key}) : super(key: key);

  @override
  State<VetProfile> createState() => _VetProfileState();
}

class _VetProfileState extends State<VetProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                    top: 50, right: 20, left: 20, bottom: 10),
                height: 220,
                color: Colors.white,
                child: Image.asset(
                  'assets/app/images/doctormesLogo.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: SingleChildScrollView(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                        color: Color(0xFFF9F9F9),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'DOC Tormes',
                                style: GoogleFonts.nunito(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF394888),
                                ),
                              ),
                              const Spacer(),
                              Row(
                                children: List.generate(
                                  4,
                                  (index) => const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Veterinary Clinic',
                            style: GoogleFonts.nunito(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            '0917 568 4001',
                            style: GoogleFonts.nunito(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: const Color(0xFF757677),
                            ),
                          ),
                          Text(
                            'Z-1 # 107 Bagumbayan Norte Naga City( infront of caresosa skin clinic, before caltex station), Naga City, Philippines',
                            style: GoogleFonts.nunito(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: const Color(0xFF757677),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Text(
                            'About the Clinic',
                            style: GoogleFonts.nunito(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF394888),
                            ),
                          ),
                          Text(
                            'Welcome to DOC Tormes, your caring haven for furry friends! We\'re your local veterinary clinic dedicated to providing expert care and compassion for your beloved pets. From routine check-ups to specialized treatments, our skilled team is here to ensure your pet\'s health and happiness. Trust us to be your partner in keeping your furry companions thriving!',
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.nunito(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Text(
                            'Working Time',
                            style: GoogleFonts.nunito(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF394888),
                            ),
                          ),
                          Text(
                            'Always Open 24/7',
                            style: GoogleFonts.nunito(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Text(
                            'Services Offered',
                            style: GoogleFonts.nunito(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF394888),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                              right: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ServiceButtonWidget(
                                  iconPath: 'assets/app/images/healthcare.png',
                                  text: 'Healthcare',
                                ),
                                Spacer(),
                                ServiceButtonWidget(
                                  iconPath: 'assets/app/images/Pet shampoo.png',
                                  text: 'Grooming',
                                ),
                                Spacer(),
                                ServiceButtonWidget(
                                  iconPath:
                                      'assets/app/images/Animal shelter.png',
                                  text: 'Additional',
                                ),
                                Spacer(),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Text(
                            'Reviews',
                            style: GoogleFonts.nunito(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF394888),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Row(
                            children: [
                              Expanded(
                                child: ReviewContainer(
                                  imagePath: 'assets/app/images/drake_user.jpg',
                                  reviewerName: 'Aubrey Graham',
                                  reviewText:
                                      'I brought my dogs here and hit the spot. The place kept it real. Greatness recognize greatness',
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            children: [
                              Expanded(
                                child: ReviewContainer(
                                  imagePath: 'assets/app/images/reid_user.jpg',
                                  reviewerName: 'James Reid',
                                  reviewText:
                                      'This is good clinic. Responsive service when I call or text.',
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            children: [
                              Expanded(
                                child: ReviewContainer(
                                  imagePath: 'assets/app/images/curry_user.jpg',
                                  reviewerName: 'Wardel Curry',
                                  reviewText:
                                      'My dog curry doesn\t trust many people and most vets. He is comfortable here. I recommend this place',
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 70,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 45,
            left: 10,
            child: IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 20,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFB500),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const SizedBox(
                  width: double.infinity,
                  height: 43,
                  child: Center(
                    child: Text(
                      "Book an Appointment",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
