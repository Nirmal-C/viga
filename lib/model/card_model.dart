class CardModel {
  final image;
  final title;
  final subtitle;

  CardModel({this.image, this.title, this.subtitle});
}


List<CardModel> cardContent = [
  CardModel(
    title: 'Chemistry',
    image:
        'https://res.cloudinary.com/dxmxhyzsy/image/upload/v1655371970/Viga/chemistry_zkz3mt.png',
    subtitle: '10:00 am - 10:45 am | 32 students'
  ),
  CardModel(
    title: 'Physics',
    image:
       'https://res.cloudinary.com/dxmxhyzsy/image/upload/v1655371970/Viga/physics_iow26a.png',
    subtitle: '11:00 am - 11:45 am | 32 students'
  ),
  CardModel(
    title: 'Maths',
    image:
       'https://res.cloudinary.com/dxmxhyzsy/image/upload/v1655371970/Viga/maths_bj4p4y.png',
    subtitle: '12:00 pm - 12:45 am | 32 students'
  )
  

];
