class Post {
  String title;
  String image;
  String description;

  Post({title, image, description})
      : this.title = title,
        this.image = image,
        this.description = description;
}

List<Post> posts = [post1];

Post post1 = Post(
    title: 'Dit is mijn eerste post!',
    image: 'images/profilepic.jpeg',
    description: 'Bedankt om mijn eerste post te lezen!');
