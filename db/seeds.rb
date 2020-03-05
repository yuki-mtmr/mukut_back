#3月の初期ダミーデータ

1.upto(31) do |num|
  num = "%02d" % num
  Schedule.create(
    [
      {
        busy_day: "2020-03-#{num}",
        user_id: "10000",
      }
    ]
  )
end
