import '../../../../core/widgets/social_media/models/post_model.dart';
import '../../../../core/widgets/social_media/models/provider_model.dart';

List<String> images = [
  'https://e7.pngegg.com/pngimages/35/707/png-clipart-al-ahly-1907-logo-al-ahly-sc-caf-champions-league-zamalek-sc-egyptian-premier-league-egypt-national-football-team-egypt-logo-emblem-label.png',
  'https://i.pinimg.com/550x/df/17/cf/df17cfccf0914464261af24d9eeb4b2e.jpg',
  'https://i.pinimg.com/736x/fb/f4/7d/fbf47dbe695337e8565db74bb58862ea.jpg',
  'https://mir-s3-cdn-cf.behance.net/projects/404/e0a010199584427.Y3JvcCwxOTk5LDE1NjQsMCwxMzg.jpg'
];
String personImage ='https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRNVZyjEkL6dVz9XWjhPjwLlxKqTuIZLLlUg&s';
List<PostModel> postsList = [
  PostModel(
    id: 1,
    title: 'الاهلي نادي القرن',
    description: 'المران الأول لفريقنا في الإمارات استعدادًا للسوبر المصري',
    images: images,
    provider: ProviderModel(
      id: 1,
      name: 'محمد الشناوي',
      description: 'محمد الشناوي هو حارس النادى الاهلى حاليا وحارس مصر الاول وافضل حارس في القارة السوداء ',
      image: 'https://scontent.fcai20-6.fna.fbcdn.net/v/t39.30808-6/463617072_1096630368497897_4367648407125928284_n.jpg?_nc_cat=1&ccb=1-7&_nc_sid=833d8c&_nc_ohc=Nnbo3SWRScUQ7kNvgFvz_Xz&_nc_zt=23&_nc_ht=scontent.fcai20-6.fna&_nc_gid=AIiSr_cu75vRLfqs9sKStML&oh=00_AYBC87bXYOc7lNHWPGwOTwbq5ZNn0FSx3kYQDMwl_jt2TA&oe=67183BB4',
    ),
    likes: 30,
    isLikedBy: true,
    commentCount: 8,
    createdAt: '6:22 PM',
  ),
  PostModel(
    id: 1,
    title: 'الاهلي يتوج بلقب الدوري المصري',
    description: 'حقق النادي الأهلي أرقاماً قياسية جديدة في البطولات المحلية.حقق النادي الأهلي أرقاماً قياسية جديدة في البطولات المحلية.حقق النادي الأهلي أرقاماً قياسية جديدة في البطولات المحلية.حقق النادي الأهلي أرقاماً قياسية جديدة في البطولات المحلية.حقق النادي الأهلي أرقاماً قياسية جديدة في البطولات المحلية.حقق النادي الأهلي أرقاماً قياسية جديدة في البطولات المحلية.حقق النادي الأهلي أرقاماً قياسية جديدة في البطولات المحلية.حقق النادي الأهلي أرقاماً قياسية جديدة في البطولات المحلية.حقق فريق الأهلي لقب الدوري المصري بعد منافسة قوية مع الزمالك.',
    images:[ 'https://img.kooora.com/?i=corr%2F467%2Fkoo_467146.jpg'],
    provider: ProviderModel(
      id: 1,
      name: 'أحمد حسن',
      description: 'محلل رياضي ومؤرخ لنادي الأهلي.',
      image: personImage
    ),
    createdAt: '10:00 AM',
  ),
  PostModel(
    id: 2,
    title: 'محمد صلاح يقود ليفربول لتحقيق الفوز',
    description: 'سجل محمد صلاح هدفين في مباراة فريقه ضد مانشستر سيتي.',
    images:[ 'https://img.kooora.com/?i=corr%2F467%2Fkoo_467146.jpg'],
    provider: ProviderModel(
      id: 2,
      name: 'خالد عزيز',
      description: 'صحفي رياضي في جريدة الأهرام.',
      image: personImage
    ),
    createdAt: '11:30 AM',
  ),
  PostModel(
    id: 3,
    title: 'الأهلي يتأهل لدور الـ 16 في دوري الأبطال',
    description: 'تأهل النادي الأهلي لدور الـ 16 بعد فوزه على الوداد المغربي.',
    images: [ 'https://img.kooora.com/?i=corr%2F467%2Fkoo_467146.jpg'],
    provider: ProviderModel(
      id: 3,
      name: 'سارة علي',
      description: 'مقدمة برنامج رياضي.',
      image: personImage
    ),
    createdAt: '12:00 PM',
  ),
  PostModel(
    id: 4,
    title: 'استعدادات الأهلي للسوبر الإفريقي',
    description: 'بدأ الأهلي تدريباته استعداداً لمواجهة الرجاء في السوبر الإفريقي.',
    images: [ 'https://img.kooora.com/?i=corr%2F467%2Fkoo_467146.jpg'],
    provider: ProviderModel(
      id: 4,
      name: 'علي محمود',
      description: 'مدرب رياضي ومحلل فني.',
      image: personImage
    ),
    createdAt: '1:15 PM',
  ),
  PostModel(
    id: 5,
    title: 'نتائج بطولة كأس العالم للأندية',
    description: 'تم الإعلان عن نتائج بطولة كأس العالم للأندية، وتوج الأهلي بالمركز الثالث.',
    images:[ 'https://img.kooora.com/?i=corr%2F467%2Fkoo_467146.jpg'],
    provider: ProviderModel(
      id: 5,
      name: 'مريم سعيد',
      description: 'محررة رياضية في موقع اليوم السابع.',
      image: personImage
    ),
    createdAt: '2:30 PM',
  ),
  PostModel(
    id: 6,
    title: 'صفقات الأهلي الجديدة في فترة الانتقالات',
    description: 'أعلن الأهلي عن ضم لاعبين جدد خلال فترة الانتقالات الشتوية.',
    images:[ 'https://img.kooora.com/?i=corr%2F467%2Fkoo_467146.jpg'],
    provider: ProviderModel(
      id: 6,
      name: 'أسامة جلال',
      description: 'مراسل رياضي.',
      image:personImage
    ),
    createdAt: '3:45 PM',
  ),
  PostModel(
    id: 7,
    title: 'الأهلي يواجه الزمالك في قمة الدوري',
    description: 'سيكون هناك مواجهة نارية بين الأهلي والزمالك في الجولة المقبلة.',
    images:[ 'https://img.kooora.com/?i=corr%2F467%2Fkoo_467146.jpg'],
    provider: ProviderModel(
      id: 7,
      name: 'فاطمة حسين',
      description: 'مدربة كرة قدم.',
      image: personImage
    ),
    createdAt: '4:00 PM',
  ),
  PostModel(
    id: 8,
    title: 'الأهلي يتخطى الإسماعيلي بصعوبة',
    description: 'فاز الأهلي على الإسماعيلي في مباراة صعبة بعد تأخره في الشوط الأول.',
    images: [ 'https://img.kooora.com/?i=corr%2F467%2Fkoo_467146.jpg'],
    provider: ProviderModel(
      id: 8,
      name: 'جمال سعيد',
      description: 'محلل رياضي.',
      image: personImage
    ),
    createdAt: '5:10 PM',
  ),
  PostModel(
    id: 9,
    title: 'تعيين مدرب جديد للنادي الأهلي',
    description: 'أعلن الأهلي عن تعيين مدرب جديد لقيادة الفريق في الموسم المقبل.',
    images: [ 'https://img.kooora.com/?i=corr%2F467%2Fkoo_467146.jpg'],
    provider: ProviderModel(
      id: 9,
      name: 'حسام حمدي',
      description: 'صحفي رياضي.',
      image: personImage
    ),
    createdAt: '6:20 PM',
  ),
  PostModel(
    id: 10,
    title: 'تجديد عقد محمد الشناوي مع الأهلي',
    description: 'تم تجديد عقد حارس مرمى الأهلي محمد الشناوي لمدة 3 سنوات.',
    images:[ 'https://img.kooora.com/?i=corr%2F467%2Fkoo_467146.jpg'],
    provider: ProviderModel(
      id: 10,
      name: 'رنا جمال',
      description: 'محررة رياضية.',
      image: personImage
    ),
    createdAt: '7:30 PM',
  ),
  PostModel(
    id: 11,
    title: 'الأهلي يسعى للفوز بدوري الأبطال',
    description: 'تحدث لاعبو الأهلي عن طموحهم للفوز بدوري الأبطال هذا الموسم.',
    images:[ 'https://img.kooora.com/?i=corr%2F467%2Fkoo_467146.jpg'],
    provider: ProviderModel(
      id: 11,
      name: 'فريد شوقي',
      description: 'مدرب سابق في الأكاديمية.',
      image: personImage
    ),
    createdAt: '8:45 PM',
  ),
  PostModel(
    id: 12,
    title: 'تأهل الأهلي إلى نصف نهائي كأس مصر',
    description: 'تمكن الأهلي من التأهل إلى نصف نهائي كأس مصر بعد الفوز على المقاولون.',
    images: [ 'https://img.kooora.com/?i=corr%2F467%2Fkoo_467146.jpg'],
    provider: ProviderModel(
      id: 12,
      name: 'ليلى حسين',
      description: 'محللة رياضية.',
      image: personImage
    ),
    createdAt: '9:00 PM',
  ),
  PostModel(
    id: 13,
    title: 'الأهلي يخطط لتعزيز صفوفه بلاعبين جدد',
    description: 'يخطط الأهلي لإجراء تعاقدات جديدة خلال فترة الانتقالات القادمة.',
    images:[ 'https://img.kooora.com/?i=corr%2F467%2Fkoo_467146.jpg'],
    provider: ProviderModel(
      id: 13,
      name: 'ماجد الكعبي',
      description: 'صحفي رياضي معروف.',
      image: personImage
    ),
    createdAt: '10:15 PM',
  ),
  PostModel(
    id: 14,
    title: 'أرقام قياسية جديدة للنادي الأهلي',
    description: 'حقق النادي الأهلي أرقاماً قياسية جديدة في البطولات المحلية.',
    images: [ 'https://img.kooora.com/?i=corr%2F467%2Fkoo_467146.jpg'],
    provider: ProviderModel(
      id: 14,
      name: 'سلمى ياسر',
      description: 'مقدمة برامج رياضية.',
      image: personImage
    ),
    createdAt: '11:30 PM',
  ),
];