# Event.create!(
#   [
#     {
#       owner_id: "5",
#       event_title: "サッカー",
#       overview: "よろしくお願いします",
#       start_datetime:"2020-4-5 15:00",
#       end_datetime:"2020-4-5 17:00",
#       place:"Tokyo",
#       fee:"3000",
#       max_member:"20000"
#     },
#     {
#       owner_id: "3",
#       event_title: "プログラミング",
#       overview: "lkjhgfds",
#       start_datetime:"2020-5-6 15:00",
#       end_datetime:"2020-5-6 17:00",
#       place:"Osaka",
#       fee:"0",
#       max_member:"14",
#     },
#     {
#       owner_id: "3",
#       event_title: "バスケット",
#       overview: "mnbvcxz",
#       start_datetime:"2020-6-6 15:00",
#       end_datetime:"2020-6-6 17:00",
#       place:"Nagoya",
#       fee:"1000",
#       max_member:"5",
#     },
#     {
#       owner_id: "3",
#       event_title: "プログラミング",
#       overview: "asdfghj",
#       start_datetime:"2020-7-6 15:00",
#       end_datetime:"2020-7-6 17:00",
#       place:"Osaka",
#       fee:"0",
#       max_member:"5",
#     },
#     {
#       owner_id: "2",
#       event_title: "野球",
#       overview: "hjujyejj",
#       start_datetime:"2020-3-6 11:00",
#       end_datetime:"2020-3-6 16:00",
#       place:"Okinawa",
#       fee:"1,000",
#       max_member:"20",
#     }
#   ]
# )

# User.create!(
#   [
#     {
#       user_name: "mukut",
#       email: "mukut@mukut.com",
#       gender: "9",
#       birthday:"1999-9-9 9:19",
#     },
#     {
#       user_name: "abc",
#       email: "abc@abc.com",
#       gender: "1",
#       birthday:"1960-1-1 1:11",
#     },
#   ]
# )

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
