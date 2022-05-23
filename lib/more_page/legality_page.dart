import 'package:flutter/material.dart';
class LegalityPage extends StatelessWidget {
  const LegalityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Legality'),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 15,bottom: 15),
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('GAME OF SKILLS',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
              Text('''
              
Quwinn is considered completely as a “Game of Skill.” The game of skills can be defined as a game wherein the skills of the individuals participating in any online Quiz and play a dominant role rather than the more luck of the individuals. The individuals in game of skills use their knowledge, skills, training and attention for participation and winning.

Online quiz gaming is considered to be a legal practice around the world with certain states being an exception. Online gaming is entirely based on the concept of Game of Skills.

Quwinn is completely legal as it offers services, Program(s) and contest(s) related to quiz competition. The services, contest(s) and program(s) related to quiz gaming offered by Quwinn enables its users to create the history by awarded marks on the basis of the performance. The individual who  scores the highest aggregate of marks is announced as the winner. The answers given by the users of Quwinn quiz is entirely dependent on the skills, knowledge and attention of the users which makes online quiz gaming offered at Quwinn a game of skills and 100% legal.

'''),
              Text('ALIGNMENT WITH THE INDIAN LAWS',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orangeAccent),),
              Text('''

The game of skills such as the online quiz gaming are considered to be legal all over India. expect certain states such as Sikkim, Assam, Odisha, Telangana, Nagaland, Andhra Pradesh and Tamil Nadu. The Public Gambling Act, 1867 (“PGA, 1867”) is recognized as the primary legality driving the prevalence of gambling in India.

The PGA defines the act of “public gambling” and the keeping of a common gaming house as a criminal and punishable act in India. However, the online fantasy sports gaming is considered to be an exception under the PGA, wherein the provisions and punishments of PGA shall not be applicable to games played by the user using their skills and knowledge as primary tools.


              '''),
              Text('SIKKIM, ASSAM, ODISHA, TELANGANA, NAGALAND, ANDHRA PRADESH and TAMIL NADU',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orangeAccent),),
              Text('''
              
There are various states in India wherein the laws related to the game of skills are unclear. In this regard, for the websites offering online quiz gaming, it remains unclear whether to offer the paid services for free or not. The Indian states with no clearance regarding the offering of pay-to-play contests include Sikkim, Assam, Odisha, Telangana, Nagaland, Andhra Pradesh and Tamil Nadu.

In this context, Quwinn does not permit the users identified as the residents of Sikkim, Odisha, Telangana, Assam, Nagaland, Andhra Pradesh and Tamil Nadu to participate in the pay-to-play contest(s) organized by Quwinn.

'''),
            ],
          ),
        ),
      ),
    );
  }
}
