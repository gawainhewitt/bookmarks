require './lib/bookmarks'

describe Bookmarks do
  describe '#all' do
    it 'able to responds method all' do 
      expect(Bookmarks).to respond_to(:all)
    end 

    it 'returns a list of bookmarks as an array' do 
      Bookmarks.add('http://www.makersacademy.com/')
      Bookmarks.add('http://www.google.com/')
      
      bookmarks = Bookmarks.all
      
      expect(bookmarks).to include('http://www.google.com/')
      expect(bookmarks).to include('http://www.makersacademy.com/')
    end
  end 

  describe '#add' do
    it 'adds the new bookmark' do
      bookmark = 'www.luiza.com'
      Bookmarks.add(bookmark)
      expect(Bookmarks.all).to include('www.luiza.com')
    end
  end
end 


   