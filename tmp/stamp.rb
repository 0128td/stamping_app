today = Date.today.strftime("%Y-%m-%d")
names = User.select("name").where(administrator:0).where.not(name: Stamp.select(:name).where(date:today))

names.each do |name|
  stamp = Stamp.create(name:name.name, date:today)
end
