 require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます

 puts "1（新規でメモを作成する） 2（既存のメモを編集する）"
 memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています

 if memo_type == 1
    puts "拡張子を除いたファイルを入力してください"
        name = gets.chomp
    puts "メモしたい内容を記入してください"
    puts "完了したらCtrl + Dをおします"
        sentence = STDIN.read
        
        CSV.open("#{name}.csv", "w") do |csv|
            csv << ["#{sentence}"]
            csv.close
        end
 elsif memo_type == 2
    puts "拡張子を除いたファイルを入力してください"
        getname = gets.chomp
    puts "メモしたい内容を記入してください"
    puts "完了したらCtrl + Dをおします"
        getsentence = STDIN.read

        CSV.open("#{getname}.csv", "a") do |csv|
            csv << ["#{getsentence}"]
            csv.close
        end
 else
    puts "最初からやり直し、1or2を入力してください"
 end
 # if文を使用して続きを作成していきましょう。
 # 「memo_type」の値（1 or 2）によって処理を分岐させていきましょう。
