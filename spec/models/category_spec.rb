require 'rails_helper'

RSpec.describe Category, type: :model do
  subject do
    described_class.new(name: 'Foods',
                        icon: 'data:image/jpeg;base64')
  end

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
  it 'Icon attribute should be present' do
    subject.icon = nil
    expect(subject).to_not be_valid
  end
end
