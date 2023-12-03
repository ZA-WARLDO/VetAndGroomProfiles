import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:purrfect/services/review_container_widget.dart';
import 'package:purrfect/services/service_button_container_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';



class GroomerProfile extends StatefulWidget {
  const GroomerProfile({Key? key}) : super(key: key);

  @override
  State<GroomerProfile> createState() => _GroomerProfileState();
}

class _GroomerProfileState extends State<GroomerProfile> {
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
                padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
                height: 220,
                color: Colors.white,
                child: Image.asset( // Logo of the Service Provide
                  'assets/icons/CombAndCollarGroomer.jpg',
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
                              Text( // Name of the Service Provider
                                'Comb and Collar',
                                style: GoogleFonts.nunito(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF394888),
                                ),
                              ),
                              const Spacer(),
                              Row(
                                children: List.generate(
                                  5,
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
                            'Pet Grooming Center',
                            style: GoogleFonts.nunito(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text( // Contact Number
                            '+63 955 370 8528',
                            style: GoogleFonts.nunito(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: const Color(0xFF757677),
                            ),
                          ),
                          Text( // Address
                            'Liboton, Naga, Camarines Sur, Philippines',
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
                          Text( //Description
                            'Welcome to Comb and Collar Pet Grooming Salon! We pamper pets with personalized care, making tails wag and fur shine. Your furry friend\'s ultimate spa day awaits!',
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text( //Working Time
                                'Mon-Sat | 8:00 a.m. - 5:30 p.m.',
                                style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                              Text( //Working Time
                                'Sun    | 9:00 a.m. - 4:00 p.m.',
                                style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                            ],
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
                            child:Row(
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
                                  iconPath: 'assets/app/images/Animal shelter.png',
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
                                  imagePath: 'assets/app/images/Basketball_user.jpg',
                                  reviewerName: 'Iamjin Say',
                                  reviewText:
                                  'Kudos Kuya for keeping our baby Coffee neat and clean. Deserve this stars ⭐⭐⭐⭐⭐',
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
                                  imagePath: 'assets/app/images/dogLover_user.jpg',
                                  reviewerName: 'Mary Bel',
                                  reviewText:
                                  ' If you’re looking for a place that will take care of your fur baby and give them a stylish fur cut, this is the place to go. ☺️😉',
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
                                    imagePath: 'assets/app/images/weeb_user.jpg',
                                    reviewerName: 'Ben Panganiban',
                                    reviewText:
                                    'Great place to groom your dog. My go to place'
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
              icon: SvgPicture.asset(
                "assets/app/images/Back Button.svg",
              ),
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
