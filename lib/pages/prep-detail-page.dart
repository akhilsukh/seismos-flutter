import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/widgets.dart';

class PrepDetailGeneral extends StatelessWidget {
  final String text1 =
      "An earthquake is a sudden, rapid shaking of the earth caused by the shifting of rock beneath the earth’s surface. They strike without warning, at any time of year, day or night. Forty-five U.S. states and territories are at moderate to very high risk of earthquakes. Learn what to do to keep your loved ones safe!";
  final String text2 =
      "- Practice DROP, COVER and HOLD ON with all members of your household.";
  final String text3 =
      "- Doorways are no stronger than any other part of a structure so don’t rely on them for protection! During an earthquake, get under a sturdy piece of furniture and hold on.";
  final AssetImage image1 =
      new AssetImage('assets/general/prep-general-shake.gif');

  @override
  Widget build(BuildContext context) {
    return PrepSkeleton(
      title: "General Prep",
      widget: Container(
        child: Column(
          children: [
            InfoText(text: text1),
            InfoImage(image: image1),
            InfoText(text: text2),
            InfoText(text: text3),
          ],
        ),
      ),
    );
  }
}

class PrepDetailBefore extends StatelessWidget {
  final String text1 =
      "- Talk about earthquakes with your family so that everyone knows what to do in case of an earthquake. Discussing ahead of time helps reduce fear, particularly for younger children.";
  final String text2 =
      "- Check at your workplace and your children's schools and day care centers to learn about their earthquake emergency plans.";
  final String text3 =
      "- Pick safe places in each room of your home, workplace and/or school. A safe place could be under a piece of furniture or against an interior wall away from windows, bookcases or tall furniture that could fall on you.";
  final AssetImage image1 =
      new AssetImage('assets/before/prep-before-plan.png');

  final String text4 =
      "- Do not hang heavy items, such as pictures and mirrors, near beds, couches and anywhere people sleep or sit. Install strong latches or bolts on cabinets. Large or heavy items should be closest to the floor. Install strong latches or bolts on cabinets. Large or heavy items should be closest to the floor.";
  final String text5 =
      "- Ask about home repair and strengthening tips for exterior features, such as porches, decks, sliding glass doors, canopies, carports and garage doors.";
  final String text6 =
      "- Have a professional make sure your home is securely anchored to its foundation, as well as strengthening tips for exterior features, such as porches, decks, sliding glass doors, canopies, carports and garage doors.";

  @override
  Widget build(BuildContext context) {
    return PrepSkeleton(
      title: "Before Prep",
      widget: Container(
        child: Column(
          children: [
            InfoTextBold(
              text: "Protecting your family",
            ),
            InfoText(text: text1),
            InfoImage(image: image1),
            InfoText(text: text2),
            InfoText(text: text3),
            InfoTextBold(
              text: "Protecting your home",
            ),
            InfoText(text: text4),
            InfoText(text: text5),
            InfoText(text: text6),
          ],
        ),
      ),
    );
  }
}

class PrepDetailDuring extends StatelessWidget {
  final String text1 =
      "- DROP, COVER and HOLD ON! Move as little as possible - most injuries during earthquakes occur because of people moving around, falling and suffering sprains, fractures and head injuries. Try to protect your head and torso.";
  final String text2 =
      "- Stay indoors until the shaking stops and you are sure it is safe to exit. If you must leave a building after the shaking stops, use stairs rather than an elevator in case of aftershocks, power outages or other damage.";
  final String text3 =
      "- Be aware that smoke alarms and sprinkler systems frequently go off in buildings during an earthquake, even if there is no fire. If you smell gas, get out of the house and move as far away as possible. Before you leave any building check to make sure that there is no debris from the building that could fall on you.";
  final AssetImage image1 =
      new AssetImage('assets/during/prep-during-cover.png');
  final String text4 =
      "- Find a clear spot and drop to the ground. Stay there until the shaking stops. Try to get as far away from buildings, power lines, trees, and streetlights as possible.";
  final String text5 =
      "- If you're in a vehicle, pull over to a clear location and stop. Avoid bridges, overpasses and power lines if possible. Stay inside with your seatbelt fastened until the shaking stops. After the shaking has stopped, drive on carefully, avoiding bridges and ramps that may have been damaged.";

