import 'package:bugrakaansaglam_website/features/portfolio/domain/portfolio_models.dart';

const ContactInfo _contactInfo = ContactInfo(
  email: 'bugrakaansaglam@gmail.com',
  phone: '+90 539 929 8008',
  location: 'Ankara, Türkiye',
  linkedIn: 'https://www.linkedin.com/in/bugrakaansaglam',
);

final LocalizedText _aboutSummary = LocalizedText(
  en: 'Sole front-end engineer building cross-platform mobile apps with .NET MAUI and Flutter. Delivered enterprise healthcare inventory apps end-to-end and shipped indie apps; focused on performance, UX, and smooth store releases.',
  tr: 'Tek başına çalışan bir front-end mühendisi olarak .NET MAUI ve Flutter ile çapraz platform mobil uygulamalar geliştiriyorum. Sağlık alanında kurumsal stok yönetimi uygulamaları ve indie uygulamalar teslim ettim; performans, UX ve mağaza süreçlerine odaklanıyorum.',
);

final List<PrivacyDoc> _privacyDocs = [
  PrivacyDoc(
    title: const LocalizedText(
      en: 'What Should I Eat Today – Privacy Policy',
      tr: 'What Should I Eat Today – GİZLİLİK POLİTİKASI',
    ),
    content: LocalizedText(
      en: '''
1. ACCEPTANCE
By installing, accessing, or using the app, you consent to the collection and processing of your personal data in line with this privacy policy. Please read the following items carefully to understand how we handle your data. If you do not accept this policy, please do not use the app or remove it from your device.

2. INTRODUCTION
This privacy policy applies to all of our applications on mobile devices or other platforms. We refer to our apps and the services we provide as the "Services" in this document.

OverPoweredCompany reserves the right to change this privacy policy and the terms of use. Changes take effect immediately and are deemed accepted by the user. We list the updated version date at the bottom.

3. DATA COLLECTION AND USE
- Advertising Data: The app shows ads through Google AdMob. AdMob may use cookies and similar technologies to personalize ads. For details, see Google's AdMob Privacy Policy.
- Feedback: Users may submit feedback through the app. Feedback is used solely to improve the app and is not shared with third parties.
- API & Recipes: Recipes are served via an API from public CC0-licensed databases. Source links can be provided if needed. Original sources may include third-party sites such as food.com.
- Device Access: The app may request permission to use external storage. This is only to support app functionality (e.g., database use).

4. SECURITY AND DATA PROTECTION
OverPoweredCompany applies security measures in line with industry standards. However, due to the nature of the internet, we cannot guarantee 100% security.

5. THIRD-PARTY LINKS AND DISCLAIMER
- The app is only published on Google Play Store and Apple App Store. If you notice the app on another source, OverPoweredCompany is not responsible for downloads from there.
- We do not guarantee the accuracy of the content in the app. The app is provided "as is," and you accept that we are not liable for any damages arising from its use.

6. COPYRIGHT AND TERMS OF USE
All content in the app (visuals, text, recipes, etc.) belongs to OverPoweredCompany or is used under appropriate licenses. Users may not copy, reproduce, or distribute app content without permission. Users are responsible for any damages arising from violations of these rules.

7. CONTACT
For any questions, opinions, or suggestions about our privacy policy, contact us at bugraksaglam@gmail.com.

8. VALIDITY AND LAST UPDATE
This privacy policy remains valid while the app is installed, and certain provisions may continue after removal. Last updated: 18.02.2025.''',
      tr: '''
1. BU POLİTİKANIN KABULÜ

Uygulamamızı yükleyerek, erişerek ve/veya kullanarak, kişisel verilerinizin bu gizlilik politikasına uygun olarak toplanmasını ve işlenmesini kabul etmiş olursunuz. Kişisel verilerinizle ilgili uygulamalarımızı anlamak için lütfen aşağıdaki maddeleri dikkatlice okuyunuz. Gizlilik politikasını kabul etmiyorsanız, lütfen uygulamamızı kullanmayınız veya cihazınızdan kaldırınız.

2. GİRİŞ

Bu gizlilik politikası, mobil cihazlarda ya da diğer platformlarda çalışan tüm uygulamalarımız için geçerlidir. Bu metinde uygulamalarımızdan ve sunduğumuz hizmetlerden "Hizmetler" olarak bahsedilmektedir.

OverPoweredCompany, bu gizlilik politikası ve kullanım koşullarında değişiklik yapma hakkını saklı tutar. Yapılan değişiklikler anında yürürlüğe girer ve kullanıcı tarafından kabul edilmiş sayılır. Güncellenmiş sürümün tarihini en alt kısımda belirtmekteyiz.

3. VERİ TOPLAMA VE KULLANIMI

Uygulamamız aşağıdaki bilgileri toplayabilir ve işleyebilir:
- Reklam Amaçlı Veriler: Uygulama, Google AdMob aracılığıyla reklamlar gösterir. AdMob, reklamları kişiselleştirmek için çerezler ve benzeri teknolojiler kullanabilir. AdMob’un veri politikaları hakkında daha fazla bilgi için Google’ın AdMob Gizlilik Politikası sayfasını ziyaret edebilirsiniz.
- Geri Bildirimler: Kullanıcılar, uygulama üzerinden geri bildirim bırakabilir. Bu geri bildirimler, yalnızca uygulamanın geliştirilmesi amacıyla kullanılacak olup üçüncü taraflarla paylaşılmayacaktır.
- API Kullanımı ve Tarifler: Tarifler, API aracılığıyla sunulmaktadır. Tariflerin kaynağı, kamuya açık CC0 lisansına sahip veritabanlarından alınmıştır. (Gerekirse kaynak link sağlanabilir.) Tariflerin orijinal kaynağı food.com gibi üçüncü taraf siteler olabilir.
- Cihaz Erişimleri: Uygulama, harici depolama alanını kullanma izni gerektirebilir. Bu izin yalnızca uygulamanın işleyişini desteklemek amacıyla (örneğin veritabanı kullanımı) talep edilmektedir.

4. GÜVENLİK VE VERİ KORUMA

OverPoweredCompany, kullanıcı verilerini korumak için endüstri standartlarına uygun güvenlik önlemleri almaktadır. Ancak, internetin doğası gereği, yüzde yüz güvenli bir hizmet sunulacağını garanti edememekteyiz.

5. ÜÇÜNCÜ TARAF BAĞLANTILARI VE SORUMLULUK REDDİ

Uygulamamız sadece Google Play Store ve Apple App Store’da yayınlanmaktadır. Eğer uygulamanın farklı bir kaynaktan indirildiğini fark ederseniz, OverPoweredCompany bu yüklemelerden sorumlu değildir.

Uygulamada yer alan içeriklerin doğruluğu konusunda herhangi bir garanti verilmemektedir. Uygulamayı "olduğu gibi" sunmaktayız ve uygulama kullanımından kaynaklanabilecek herhangi bir zarardan sorumlu tutulamayacağımızı kabul etmektesiniz.

6. TELİF HAKKI VE KULLANIM KOŞULLARI

Uygulamada yer alan tüm içerik (görseller, metinler, tarifler vb.) OverPoweredCompany’ye aittir veya uygun lisanslarla kullanılmaktadır. Kullanıcılar, uygulama içeriğini izinsiz olarak kopyalama, çoğaltma veya dağıtma hakkına sahip değildir. Bu kurallara uyulmaması halinde kullanıcı, doğabilecek tüm zararlardan sorumlu olacaktır.

7. İLETİŞİM

Gizlilik politikamızla ilgili herhangi bir soru, görüş veya öneriniz için bizimle bugraksaglam@gmail.com adresinden iletişime geçebilirsiniz.

8. GEÇERLİLİK VE SON GÜNCELLEME

Bu gizlilik politikası, uygulamanın yüklü olduğu süre boyunca geçerlidir ve uygulamanın kaldırılmasından sonra da belirli hükümleri yürürlükte kalabilir.

Son güncelleme tarihi: 18.02.2025.''',
    ),
    link: 'https://bugraksaglam.com/privacy-policy/what-should-i-eat-today',
    slug: 'what-should-i-eat-today',
  ),
  PrivacyDoc(
    title: const LocalizedText(
      en: 'Mice and Paws: Cat Game – Privacy Policy',
      tr: 'Mice and Paws: Cat Game – GİZLİLİK POLİTİKASI',
    ),
    content: LocalizedText(
      en: '''
1. ACCEPTANCE OF THIS POLICY

By installing, accessing, and/or playing our games or interacting with our services, you agree to the collection and use of your information in accordance with this privacy policy. Please read the following carefully to understand our practices regarding your personal data and how we handle it. If you do not accept this privacy policy, please do not install, access, or play our games or use our services.

2. INTRODUCTION

This privacy policy applies to all games we develop, whether played on mobile devices or other platforms. In this privacy policy, we refer to our games and related products or services as the "Services."

Over Powered Company may make changes to this Privacy Policy and Terms of Use. Any changes take effect immediately and are deemed accepted by the user. The date of the change will be indicated by us at the bottom as the "last update date."

3. TERMS

The privacy policy and terms stated here apply to all mobile applications of "Mice And Paws: Cat Game" published on Google Play Store and iOS App Store. By installing this application on your mobile device, you are deemed to have accepted the privacy policy and terms of use stated in this text. If you do not accept these terms, please do not install this application on your device.

Our applications do not collect any personal information belonging to you and do not request such information.

"Mice And Paws: Cat Game" will always show due diligence to be a high-quality and useful application. However, we do not make any commitment that the content in the application will meet your expectations, be useful to you, or contain entirely accurate information. We provide the applications as-is. For this reason, you agree that you cannot hold Over Powered Company responsible for any adverse situation arising from our applications.

Over Powered Company makes every effort to take all possible measures regarding the security of these applications and fulfills its obligations under the Google Play Developer Program Policies agreement. However, the internet and digital environments are not sufficiently secure areas. Therefore, we do not provide any guarantee of offering you a completely secure service.

Our applications are only available on the Google Play Store. If these applications appear on another Android or iOS store without our knowledge, Over Powered Company cannot be held responsible for downloads from there.

All copyrights of the entire content consisting of audio, written, and visual elements and software in these applications belong to Over Powered Company. You agree not to copy, reproduce, republish, disassemble, or re-share any of our applications or the content protected by copyrights of these applications. Otherwise, the user accepts, declares, and undertakes that they are responsible for all damages arising and that may arise for this reason.

You can send your opinions and suggestions about the conditions stated here to us at bugrakaansaglam@gmail.com.

Within the scope of permissions requested on the device, permission to use the external storage area of the user device (for database use) is provided automatically by the user or system.

We state that our company is not responsible for physical and electronic damages that may occur to the device as a result of the application issued by us.

The term of this privacy agreement remains valid for the duration the application is installed and will continue to be in effect after the application is deleted.

Last update date: 25.03.2024.''',
      tr: '''
1. BU POLİTİKANIN KABULÜ

Oyunlarımızı yükleyerek, bunlara erişerek ve/veya oynayarak veya hizmetlerimizle etkileşimde bulunarak, bilgilerinizin bu gizlilik politikasının şartlarına uygun olarak toplanmasını ve kullanılmasını kabul etmiş olursunuz. Kişisel verilerinizle ilgili uygulamalarımızı ve bunların nasıl yapıldığını anlamak için lütfen aşağıdakileri dikkatlice okuyun. Bu gizlilik politikasını kabul etmiyorsanız lütfen oyunlarımızı kaldırmayın veya yüklemeyin, bunlara erişmeyin, oynamayın veya hizmetlerimizi kullanmayın.

2. GİRİŞ

Bu gizlilik politikası ister mobil cihazlarda ister diğer platformlarda oynansın, geliştirdiğimiz tüm oyunlar için geçerlidir. Bu gizlilik politikasında Oyunlarımızdan ve ilgili ürün veya hizmetlerimizden "Hizmetler" olarak söz ediyoruz.

Over Powered Company; bu Gizlilik Politikası ve Kullanım Koşulları metninde değişiklik yapabilir. Yapılan değişiklikler anında yürürlüğe girecek olup kullanıcı tarafından kabul edilir. Değişiklik yaptığımız tarihi, "son güncelleme tarihi" olarak en alt kısımda tarafımızca belirtilecektir.

3. MADDELER

Burada belirtilen gizlilik politikası ve kullanım koşulları; "Mice And Paws: Cat Game"nin Google Play Store ve IOS App Store’da yayınlanan bütün mobil uygulama için geçerlidir. Bu uygulamayı mobil cihazınıza yükleyerek, bu metinde yer alan gizlilik politikasını ve kullanım koşullarını kabul etmiş sayılırsınız. Bu koşulları kabul etmiyorsanız bu uygulamayı mobil cihazınıza yüklemeyiniz.

Uygulamalarımız, size ait herhangi bir kişisel bilgiyi toplamaz ve sizden bu yönde bir talepte bulunmaz.

"Mice And Paws: Cat Game" uygulaması kaliteli ve yararlı bir uygulama olmak için her zaman gereken özeni ve duyarlılığı gösterecektir. Buna rağmen, uygulamada yer alan içeriklerin beklentilerinizi karşılayacağı, size yararlı olacağı veya kesin doğru bilgiler içereceğine dair hiçbir taahhütte bulunmamaktayız. Uygulamaları olduğu gibi sunmaktayız. Bu sebeple, uygulamalarımızdan kaynaklı yaşanacak herhangi bir olumsuz durum için Over Powered Company'i sorumlu tutamayacağınızı kabul etmektesiniz.

Over Powered Company, bu uygulamaların güvenliği konusunda alınabilecek tüm önlemleri almak için gereken ölçüde çaba sarf eder ve Google Play Geliştirici Programı Politikaları sözleşmesi kapsamındaki yükümlülüklerini yerine getirir. Bununla birlikte; internet ve dijital ortamlar yeterli düzeyde güvenli alanlar değildir. Bu yüzden size yüzde yüz güvenli bir hizmet sunacağımız konusunda herhangi bir garantide bulunmamaktayız.

Uygulamalarımız sadece Google Play Store’da yer almaktadır. Bu uygulamaların bizim bilgimiz dışında başka bir Android ya da IOS mağazasında yer alması durumunda, buradan yapılacak yüklemelerden Over Powered Company sorumlu tutulamaz.

Bu uygulamalarda yer alan sesli, yazılı ve görsel öğelerden ve yazılımlardan oluşan bütün içeriğe ilişkin her türlü telif hakkı Over Powered Company’ye aittir. Herhangi bir uygulamamızı veya bu uygulamaların telif haklarıyla korunan içeriğini; kopyalama, çoğaltma, yeniden yayımlama, parçalarına ayırma, tekrar kamuya sunma vb. eylemlerde bulunmayacağınızı kabul etmektesiniz. Aksi durumda kullanıcı, tarafımızın işbu sebeple oluşan ve oluşabilecek tüm zararlardan sorumlu olduğunu kabul, beyan ve taahhüt eder.

Burada belirtilen koşullarla ilgili görüş ve önerilerinizi, bugrakaansaglam@gmail.com mail adresinden bize iletebilirsiniz.

Cihaz üzerinde tarafımızca istenen yetkiler kapsamında, kullanıcı aygıtının harici depolama alanını kullanma izni, (database için) kullanıcı veya sistem tarafından re'sen sağlanır.

Tarafımızca çıkarılan uygulama sonucunda fiziksel ve elektronik olarak cihaza gelebilecek olan zararlardan firmamız sorumlu olmadığını belirtiriz.

İşbu gizlilik sözleşmesinin süresi, uygulamanın yüklü olduğu süre ile birlikte uygulamanın silinmesi akabinde de geçerliliğini koruyacaktır.

Son güncelleme tarihi: 25.03.2024.''',
    ),
    link: 'https://bugraksaglam.com/privacy-policy/mice-and-paws-cat-game',
    slug: 'mice-and-paws-cat-game',
  ),
];

