subjects = %w(インターネット情報 応プロ2 テーマ実習)
details = ["確認問題", "演習問題", "基本情報"]
limits = ["2022-6-4", "2022-6-5", "2022-6-6"]

0.upto(3) do |idx|
    Taskmanagement.create(
        subject: subjects[idx],
        detail: details[idx],
        limit: limits[idx]
    )
end