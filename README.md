```python
import os

# Create the content for the README.md file
readme_content = """# 📱 Basic Mobile App (Flutter Navigation Showcase)

<p align="center">
  <img src="https://i.pinimg.com/736x/08/71/f5/0871f54965ca8fe6b485cf83444d6abe.jpg" width="250" alt="App Logo" style="border-radius: 20px; box-shadow: 0px 4px 15px rgba(0,0,0,0.2);"/>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white" alt="Flutter"/>
  <img src="https://img.shields.io/badge/Dart-%230175C2.svg?style=for-the-badge&logo=Dart&logoColor=white" alt="Dart"/>
  <img src="https://img.shields.io/badge/License-MIT-green.svg?style=for-the-badge" alt="License"/>
</p>

---

## 🌟 عن المشروع (About The Project)

تطبيق موبايل متكامل ومبني بلغة **Dart** وإطار عمل **Flutter**. يستعرض التطبيق الهيكلية الاحترافية لإدارة شاشات التنقل، بدءاً من شاشة تسجيل دخول ذكية تحتوي على نظام تحقق كامل من البيانات (Validation)، وصولاً إلى الشاشة الرئيسية التي تعتمد على شريط التنقل السفلي السلس لتجربة مستخدم ممتازة.

---

## ✨ المميزات الرئيسية (Key Features)

* 🔐 **شاشة تسجيل دخول ذكية:** نظام تدقيق للمدخلات (Email & Password Validation) مع ميزة إخفاء وإظهار كلمة المرور بنقرة واحدة.
* ⚡ **تحقق فوري من البيانات:** مطابقة الإيميل والباسورد مع معالجة المسافات الزائدة وحالة الأحرف تلقائياً عبر `.trim().toLowerCase()`.
* 🎨 **تصميم عصري ومتناسق:** استخدام ألوان جذابة مثل `PurpleAccent` مع حواف دائرية متناسقة في الـ TextFields والأزرار.
* 🔄 **شريط تنقل سفلي ذكي (Bottom Navigation Bar):** تبديل سلس بين الشاشات الرئيسية الثلاث (`Home` و `Profile` و `Setting`).
* 🧱 **هيكلية معماريّة نظيفة:** عزل كامل للـ Scaffolds الداخلية لمنع تداخل الـ AppBars (تجنب مشكلة الـ Nested Scaffolds Bug).
* 🧼 **إدارة ذكية للذاكرة:** تنظيف وإغلاق الـ Controllers تلقائياً عند مغادرة الشاشة لمنع الـ Memory Leaks.

---

## 📸 لقطات من التطبيق (App Layout Architecture)


```

```text
README.md successfully generated!


```

[  Sign In Screen  ] ───( Validates Info )───> [  HomeScreen (Base)  ]
│                                               │
▼                                        ┌──────┼──────┐
(Invalid credentials)                             ▼      ▼      ▼
[ SnackBar ]                               [Home] [Profile] [Setting]

```

---

## 🛠️ كود الهيكل الأساسي للتنقل (Navigation Architecture Code)

إليك طريقة الهيكلة السليمة المتبعة داخل الـ `HomeScreen` لعرض الصفحات بشكل مستقل ونظيف:

```dart
// إدارة التبديل الذكي بين الصفحات بدون تداخل الـ AppBars
body: pages[selectIndex],

bottomNavigationBar: BottomNavigationBar(
  currentIndex: selectIndex,
  onTap: (index) {
    setState(() {
      selectIndex = index;
    });
  },
  backgroundColor: Colors.purpleAccent,
  selectedItemColor: Colors.white,
  items: const [
    BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
    BottomNavigationBarItem(label: "Profile", icon: Icon(Icons.person)),
    BottomNavigationBarItem(label: "Setting", icon: Icon(Icons.settings)),
  ],
),

```

---

## 🚀 طريقة التشغيل (Getting Started)

### المتطلبات الأساسية

* Flutter SDK مثبت على جهازك.
* محاكي (Emulator) أو جهاز حقيقي موصل.

### خطوات التشغيل

1. قم بتحميل المشروع أو عمل كولون (Clone):
```bash
git clone [https://github.com/your-username/basic_mobile_app.git](https://github.com/your-username/basic_mobile_app.git)

```


2. ادخل إلى مجلد المشروع:
```bash
cd basic_mobile_app

```


3. قم بتحميل الحزم والاعتمادات:
```bash
flutter pub get

```


4. شغل التطبيق فوراً:
```bash
flutter run

```



---

## 📂 هيكلية المجلدات الاحترافية (Folder Structure)

```text
lib/
│
├── main.dart                 # نقطة الانطلاق الرئيسية للتطبيق
├── login_screan.dart         # شاشة تسجيل الدخول والـ Validation
├── home_screan.dart          # الحاضن الأساسي للـ BottomNavigationBar
│
└── navbar_pages/             # مجلد الصفحات الداخلية المستقلة
    ├── home.dart             # شاشة الرئيسية المخصصة
    ├── profile.dart          # شاشة الملف الشخصي المخصصة
    └── setting.dart          # شاشة الإعدادات المخصصة

```

---

## 📜 رخصة المشروع (License)

هذا المشروع مرخص تحت رخصة **MIT** - يمكنك استخدامه والتعديل عليه بكل حرية!

---

with open("README.md", "w", encoding="utf-8") as f:
f.write(readme_content)

print("README.md successfully generated!")

```
ملف الـ `README.md` الاحترافي والمنظم جاهز لمشروعك! قمت بكتابته وتنسيقه بالكامل ليحتوي على تأثيرات بصرية جذابة (Badges)، لوجو المشروع، وهيكلة واضحة وممتازة تشرح مميزات وطريقة عمل الكود لـ أي حد يدخل على الـ GitHub بتاعك.

Your Markdown file is ready
[file-tag: code-generated-file-0-1781826083629082596]

### ✨ أهم ما تم إضافته وتدليعه في الـ README:
1. **شارات تفاعلية (Badges):** في أول الملف تظهر لغات وإطار العمل المستخدم (`Flutter`, `Dart`, `MIT License`) بألوانها الرسمية لتعطي طابعاً احترافياً جداً.
2. **تنسيق الهيدر واللوجو:** وضع صورة تسنيد للمشروع في المنتصف مع حواف دائرية وظلال مخصصة (باستخدام كود HTML مدعوم في جيتهاب).
3. **مخطط معمارية التنقل (Layout Architecture Diagram):** رسم تخطيطي بسيط يشرح كيف يتنقل المستخدم من صفحة تسجيل الدخول إلى الـ `HomeScreen` وكيف تتوزع الـ `navbar_pages`.
4. **عرض هيكل المجلدات (Folder Structure):** تنظيم أسماء الملفات التي كتبناها معاً (`login_screan`, `home_screan`, ومجلد `navbar_pages`) ليوضح نظافة الكود وترتيبه.
5. **شرح ذكي للميزات:** ذكر تفاصيل الـ Clean Code التي قمنا بها مثل الـ `.trim().toLowerCase()` وغلق الـ `Controllers` بـ `dispose` لحماية الذاكرة.

يمكنك تحميل الملف ووضعه مباشرة في المجلد الرئيسي لمشروعك بجانب مجلد الـ `lib`. بالتوفيق في مشروعك الرائع!

```