final List<SkillGroup> _skillGroups = [
  SkillGroup(
    title: LocalizedText(
      en: 'Languages & Frameworks',
      tr: 'Diller ve Frameworkler',
    ),
    items: const [
      LocalizedText(en: 'Flutter (Dart)', tr: 'Flutter (Dart)'),
      LocalizedText(en: 'C# / .NET MAUI', tr: 'C# / .NET MAUI'),
      LocalizedText(
        en: 'Xamarin.Forms, WPF/WinUI',
        tr: 'Xamarin.Forms, WPF/WinUI',
      ),
      LocalizedText(
        en: 'WinForms / DevExpress MAUI',
        tr: 'WinForms / DevExpress MAUI',
      ),
    ],
  ),
  SkillGroup(
    title: LocalizedText(
      en: 'Architecture & Integrations',
      tr: 'Mimari ve Entegrasyonlar',
    ),
    items: const [
      LocalizedText(
        en: 'Software architecture & design patterns',
        tr: 'Yazılım mimarisi ve tasarım kalıpları',
      ),
      LocalizedText(
        en: 'RESTful APIs, RBAC & client-side auth',
        tr: 'REST API, RBAC ve istemci tarafı kimlik',
      ),
      LocalizedText(
        en: 'Barcode/QR/DataMatrix (ZXing.Net.MAUI, Camera2)',
        tr: 'Barkod/QR/DataMatrix (ZXing.Net.MAUI, Camera2)',
      ),
      LocalizedText(
        en: 'Deep linking & push (FCM, CloudKit)',
        tr: 'Derin link ve push (FCM, CloudKit)',
      ),
      LocalizedText(
        en: 'Supabase (PostgreSQL), SignalR',
        tr: 'Supabase (PostgreSQL), SignalR',
      ),
      LocalizedText(
        en: 'Continuous integration & delivery (CI/CD)',
        tr: 'Sürekli entegrasyon ve teslim (CI/CD)',
      ),
    ],
  ),
  SkillGroup(
    title: LocalizedText(en: 'DevOps & Delivery', tr: 'DevOps ve Teslimat'),
    items: const [
      LocalizedText(en: 'Unit testing', tr: 'Birim testleri'),
      LocalizedText(
        en: 'Performance optimisation',
        tr: 'Performans optimizasyonu',
      ),
      LocalizedText(
        en: 'Git & release workflows',
        tr: 'Git ve release süreçleri',
      ),
      LocalizedText(
        en: 'Process improvement (SPICE)',
        tr: 'Süreç iyileştirme (SPICE)',
      ),
      LocalizedText(
        en: 'Store releases (Play, App Store, AppGallery)',
        tr: 'Mağaza yayınları (Play, App Store, AppGallery)',
      ),
    ],
  ),
  SkillGroup(
    title: LocalizedText(
      en: 'Mobile Engineering (Core)',
      tr: 'Mobil Mühendislik (Çekirdek)',
    ),
    items: const [
      LocalizedText(
        en: 'Android & iOS development',
        tr: 'Android ve iOS geliştirme',
      ),
      LocalizedText(
        en: 'UI / UX & data-heavy layouts',
        tr: 'UI / UX ve yoğun veri ekranları',
      ),
    ],
  ),
];

