require 'rspec'
require './foobar.rb'

RSpec.describe "Foobar" do
  it "#foobar_with_first_20" do 
    allow_any_instance_of(Kernel).to receive(:gets).and_return(20,11)

    expect(foobar).to eq("Второе число: 11")
  end

  it "#foobar_with_second_20" do 
    allow_any_instance_of(Kernel).to receive(:gets).and_return(22,20)

    expect(foobar).to eq("Второе число: 22")
  end

  it "#foobar_without_20" do 
    allow_any_instance_of(Kernel).to receive(:gets).and_return(11,22)

    expect(foobar).to eq("Сумма чисел: 33")
  end
end