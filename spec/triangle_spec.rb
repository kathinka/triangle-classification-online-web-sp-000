describe 'Triangle' do

  it 'knows that equilateral triangles have equal sides' do
    expect(Triangle.new(2, 2, 2).kind).to eq(:equilateral)
  end

end
