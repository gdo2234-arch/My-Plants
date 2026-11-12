//
//  HomeView.swift
//  My Plants
//
//  Created by Ghaida on 30/05/1448 AH.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            
            // الصندوق الكبير الجديد: يجمع العنوان + الخط + المحتوى
            VStack(spacing: 0) {
                
                // 1. العنوان الخاص فينا
                Text("My Plants 🌱")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading) // يحط العنوان على اليسار
                    .padding(.horizontal, 16) // يبعده عن طرف الشاشة
                    .padding(.top, 8) // 👈 غيّر هذا الرقم عشان ترفع أو تنزل العنوان
                
                // 2. الخط النحيف (مستطيل رفيع عشان نتحكم بلونه)
                Rectangle()
                    .fill(.gray.opacity(0.4)) // لون الخط ووضوحه
                    .frame(height: 1) // سماكة الخط
                    .padding(.top, 12) // المسافة بين العنوان والخط
                
                // 3. المحتوى (نفس كودك بدون تغيير)
                VStack(spacing: 37) {
                    
                    Image("tree") // هنا ننادي الصوره من assets
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150)
                    
                    // نحط في ستاك ثاني عشان السبيسنغ تتغير هنا
                    VStack(spacing: 25) {
                        Text("Start your plant journey!")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Text("Now all your plants will be in one place and we will help you take care of them :)🪴")
                            .font(.subheadline)
                            .fontWeight(.regular)
                            .foregroundStyle(.secondary)
                            .multilineTextAlignment(.center) // يخلي الكلام بالنص
                            .padding(.horizontal, 40) // حواف النص او هوامشه
                    }
                    
                    NavigationLink {
                        SetReminderView()
                    } label: {
                        Text("Set Plant Reminder")
                            .foregroundStyle(.white) // هذا لون النص
                            .fontWeight(.medium)
                            .frame(width: 280, height: 42) // هذا لحجم الزر
                            .glassEffect(.regular.tint(.appGreen).interactive(), in: Capsule()) // تأثير القزاز: لونه وتفاعله وشكله
                    }
                    .padding(.top, 50) // هذا يبعده عن النص اللي فوق
                }
                .padding(.bottom, 90) // هذا يخلي الفقرة مرتفعة
                .frame(maxWidth: .infinity, maxHeight: .infinity) // ياخذ باقي الشاشة تحت الخط
            }
            .toolbar(.hidden, for: .navigationBar) // نخفي شريط Apple في هذي الشاشة بس
        }
    }
}

#Preview {
    HomeView()
}
