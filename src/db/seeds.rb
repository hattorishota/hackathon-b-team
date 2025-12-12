# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# 既存のデータをクリア
Attendance.destroy_all

# テストデータを作成
attendances_data = [
  { name: '田中太郎', location: 'W1' },
  { name: '佐藤花子', location: 'W5' },
  { name: '鈴木一郎', location: 'W8' },
  { name: '山田次郎', location: 'E2' },
  { name: '伊藤美咲', location: 'E5' },
  { name: '渡辺健太', location: 'E9' },
  { name: '高橋由美', location: 'FUJI 05' },
  { name: '中村隆', location: 'FUJI 03' },
  { name: '小林真理', location: 'TOWER 04' },
  { name: '加藤翔太', location: 'TOWER 02' },
  { name: '吉田優子', location: 'GROWTH 01' },
  { name: '山本大輔', location: 'GROWTH 03' },
  { name: '佐々木和子', location: 'SMILE' },
  { name: '松本拓也', location: 'AGILE' },
  { name: '井上麻衣', location: 'ONE' },
  { name: '木村航', location: 'TOGETHER 01' },
  { name: '林美穂', location: 'TOGETHER 02' },
  { name: '斉藤健', location: 'OASIS' },
  { name: '清水愛', location: 'Cloud' },
  { name: '山口誠', location: 'SEED 01' }
]

attendances_data.each do |data|
  Attendance.create!(data)
end

puts "#{Attendance.count}件の出社データを作成しました"
