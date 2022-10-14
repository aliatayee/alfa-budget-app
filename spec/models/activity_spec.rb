require 'rails_helper'

RSpec.describe Activity, type: :model do
  subject { described_class.new(name: 'Food', amount: 50) }

  it 'Name attribute should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  it 'name should not exceed 250 characters' do
    subject.name = "Lorem Ipsum is simply dummy text of the printing and typesetting industry.
             Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer
             took a galley of type and scrambled it to make a type specimen book.
              It has survived not only five centuries"
    expect(subject).to_not be_valid
  end
  it 'Amount attribute should be present' do
    subject.amount = nil
    expect(subject).to_not be_valid
  end
  it 'Amount attribute should be Positive' do
    subject.amount = -4
    expect(subject).to_not be_valid
  end
  it 'Amount attribute should be numeric' do
    subject.amount = 'number'
    expect(subject).to_not be_valid
  end
end