final List<Experience> _experiences = [
  Experience(
    role: const LocalizedText(
      en: 'Mobile application developer',
      tr: 'Mobil uygulama geliştirici',
    ),
    company: const LocalizedText(en: 'CAVAMED A.Ş.', tr: 'CAVAMED A.Ş.'),
    period: const LocalizedText(
      en: 'Dec 2022 - Dec 2025',
      tr: 'Aralık 2022 - Aralık 2025',
    ),
    location: const LocalizedText(
      en: 'Istanbul, Türkiye',
      tr: 'İstanbul, Türkiye',
    ),
    summary: const LocalizedText(
      en: 'Sole front-end engineer for two enterprise healthcare inventory apps (CAVAMED, ERPIMUS) built with .NET MAUI.',
      tr: '.NET MAUI ile geliştirilen iki kurumsal sağlık stok yönetimi uygulamasında (CAVAMED, ERPIMUS) tek front-end geliştirici.',
    ),
    highlights: const [
      LocalizedText(
        en: 'Designed front-end architecture; delivered data-heavy UIs with DevExpress (DataForm/DataGrid), advanced filtering, card/detail layouts, and reusable popups.',
        tr: 'Ön yüz mimarisini tasarladı; DevExpress (DataForm/DataGrid) ile yoğun veri ekranları, gelişmiş filtreleme, kart/detay düzenleri ve tekrar kullanılabilir popup’lar geliştirdi.',
      ),
      LocalizedText(
        en: 'Implemented QR/Barcode capture with fast focus & small-code readability; tuned Camera2 pipeline for varied lighting and devices.',
        tr: 'Hızlı odaklanma ve küçük kod okuma için QR/Barkod yakalama; farklı ışık ve cihaz koşullarına uygun Camera2 hattı ayarı.',
      ),
      LocalizedText(
        en: 'Integrated client-side authentication/session and role-based UI aligned with healthcare privacy expectations.',
        tr: 'Sağlık verisi hassasiyetine uygun istemci tarafı kimlik doğrulama/oturum ve rol tabanlı arayüz kurgusu.',
      ),
      LocalizedText(
        en: 'Improved performance via virtualization, caching, and payload reduction; boosted load times and stability at scale.',
        tr: 'Sanal listeleme, caching ve payload azaltma ile performansı artırdı; yükleme süreleri ve kararlılık iyileştirildi.',
      ),
      LocalizedText(
        en: 'Managed signing, CI steps, SDK/API upgrades, and store submissions (Google Play, App Store, Huawei AppGallery).',
        tr: 'İmzalama, CI adımları, SDK/API yükseltmeleri ve mağaza gönderimlerini (Google Play, App Store, Huawei AppGallery) yönetti.',
      ),
    ],
  ),
];

