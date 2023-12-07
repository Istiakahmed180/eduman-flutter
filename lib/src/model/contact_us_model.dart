class ContactUsContent {
  String contactTitle;
  String contactIcon;

  ContactUsContent({required this.contactTitle, required this.contactIcon});
}

List<ContactUsContent> contactUsModel = [
  ContactUsContent(
      contactTitle: "Customer Service",
      contactIcon: "lib/src/assets/icons/image_icon/customer_service_icon.png"),
  ContactUsContent(
      contactTitle: "Website",
      contactIcon: "lib/src/assets/icons/image_icon/website_icon.png"),
  ContactUsContent(
      contactTitle: "Whatsapp",
      contactIcon: "lib/src/assets/icons/image_icon/whatsapp_icon.png"),
  ContactUsContent(
      contactTitle: "Facebook",
      contactIcon: "lib/src/assets/icons/image_icon/facebook_icon.png"),
  ContactUsContent(
      contactTitle: "Instagram",
      contactIcon: "lib/src/assets/icons/image_icon/instagram_icon.png")
];
