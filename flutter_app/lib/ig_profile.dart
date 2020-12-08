import 'dart:math';

class InstagramProfile{
  String username, descrizione, tipologia;
  String post,follow,seguiti;
  String github = "https://simone-rizzo.github.io/fairwear_images/";
  InstagramProfile(this.username, this.descrizione, this.tipologia, this.post, this.follow, this.seguiti);
  String get_foto(int i)
  {
    return github+username+i.toString()+".jpg";
  }

}
List<InstagramProfile> profili = [
  InstagramProfile("7115cph", "Qui c'è tutta la descrizione del profilo scaricabile da internet", "Negozio","400","55 mila","234"),
  InstagramProfile("aiayu", "Qui c'è tutta la descrizione del profilo scaricabile da internet", "Negozio","243","33.1 mila","784"),
  InstagramProfile("alesia_concept", "Qui c'è tutta la descrizione del profilo scaricabile da internet", "Personaggio Pubblico","321","99.1 mila","124"),
  InstagramProfile("alohas", "Qui c'è tutta la descrizione del profilo scaricabile da internet", "Negozio","332","22.4 mila","22"),
  InstagramProfile("16rfirenze", "Qui c'è tutta la descrizione del profilo scaricabile da internet", "Negozio","126","34 mila","310"),
  InstagramProfile("aboutarianne", "Qui c'è tutta la descrizione del profilo scaricabile da internet", "Negozio","215","8.5 mila","5"),
  InstagramProfile("acbc_zipshoe", "Qui c'è tutta la descrizione del profilo scaricabile da internet", "Negozio","76","42.1 mila","9"),
  InstagramProfile("adalubikini", "Qui c'è tutta la descrizione del profilo scaricabile da internet", "Negozio","78","13.4 mila","10"),

  InstagramProfile("anddaughter", "Qui c'è tutta la descrizione del profilo scaricabile da internet", "Negozio","78","13.4 mila","10"),
  InstagramProfile("anekdotboutique", "Qui c'è tutta la descrizione del profilo scaricabile da internet", "Negozio","78","13.4 mila","10"),
  InstagramProfile("apreski", "Qui c'è tutta la descrizione del profilo scaricabile da internet", "Negozio","78","13.4 mila","10"),
  InstagramProfile("aramuitaly", "Qui c'è tutta la descrizione del profilo scaricabile da internet", "Negozio","78","13.4 mila","10"),
];

String get_altre()
{
  Random random = new Random();
  int index = random.nextInt(profili.length-1);
  String asd = profili[index].get_foto(random.nextInt(5));
  return asd;
}