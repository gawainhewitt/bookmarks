require './lib/bookmarks'

describe Bookmarks do
  it 'is able to create an instance of the bookmark class' do
    expect(subject).to be_a_kind_of(Bookmarks)
  end 

  describe '#all' do
    it 'able to responds method all' do 
      expect(Bookmarks).to respond_to(:all)
    end 

    it 'returns a list of bookmarks as an array' do 
      expect(Bookmarks::all).to include("www.google.com")
    end
  end 
end 


   