require 'csv'

  CSV.generate(force_quotes: true) do |csv|

    csv_column_names = [
        "年月日",
        "名前",
        "始業時刻",
        "休憩開始時刻",
        "業務再開時刻",
        "終業時刻"
    ]
    csv << csv_column_names

    @stamps.each do |stamp|
        csv_column_values = [
            stamp.date,
            stamp.name,
            stamp.start&.strftime("%H:%M"),
            stamp.am_finish&.strftime("%H:%M"),
            stamp.pm_start&.strftime("%H:%M"),
            stamp.finish&.strftime("%H:%M")
      ]
     csv << csv_column_values
  end


end