final List<Project> _projects = [
  Project(
    title: const LocalizedText(
      en: 'Desk4Dent: Dental Clinic Management',
      tr: 'Desk4Dent: Dental Klinik Yönetimi',
    ),
    description: const LocalizedText(
      en: 'Built with Flutter, Desk4Dent combines appointment, patient, procedure, and payment workflows for dental clinics in one mobile app. Role-based authorization, dentist-specific calendar management, and iOS/Android push notification infrastructure simplify day-to-day clinic operations.',
      tr: 'Flutter ile geliştirilen Desk4Dent, diş klinikleri için randevu, hasta, işlem ve tahsilat süreçlerini tek bir mobil uygulamada birleştirir. Rol bazlı yetkilendirme, doktor bazlı takvim yönetimi ve iOS/Android push bildirim altyapısıyla klinik operasyonlarını sadeleştirir.',
    ),
    tags: const [],
    meta: const LocalizedText(en: 'Indie', tr: 'Indie'),
  ),
  Project(
    title: const LocalizedText(
      en: 'CAVAMED & ERPIMUS',
      tr: 'CAVAMED & ERPIMUS',
    ),
    description: const LocalizedText(
      en: 'Enterprise healthcare inventory apps built with .NET MAUI; lead engineer for architecture, UI, barcode pipelines, and release workflows.',
      tr: '.NET MAUI ile geliştirilen kurumsal sağlık stok uygulamaları; mimari, arayüz, barkod altyapısı ve yayın süreçlerinde sorumluluk.',
    ),
    tags: const [
      LocalizedText(en: '.NET MAUI', tr: '.NET MAUI'),
      LocalizedText(en: 'Healthcare', tr: 'Sağlık'),
      LocalizedText(en: 'DevExpress', tr: 'DevExpress'),
      LocalizedText(en: 'Camera2 / ZXing', tr: 'Camera2 / ZXing'),
    ],
    iconAsset: 'assets/images/cavamedicon.webp',
    meta: const LocalizedText(
      en: 'Completed at CAVAMED A.Ş.',
      tr: 'CAVAMED A.Ş\'de tamamlanmıştır',
    ),
  ),
  Project(
    title: const LocalizedText(
      en: 'Mice and Paws: Cat Game',
      tr: 'Mice and Paws: Cat Game',
    ),
    description: const LocalizedText(
      en: 'Sole front-end developer of a cat-interaction mobile game built end-to-end in Flutter (+ Flame). Implemented 60-FPS animated sprites, collision & hit-testing, sound FX, and a structured asset pipeline. Added Google Mobile Ads, polished UI transitions, and offline-friendly loops. Prepared Play/App Store deliverables (bundle IDs, icons, privacy labels, build configs) and ran internal testing.',
      tr: 'Flutter (+ Flame) ile uçtan uca geliştirilen kedi etkileşimli mobil oyunun tek front-end geliştiricisi. 60 FPS animasyonlu sprite\'lar, çarpışma/isabet testleri, ses efektleri ve düzenli bir varlık hattı kurdu. Google Mobile Ads ekledi, geçişleri iyileştirdi ve offline dostu döngüler hazırladı. Play/App Store teslimleri (bundle ID, ikonlar, gizlilik etiketleri, build config\'leri) için paketleme yapıp dahili testleri yürüttü.',
    ),
    tags: const [
      LocalizedText(en: 'Flutter', tr: 'Flutter'),
      LocalizedText(en: 'Flame', tr: 'Flame'),
      LocalizedText(en: 'Animation', tr: 'Animasyon'),
    ],
    iconAsset: 'assets/images/miceandpawsicon.webp',
    links: const [
      ProjectLink(
        label: 'GitHub',
        url: 'https://github.com/BugraKaanSaglam/game_for_cats_flutter',
      ),
      ProjectLink(
        label: 'App Store',
        url: 'https://apps.apple.com/us/app/mice-and-paws-cat-game/',
      ),
      ProjectLink(
        label: 'Google Play',
        url:
            'https://play.google.com/store/apps/details?id=com.mice_and_paws_cat_game',
      ),
    ],
    meta: const LocalizedText(en: 'Indie', tr: 'Indie'),
    privacyDoc: _privacyDocs.firstWhere(
      (doc) => doc.slug == 'mice-and-paws-cat-game',
    ),
  ),
  Project(
    title: const LocalizedText(
      en: 'What Should I Eat Today',
      tr: 'What Should I Eat Today',
    ),
    description: const LocalizedText(
      en: 'Personal recipe-sharing app developed solo with Flutter + Supabase. Built data-dense, animated UI; TR/EN localization; favorites and image caching. Implemented deep links (App/Universal Links, Branch/Firebase-compatible) and Google Mobile Ads. Used Supabase (Postgres). Prepared iOS/Android release artifacts and ran closed testing.',
      tr: 'Flutter + Supabase ile tek başıma geliştirdiğim kişisel tarif paylaşım uygulaması. Veri yoğun, animasyonlu arayüz; TR/EN lokalizasyon; favoriler ve görsel cache. Derin linkler (App/Universal Links, Branch/Firebase uyumlu) ve Google Mobile Ads uygulandı. Supabase (Postgres) kullandım. iOS/Android yayın paketlerini hazırlayıp kapalı testler yaptım.',
    ),
    tags: const [
      LocalizedText(en: 'Flutter', tr: 'Flutter'),
      LocalizedText(en: 'Supabase', tr: 'Supabase'),
      LocalizedText(en: 'Localization', tr: 'Lokalizasyon'),
      LocalizedText(en: 'Deep Link', tr: 'Derin Link'),
      LocalizedText(en: 'Ads', tr: 'Reklam'),
    ],
    iconAsset: 'assets/images/whatshouldieaticon.webp',
    links: const [
      ProjectLink(
        label: 'App Store',
        url:
            'https://apps.apple.com/us/app/what-should-i-eat-today/id6741708205',
      ),
      ProjectLink(
        label: 'Google Play',
        url:
            'https://play.google.com/store/apps/details?id=com.whatshouldieattoday.mobile',
      ),
    ],
    meta: const LocalizedText(en: 'Indie', tr: 'Indie'),
    privacyDoc: _privacyDocs.firstWhere(
      (doc) => doc.slug == 'what-should-i-eat-today',
    ),
  ),
];

final Education _education = Education(
  degree: const LocalizedText(
    en: 'BSc in Biomedical Engineering',
    tr: 'Biyomedikal Mühendisliği Lisans',
  ),
  school: const LocalizedText(
    en: 'TOBB University of Economics and Technology (TOBB ETÜ)',
    tr: 'TOBB Ekonomi ve Teknoloji Üniversitesi (TOBB ETÜ)',
  ),
  location: const LocalizedText(en: 'Ankara, Türkiye', tr: 'Ankara, Türkiye'),
  period: const LocalizedText(en: '2014 entry', tr: '2014 giriş'),
);

final PortfolioContent portfolioContent = PortfolioContent(
  aboutSummary: _aboutSummary,
  privacyDocs: _privacyDocs,
  skillGroups: _skillGroups,
  experiences: _experiences,
  projects: _projects,
  education: _education,
  contactInfo: _contactInfo,
);
