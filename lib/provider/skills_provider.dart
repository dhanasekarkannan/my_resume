import 'package:dhana_resume/model/skills_model.dart';

class SkillsProvider {
  final List<SkillsModel> _skills = [
    SkillsModel(
      skillId: "1",
      skillPercnt: "8",
      skillTitle: "Flutter",
      skillKey: "FL",
    ),
    SkillsModel(
      skillId: "2",
      skillPercnt: "5",
      skillTitle: "Swift",
      skillKey: "SW",
    ),
    SkillsModel(
      skillId: "3",
      skillPercnt: "7",
      skillTitle: "Mowbly",
      skillKey: "MO",
    ),
    SkillsModel(
      skillId: "4",
      skillPercnt: "8",
      skillTitle: "Android",
      skillKey: "AN",
    ),
    SkillsModel(
      skillId: "5",
      skillPercnt: "5",
      skillTitle: "Ionic",
      skillKey: "IO",
    ),
    SkillsModel(
      skillId: "6",
      skillPercnt: "6",
      skillTitle: "JavaScript",
      skillKey: "JS",
    ),
    SkillsModel(
      skillId: "7",
      skillPercnt: "7",
      skillTitle: "NodeJS",
      skillKey: "NJ",
    ),
    SkillsModel(
      skillId: "8",
      skillPercnt: "6",
      skillTitle: "FireBase",
      skillKey: "FB",
    ),
  ];

  List<SkillsModel> getSkills() {
    return _skills;
  }

  String getSkillKey(int index) {
    return _skills[index].skillKey;
  }
  String getSkillTitle(int index) {
    return _skills[index].skillTitle;
  }
  double getSkillPercentDouble(int index) {
    return double.parse(_skills[index].skillPercnt);
  }
}
