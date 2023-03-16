class Post {
  String title;
  String image;
  String description;

  Post({title, image, description})
      : this.title = title,
        this.image = image,
        this.description = description;
}

List<Post> posts = [post1, post2];

Post post1 = Post(
    title: 'Dit is mijn eerste post!',
    image: 'images/profilepic.jpeg',
    description: 'Bedankt om mijn eerste post te lezen!');
Post post2 = Post(
    title: 'Dit is mijn tweede post!',
    image: 'images/profilepic.jpeg',
    description: 'Bedankt om mijn tweede post te lezen!');
