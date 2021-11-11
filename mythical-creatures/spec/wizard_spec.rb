require 'rspec'
require './lib/wizard'

RSpec.describe Wizard do
  it 'has a name' do
    wizard = Wizard.new('Eric')
    expect(wizard.name).to eq('Eric')
  end

  xit 'has a different name' do
    wizard = Wizard.new('Alex')
    expect(wizard.name).to eq('Alex')
  end

  xit 'is bearded by default' do
    wizard = Wizard.new('Ben')
    expect(wizard.bearded?).to be true
  end

  xit 'is not always bearded' do
    wizard = Wizard.new('Valerie', bearded: false)
    expect(wizard.bearded?).to be false
  end

  xit 'has root powers' do
    wizard = Wizard.new('Stella', bearded: false)
    expect(wizard.incantation('chown ~/bin')).to eq('sudo chown ~/bin')
  end

  xit 'has many root powers' do
    wizard = Wizard.new('Sal', bearded: true)
    expect(wizard.incantation('rm -rf /home/mirandax')).to eq('sudo rm -rf /home/mirandax')
  end

  xit 'starts rested' do
    # create wizard
    # .rested? returns true
  end

  xit 'can cast spells' do
    # create wizard
    # .cast returns "MAGIC MISSILE!"
  end

  xit 'gets tired after casting three spells' do
    # create wizard
    # casts spell twice
    # check if wizard is rested
    # casts spell
    # check wizard is not rested
  end
end
