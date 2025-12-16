import '../models/portfolio_models.dart';

const String contactEmail = 'bugrakaansaglam@gmail.com';
const String contactPhone = '+90 539 929 8008';
const String contactLocation = 'Ankara, Türkiye';

final LocalizedText aboutSummary = LocalizedText(
  en: 'Sole front-end engineer building cross-platform mobile apps with .NET MAUI and Flutter. Delivered enterprise healthcare inventory apps end-to-end and shipped indie apps; focused on performance, UX, and smooth store releases.',
  tr: 'Tek başına çalışan bir front-end mühendisi olarak .NET MAUI ve Flutter ile çapraz platform mobil uygulamalar geliştiriyorum. Sağlık alanında kurumsal stok yönetimi uygulamaları ve indie uygulamalar teslim ettim; performans, UX ve mağaza süreçlerine odaklanıyorum.',
);

final List<PrivacyDoc> privacyDocs = [
  PrivacyDoc(
    title: const LocalizedText(
      en: 'What Should I Eat Today – Privacy Policy',
      tr: 'What Should I Eat Today – Gizlilik Politikası',
    ),
    content: LocalizedText(
      en: '''
1. ACCEPTANCE
By installing or using the app you agree to the collection and processing of data in line with this policy.

2. SCOPE
Applies to all our apps on mobile or other platforms.

3. DATA COLLECTION & USE
- Ads: Google AdMob may use cookies/tech for personalized ads. See AdMob Privacy Policy.
- Feedback: Used only to improve the app; not shared with third parties.
- API & Recipes: Provided via public CC0 sources; originals may be from third-party sites.
- Device Access: May request external storage for database use; only to support functionality.

4. SECURITY
Standard industry measures are applied; no absolute guarantee.

5. THIRD-PARTY LINKS & DISCLAIMER
App is only on Google Play and Apple App Store. If downloaded elsewhere, OverPoweredCompany is not responsible.
Content is provided “as is”; no warranties; you accept responsibility for usage.

6. COPYRIGHT & TERMS
All content belongs to OverPoweredCompany or licensed sources; no copying/distribution without permission.

7. CONTACT
For questions: bugraksaglam@gmail.com''',
      tr: '''
1. KABUL
Uygulamayı kurup kullanarak bu politikaya uygun veri toplanmasını ve işlenmesini kabul edersiniz.

2. KAPSAM
Mobil veya diğer platformlardaki tüm uygulamalarımız için geçerlidir.

3. VERİ TOPLAMA ve KULLANIMI
- Reklam: Google AdMob kişiselleştirilmiş reklamlar için çerez/teknolojiler kullanabilir. AdMob Gizlilik Politikası’nı inceleyin.
- Geri Bildirim: Yalnızca geliştirme amacıyla kullanılır, üçüncü taraflarla paylaşılmaz.
- API ve Tarifler: Kamuya açık CC0 veritabanlarından sağlanır; orijinal kaynaklar üçüncü taraf siteler olabilir.
- Cihaz Erişimi: Harici depolama izni isteyebilir; yalnızca işlevselliği desteklemek içindir (örn. veritabanı).

4. GÜVENLİK
Endüstri standartlarında önlemler uygulanır; mutlak güvenlik garanti edilmez.

5. ÜÇÜNCÜ TARAF LİNKLERİ ve SORUMLULUK REDDİ
Uygulama sadece Google Play ve Apple App Store’da yayınlanır. Başka bir kaynaktan indirildiyse sorumluluk kabul edilmez.
İçerikler “olduğu gibi” sunulur; garanti verilmez; kullanım sorumluluğu sizdedir.

6. TELİF HAKKI ve KULLANIM KOŞULLARI
Tüm içerik OverPoweredCompany’ye aittir veya lisanslıdır; izinsiz kopyalama/dağıtma yasaktır.

7. İLETİŞİM
Sorular için: bugraksaglam@gmail.com''',
    ),
    link: 'https://bugraksaglam.com/privacy/what-should-i-eat-today',
    slug: 'what-should-i-eat-today',
  ),
  PrivacyDoc(
    title: const LocalizedText(
      en: 'Mice and Paws: Cat Game – Privacy',
      tr: 'Mice and Paws: Cat Game – Gizlilik',
    ),
    content: const LocalizedText(
      en: 'Privacy policy forthcoming. Please reach out via email for details.',
      tr: 'Gizlilik politikası eklenecek. Detaylar için e-posta ile ulaşabilirsiniz.',
    ),
    link: 'https://bugraksaglam.com/privacy/mice-and-paws-cat-game',
    slug: 'mice-and-paws-cat-game',
  ),
];

final List<SkillGroup> skillGroups = [
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

final List<Experience> experiences = [
  Experience(
    role: const LocalizedText(
      en: 'Mobile application developer',
      tr: 'Mobil uygulama geliştirici',
    ),
    company: const LocalizedText(en: 'CAVAMED A.Ş.', tr: 'CAVAMED A.Ş.'),
    period: const LocalizedText(
      en: 'Dec 2022 - Present',
      tr: 'Aralık 2022 - Günümüz',
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

final List<Project> projects = [
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
      en: 'Solo-built cat-interaction mobile game in Flutter + Flame: 60 FPS sprites, collision & hit-testing, sound FX, offline-friendly loops, Google Mobile Ads, smooth UI transitions.',
      tr: 'Flutter + Flame ile tek başına geliştirilen kedi etkileşimli oyun: 60 FPS sprite’lar, çarpışma & isabet testleri, ses efektleri, offline döngüler, Google Mobile Ads ve akıcı geçişler.',
    ),
    tags: const [
      LocalizedText(en: 'Flutter', tr: 'Flutter'),
      LocalizedText(en: 'Flame', tr: 'Flame'),
      LocalizedText(en: 'Ads', tr: 'Reklam'),
      LocalizedText(en: 'Animation', tr: 'Animasyon'),
    ],
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
    privacyDoc: privacyDocs.firstWhere(
      (doc) => doc.slug == 'mice-and-paws-cat-game',
    ),
  ),
  Project(
    title: const LocalizedText(
      en: 'What Should I Eat Today',
      tr: 'What Should I Eat Today',
    ),
    description: const LocalizedText(
      en: 'Recipe-sharing app with Flutter + Supabase. Animated, data-dense UI, TR/EN localization, favorites, image caching, deep links (App/Universal Links), Google Mobile Ads.',
      tr: 'Flutter + Supabase ile tarif paylaşım uygulaması. Animasyonlu ve veri yoğun arayüz, TR/EN lokalizasyon, favoriler, görsel cache, derin linkler (App/Universal Links), Google Mobile Ads.',
    ),
    tags: const [
      LocalizedText(en: 'Flutter', tr: 'Flutter'),
      LocalizedText(en: 'Supabase', tr: 'Supabase'),
      LocalizedText(en: 'Localization', tr: 'Lokalizasyon'),
      LocalizedText(en: 'Deep Link', tr: 'Derin Link'),
    ],
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
    privacyDoc: privacyDocs.firstWhere(
      (doc) => doc.slug == 'what-should-i-eat-today',
    ),
  ),
];

final Education education = Education(
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
