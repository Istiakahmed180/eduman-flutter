class OnboardingContent {
  String title;
  String image;
  String description;

  OnboardingContent({
    required this.title,
    required this.image,
    required this.description,
  });
}

List<OnboardingContent> contents = [
  OnboardingContent(
    title: "Start your learning journey with a dose of fun!",
    image: "lib/src/assets/welcome/intro_1.png",
    description:
        "Our engaging learning videos will spark your curiosity & enjoyment.",
  ),
  OnboardingContent(
    title: "Discover your passion, elevate your expertise",
    image: "lib/src/assets/welcome/intro_2.png",
    description:
        "Our comprehensive courses and expert instructors will guide every step.",
  ),
  OnboardingContent(
    title: "Get an online certificate with unusual skills",
    image: "lib/src/assets/welcome/intro_3.png",
    description:
        "To earn an online certificate, individuals typically need to complete the required coursework and assessments.",
  ),
];
