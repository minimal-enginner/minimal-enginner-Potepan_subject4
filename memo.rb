require "csv"
# メモアプリ
 puts "1(新規でメモを作成) 2(既存のメモ編集する)"
## ユーザーの入力を待機
input_val = gets.chomp
if input_val == "1"
 puts "拡張子を除いたファイルを入力してください"
  file_name = gets.chomp
   puts "メモしたい内容を記入してください"
   puts "完了したらCtrl + Dをおします"
   input_memo = $stdin.read
    CSV.open("#{file_name}.csv","w") do |csv|
    csv.puts ["#{input_memo}"]
  end
elsif input_val == "2"
  puts "既存のメモを編集します。拡張子を除いた既存ファイル名を入力してください。"
   file_name = gets.chomp
  puts "完了したらCtrl + Dをおします"
  #csv全体を読み込む
  puts CSV.read("#{file_name}.csv")
    File.open("#{file_name}.csv", "a") do |memo|
      input_memo = $stdin.read
      memo.puts("#{input_memo}")
    end
else
  puts "1か2の数字を入力してください"
end
