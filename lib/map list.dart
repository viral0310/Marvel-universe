class avenger {
  String name;
  String realName;
  String image;
  String description;

  avenger(
      {required this.name,
      required this.realName,
      required this.image,
      required this.description});
}

List<avenger> avengerList = [
  avenger(
      name: 'Captain America',
      realName: 'Steve Rogers',
      image: 'assets/images/i1.png',
      description:
          "Captain America is a fictional character appearing in American comic books published by Marvel Comics. Created by cartoonists Joe Simon and Jack Kirby, "
          "the character first appeared in Captain America Comics #1 (cover dated March 1941) from Timely Comics, a predecessor of Marvel Comics. Captain America was designed as"
          " a patriotic supersoldier who often fought the Axis powers of World War II and was Timely Comics' most popular character during the wartime period. The popularity of superheroes"
          " waned following the war and the Captain America comic book was discontinued in 1950, with a short-lived revival in 1953. Since Marvel Comics revived the character in 1964, Captain "
          "America has remained in publication."),
  avenger(
      name: 'Iron Man',
      realName: 'Tony Stark',
      image: 'assets/images/i2.png',
      description:
          'Iron Man is a superhero appearing in American comic books published by Marvel Comics. '
          'The character was co-created by writer and editor Stan Lee, developed by scripter Larry Lieber,'
          ' and designed by artists Don Heck and Jack Kirby. The character made his first appearance in '
          'Tales of Suspense #39 (cover dated March 1963), and received his own title in Iron Man #1 '
          '(May 1968). Also in 1963, the character founded the Avengers alongside Thor, Ant-Man, Wasp '
          'and the Hulk.'),
  avenger(
      name: 'Thor',
      realName: 'Chris Hemsworth',
      image: 'assets/images/i3.webp',
      description:
          'Thor is a prominently mentioned god throughout the recorded history of the Germanic peoples, '
          'from the Roman occupation of regions of Germania, to the Germanic expansions of the Migration'
          ' Period, to his high popularity during the Viking Age, when, in the face of the process of the'
          ' Christianization of Scandinavia, emblems of his hammer, Mjölnir, were worn and Norse pagan '
          'personal names containing the name of the god bear witness to his popularity.')
];
