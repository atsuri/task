subjects = %w(インターネット情報 応プロ2 テーマ実習)
details = ["確認問題", "演習問題", "基本情報"]

0.upto(3) do |idx|
    Taskmanagement.create(
        subject: subjects[idx],
        detail: details[idx],
        limit: "2000-11-11"
    )
end