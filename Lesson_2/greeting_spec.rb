require 'rspec'
require './greeting.rb'

RSpec.describe "Greeting" do
  it "#greeting_18+" do 
    allow_any_instance_of(Kernel).to receive(:gets).and_return('Roy','Kent',18)

    expect(greeting).to eq("Привет, Roy Kent. Самое время заняться делом!")
  end

  it "#greeting_18-" do 
    allow_any_instance_of(Kernel).to receive(:gets).and_return('Jamie','Tartt',10)

    expect(greeting).to eq("Привет, Jamie Tartt. Тебе меньше 18 лет, но начать учиться программировать никогда не рано")
  end
end