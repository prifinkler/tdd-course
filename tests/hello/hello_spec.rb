require_relative 'hello'

RSpec.describe Hello do
  it "should return 'Hello World!" do
    greetings = Hello.say_hello
    expect(greetings).to eq("Hello World!")
  end
end
