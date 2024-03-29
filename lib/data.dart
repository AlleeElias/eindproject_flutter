class Post {
  String title;
  String image;
  String description;

  Post({title, image, description})
      : this.title = title,
        this.image = image,
        this.description = description;
}

List<Post> posts = [post1, post2, post3, post4];

Post post1 = Post(
    title: 'Dit is mijn eerste post!',
    image: 'assets/images/profilepic.png',
    description: 'Bedankt om mijn eerste post te lezen!');
Post post2 = Post(
    title: 'Dit is mijn tweede post!',
    image: 'assets/images/profilepic.png',
    description: 'Bedankt om mijn tweede post te lezen!');
Post post3 = Post(
    title: 'Dit is mijn derde post!',
    image: 'assets/images/profilepic.png',
    description: 'Bedankt om mijn derde post te lezen!');
Post post4 = Post(
    title: 'Dit is mijn vierde post!',
    image: 'assets/images/profilepic.png',
    description: 'Bedankt om mijn vierde post te lezen!');
