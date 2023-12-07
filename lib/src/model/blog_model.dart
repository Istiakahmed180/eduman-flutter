class BlogModelContent {
  final int id;
  final String category;
  final String image;
  final String image2;
  final String blogPostDate;
  final String bloggerName;
  final String title;
  final String description;

  BlogModelContent(
      {required this.id,
      required this.category,
      required this.image,
      required this.image2,
      required this.blogPostDate,
      required this.bloggerName,
      required this.title,
      required this.description});
}

List<BlogModelContent> blogModel = [
  BlogModelContent(
      id: 1,
      category: "Development",
      image: "lib/src/assets/blog/development-blog.jpg",
      image2: "lib/src/assets/blog/development_blog_02.jpg",
      blogPostDate: "23 Jan 2022",
      bloggerName: "Brian Hoff",
      title: "Ask the Expert: Typography Talk with Brian Hoff",
      description:
          "When it comes to designing better links and sending better emails, Slava Shestopalov has a few tips on how to improve your websites experience while accessibility in mind. There are so many websites out there that have not considered the overall usability of their visually impaired users. The participants will get general ideas of the land management system of business. Everyone must work, but for many of us that job do not just a paycheck, it is an opportunity to express ourselves and make something better. Entrepreneurs and go-getters often feel as if they carry the weight of an entire organization on their backs, and therefore could always use a little extra motivation."),
  BlogModelContent(
      id: 2,
      category: "Business",
      image: "lib/src/assets/blog/business_blog.jpg",
      image2: "lib/src/assets/blog/business_blog_02.jpg",
      blogPostDate: "20 Jan 2022",
      bloggerName: "Mark Hanry",
      title: "Stop Redesigning And Start Your Tuning Your Site Instead",
      description:
          "When it comes to designing better links and sending better emails, Slava Shestopalov has a few tips on how to improve your websites experience while accessibility in mind. There are so many websites out there that have not considered the overall usability of their visually impaired users. The participants will get general ideas of the land management system of business. Everyone must work, but for many of us that job do not just a paycheck, it is an opportunity to express ourselves and make something better. Entrepreneurs and go-getters often feel as if they carry the weight of an entire organization on their backs, and therefore could always use a little extra motivation."),
  BlogModelContent(
      id: 3,
      category: "Web Design",
      image: "lib/src/assets/blog/web_design_blog.jpg",
      image2: "lib/src/assets/blog/web_design_blog_02.jpg",
      blogPostDate: "18 Jan 2022",
      bloggerName: "Eduman",
      title: "Stop Redesigning And Start Your Tuning Your Site Instead",
      description:
          "When it comes to designing better links and sending better emails, Slava Shestopalov has a few tips on how to improve your websites experience while accessibility in mind. There are so many websites out there that have not considered the overall usability of their visually impaired users. The participants will get general ideas of the land management system of business. Everyone must work, but for many of us that job do not just a paycheck, it is an opportunity to express ourselves and make something better. Entrepreneurs and go-getters often feel as if they carry the weight of an entire organization on their backs, and therefore could always use a little extra motivation.")
];
