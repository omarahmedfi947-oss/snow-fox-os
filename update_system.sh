#!/bin/bash

# 1. تحديث ملفات الإعدادات من مكانها الأصلي للفولدر بتاع المشروع
echo "🔄 جاري تجميع آخر التعديلات من النظام..."
cp -r ~/.config/openbox/* ~/SnowFox_Project/openbox/ 2>/dev/null
cp -r ~/.config/tint2/* ~/SnowFox_Project/tint2/ 2>/dev/null

# 2. الدخول لفولدر المشروع
cd ~/SnowFox_Project

# 3. إضافة التعديلات للـ Git
git add .

# 4. عمل Commit بوقت التحديث التلقائي
current_time=$(date "+%Y-%m-%d %H:%M:%S")
git commit -m "Auto-Update: $current_time"

# 5. الرفع للسيرفر
echo "🚀 جاري الرفع إلى GitHub..."
git push origin main

echo "✅ تم التحديث بنجاح في $current_time!"