  @override
  Widget build(BuildContext context) {
    return PrepSkeleton(
      title: "During Prep",
      widget: Container(
        child: Column(
          children: [
            InfoTextBold(
              text: "Staying Safe Indoors",
            ),
            InfoText(text: text1),
            InfoText(text: text2),
            InfoText(text: text3),
            InfoImage(image: image1),
            InfoTextBold(
              text: "Staying Safe Indoors",
            ),
            InfoText(text: text4),
            InfoText(text: text5),
          ],
        ),
      ),
    );
  }
}

class PrepDetailAfter extends StatelessWidget {
  final String text1 =
      "1. If away from home, return only when authorities say it is safe to do so.";
  final String text2 =
      "2. Check yourself for injuries and get first aid, if necessary, before helping injured or trapped persons.";
  final String text3 =
      "3. After an earthquake, the disaster may continue. Expect and prepare for potential aftershocks, landslides or even a tsunami if you live on a coast.";
  final String text4 =
      "4. Each time you feel an aftershock, DROP, COVER and HOLD ON. Aftershocks frequently occur minutes, days, weeks and even months following an earthquake.";
  final String text5 =
      "5. Look for and extinguish small fires. Fire is the most common hazard after an earthquake.";
  final String text6 =
      "- If you are at home, look quickly for damage in and around your home and get everyone out if your home is unsafe.";
  final String text7 =
      "- Listen to a portable, battery­operated or hand­crank radio for updated emergency information and instructions.";
  final String text8 =
      "- Stay out of damaged buildings. Use extreme caution and examine walls, floors, doors, staircases and windows to check for damage.";
  final String text9 =
      "- Watch out for fallen power lines or broken gas lines and report them to the utility company immediately. If you smell natural or propane gas or hear a hissing noise, leave immediately and call the fire department.";
  final String text10 =
      "- Wear protective clothing, including long pants, a long-sleeved shirt and sturdy shoes, and be cautious.";
  final String text11 =
      "- Clean up spilled medications, bleach, gasoline or other flammable liquids immediately";

  @override
  Widget build(BuildContext context) {
    return PrepSkeleton(
      title: "After Prep",
      widget: Container(
        child: Column(
          children: [
            InfoTextBold(
              text: "If you do nothing else:",
            ),
            InfoText(text: text1),
            InfoText(text: text2),
            InfoText(text: text3),
            InfoText(text: text4),
            InfoText(text: text5),
            InfoTextBold(
              text: "Caring for yourself & loved ones",
            ),
            InfoText(text: text6),
            InfoText(text: text7),
            InfoTextBold(
              text: "Returning home safely",
            ),
            InfoText(text: text8),
            InfoText(text: text9),
            InfoTextBold(
              text: "Cleaning and repairing your home",
            ),
            InfoText(text: text10),
            InfoText(text: text11),
          ],
        ),
      ),
    );
  }
}

class PrepSkeleton extends StatelessWidget {
  final String title;
  final StatelessWidget widget;
  PrepSkeleton({this.title, this.widget});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(
        title: title,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(4)),
          width: double.maxFinite,
          child: Container(margin: EdgeInsets.all(16), child: widget),
        ),
      ),
    );
  }
}

class InfoText extends StatelessWidget {
  final String text;
  InfoText({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: new EdgeInsets.all(8),
      child: Text(
        text,
        style: GoogleFonts.robotoMono(textStyle: TextStyle()),
      ),
    );
  }
}

class InfoTextBold extends StatelessWidget {
  final String text;
  InfoTextBold({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: new EdgeInsets.all(8),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: GoogleFonts.robotoMono(
              textStyle: TextStyle(fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}

class InfoImage extends StatelessWidget {
  final AssetImage image;
  InfoImage({this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: new EdgeInsets.all(8),
      child: Image(
        image: image,
        fit: BoxFit.fitHeight,
      ),
      width: double.maxFinite,
    );
  }
}

class RedCross extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
