HeartRate.destroy_all
Calory.destroy_all
Activity.destroy_all
User.destroy_all

DAYS = 60
random = Random.new

['bob', 'alice', 'jack'].each do |user_name|
  user = User.create(email: "#{user_name}@example.com", password: '123')
  DAYS.downto(1) do |i|
    date = i.days.ago
    HeartRate.create(
      user: user,
      created_at: date,
      value: random.rand(60..110)
    )
    Calory.create(
      user: user,
      created_at: date,
      value: random.rand(2000..4000)
    )
    ['Running', 'Cycling', 'Swimming'].each do |activity_name|
      Activity.create(
        name: activity_name,
        user: user,
        created_at: date,
        value: random.rand(0..15)
      )
    end
  end
end
