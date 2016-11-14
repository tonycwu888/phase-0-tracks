require_relative 'solo_game_6_6_spec'

describe WordGuessingGame do
  let(:game) { WordGuessingGame.new() }

  it "check and see if the chances are adding" do
    expect(game.chances(5)).to eq 5
  end
end
