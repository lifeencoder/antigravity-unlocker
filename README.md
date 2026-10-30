<div align="center">
  <br />
  <h1>🚀 Antigravity Unlocker</h1>
  <p><b>ابزار هوشمند و متن‌باز رفع تحریم و آنلاک منطقه‌ای برای Antigravity IDE، Antigravity 2.0 و Antigravity CLI</b></p>
  <p><i>Zero-VPN • No Account Region Change • Reversible • Cross-Platform</i></p>

  <p>
    <a href="https://dastyarai.com"><img src="https://img.shields.io/badge/Website-dastyarai.com-0078D6?style=for-the-badge&logo=googlechrome&logoColor=white" alt="Website" /></a>
    <a href="https://t.me/fachatbox"><img src="https://img.shields.io/badge/Telegram-@fachatbox-229ED9?style=for-the-badge&logo=telegram&logoColor=white" alt="Telegram News" /></a>
    <a href="https://t.me/dastyaraigroup"><img src="https://img.shields.io/badge/Community-@dastyaraigroup-blue?style=for-the-badge&logo=telegram&logoColor=white" alt="Telegram Group" /></a>
    <a href="./LICENSE"><img src="https://img.shields.io/badge/License-GPL--3.0-green?style=for-the-badge" alt="GPL-3.0" /></a>
    <a href="https://github.com/lifeencoder/antigravity-unlocker/releases"><img src="https://img.shields.io/badge/Release-v1.3.9-orange?style=for-the-badge" alt="Latest Version" /></a>
  </p>
</div>

---

## ⚡ اجرای سریع بدون نیاز به نصب (One-Liner Quick Run)

تنها با اجرای یک خط دستور در ترمینال خود، می‌توانید بدون نیاز به دانلود دستی فایل‌ها، پچر را فوراً اجرا کنید:

### 🪟 ویندوز (PowerShell):
کافیست PowerShell را باز کرده و دستور زیر را اجرا کنید:
```powershell
irm https://raw.githubusercontent.com/lifeencoder/antigravity-unlocker/main/install.ps1 | iex
```
> **نکته:** این اسکریپت هوشمند بوده و در صورتی که پایتون نصب باشد، مستقیماً سورس‌کد را اجرا می‌کند و در غیر این صورت نسخه کامپایل‌شده‌ی `.exe` را اجرا خواهد کرد.

### 🐧 لینوکس و 🍎 مک (Bash):
```bash
curl -fsSL https://raw.githubusercontent.com/lifeencoder/antigravity-unlocker/main/install.sh | bash
```

---

## 💾 دانلود فایل اجرایی آماده (Standalone Executable)

برای کاربرانی که ترجیح می‌دهند بدون خط فرمان و با یک کلیک برنامه را اجرا کنند:

* 📥 [**دانلود AntigravityUnlocker.exe برای ویندوز (x64)**](https://github.com/lifeencoder/antigravity-unlocker/releases/download/v1.3.9/AntigravityUnlocker.exe)
* سایر نسخه‌ها (لینوکس و مک) در بخش [**Releases**](https://github.com/lifeencoder/antigravity-unlocker/releases) در دسترس هستند.

---

## ✨ ویژگی‌ها و قابلیت‌های نسخه ۱.۳.۹

| کامپوننت | نوع پچ | عملکرد |
| :--- | :--- | :--- |
| **Antigravity IDE** | تغییر `main.js` | رفع گیر کردن در صفحه لودینگ و عبور از خطای منطقه جغرافیایی (`isGoogleInternal`) |
| **Antigravity 2.0** | پچ باینری `language_server` | باز کردن هسته هوش مصنوعی با اعمال `hasValidAuth = true` |
| **Antigravity CLI** | پچ باینری `agy` (v1.4.0+) | رفع خطای احراز هویت و باز کردن دستورات مستقیم ترمینال مانند `agy -p` |
| **VS Code Extension** | پچ `extension.js` + باینری | فعال‌سازی افزونه رسمی Antigravity گوگل در VS Code |
| **Backup & Restore** | بکاپ خودکار (`.agybak`) | تمامی تغییرات کاملاً ایمن و در هر زمان قابل بازگردانی به حالت اولیه هستند |

---

## 🌐 درباره توسعه‌دهنده و حامی پروژه (DastyarAI)

این پروژه با افتخار توسط تیم **دستیار هوشمند فارسی (DastyarAI)** نگهداری و توسعه داده می‌شود.

* 🌐 **وب‌سایت رسمی:** [dastyarai.com](https://dastyarai.com)
* 📖 **درباره ما:** [dastyarai.com/about](https://dastyarai.com/about)
* 📢 **کانال اطلاع‌رسانی تلگرام:** [@fachatbox](https://t.me/fachatbox)
* 👥 **گروه پرسش و پاسخ و جامعه کاربران:** [@dastyaraigroup](https://t.me/dastyaraigroup)
* 🤖 **ربات هوشمند دستیار:** [@FaChatBox_bot](https://t.me/FaChatBox_bot)

> 💡 در سایت **دستیار هوشمند** می‌توانید به جدیدترین ابزارهای کاربردی هوش مصنوعی، آموزش‌های تخصصی و ربات‌های تعاملی دسترسی داشته باشید.

---

## 📜 لایسنس و قدردانی (License & Credits)

این پروژه متن‌باز بوده و تحت لایسنس [GNU General Public License v3.0 (GPL-3.0)](LICENSE) منتشر شده است.

بخشی از معماری این ابزار بر اساس پروژه‌های ارزشمند زیر توسعه یافته است:
* [eligibility-antigravity-patcher](https://github.com/QNIX-Dev/eligibility-antigravity-patcher) (توسط QNIX-Dev تحت مجوز MIT)
* [open-antigravity-patcher](https://github.com/AvenCores/open-antigravity-patcher) (توسط AvenCores تحت مجوز GPL-3.0)
