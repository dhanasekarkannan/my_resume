import 'package:dhana_resume/model/project_model.dart';

class ProjectProviders {
  List<ProjectModel> _projects = [
    ProjectModel(
        projId: "1",
        projName: "Pamoja Pos",
        projClient: "SBS Africa",
        projDesc: "Ticketing System"),
    ProjectModel(
        projId: "2",
        projName: "CRONOS Switch",
        projClient: "SBS Africa",
        projDesc: "Payment Switch"),
    ProjectModel(
        projId: "3",
        projName: "Huduma Life",
        projClient: "Kenya Govt.",
        projDesc: "Govt. services & Utility payment service"),
    ProjectModel(
        projId: "4",
        projName: "DTB Internet Banking",
        projClient: "DTB Bank",
        projDesc: "Internet Banking"),
    ProjectModel(
        projId: "5",
        projName: "Lend",
        projClient: "Freelance",
        projDesc: "Ecomerce lending application"),
    ProjectModel(
        projId: "6",
        projName: "Instalife",
        projClient: "HDFC Life",
        projDesc: "Insurance Agent semi offline application processing app"),
    ProjectModel(
        projId: "7",
        projName: "InstaServ v2.0",
        projClient: "HDFC Life",
        projDesc: "Insurance Agent customer service app"),
    ProjectModel(
        projId: "8",
        projName: "Customer Portal",
        projClient: "HDFC Life",
        projDesc: "Customer Portal for Insurance service request"),
  ];

  List<ProjectModel> getProjects() {
    return _projects;
  }



}
