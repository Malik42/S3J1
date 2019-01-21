require_relative "../lib/user.rb"

describe 'initializer' do

  it 'creates an user' do
    user = User.new("email@email.com")
    expect(user.class).to eq(User)
  end

  it 'saves @email as instance variable' do
    email = "email@email.com"
    user = User.new(email)
    expect(user.email).to eq(email)
  end

  it 'adds one to the @@count global variable' do
    count = User.count
    user = User.new("email@email.com")
    expect(User.count).to eq(count + 1)
  end
end