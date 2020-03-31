import 'package:dhana_resume/model/project_model.dart';

class ProjectProviders {
  List<ProjectData> _projects = [
    ProjectData(
        projId: "1",
        projName: "Pamoja Pos",
        projClient: "SBS Africa",
        projDesc: "Ticketing System"),
    ProjectData(
        projId: "2",
        projName: "CRONOS Switch",
        projClient: "SBS Africa",
        projDesc: "Payment Switch"),
    ProjectData(
        projId: "3",
        projName: "Huduma Life",
        projClient: "Kenya Govt.",
        projDesc: "Govt. services & Utility payment service"),
    ProjectData(
        projId: "4",
        projName: "DTB Internet Banking",
        projClient: "DTB Bank",
        projDesc: "Internet Banking"),
    ProjectData(
        projId: "5",
        projName: "Lend",
        projClient: "Freelance",
        projDesc: "Ecomerce lending application"),
    ProjectData(
        projId: "6",
        projName: "Instalife",
        projClient: "HDFC Life",
        projDesc: "Insurance Agent semi offline application processing app"),
    ProjectData(
        projId: "7",
        projName: "InstaServ v2.0",
        projClient: "HDFC Life",
        projDesc: "Insurance Agent customer service app"),
    ProjectData(
        projId: "8",
        projName: "Customer Portal",
        projClient: "HDFC Life",
        projDesc: "Customer Portal for Insurance service request"),
  ];

  List<ProjectData> getProjects() {
    return _projects;
  }



}
