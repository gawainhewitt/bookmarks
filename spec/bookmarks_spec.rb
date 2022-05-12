require './lib/bookmarks'

describe Bookmarks do
  describe '#all' do
    it 'able to responds method all' do 
      expect(Bookmarks).to respond_to(:all)
    end 

    it 'returns a list of bookmarks as an array' do 
      Bookmarks.add('http://www.makersacademy.com/', 'Makers')
      Bookmarks.add('http://www.google.com/', 'Google')
      
      bookmarks = Bookmarks.all
      
      expect(bookmarks[0].url).to include('http://www.makersacademy.com/')
      expect(bookmarks[1].url).to include('http://www.google.com/')
    end
  end 

  describe '#add' do
    it 'responds to two arguments' do
      expect(Bookmarks).to respond_to(:add).with(2).arguments
    end
    it 'adds title and url' do 
      title = "luiza"
      url = "www.luiza.com"
      Bookmarks.add(url, title)
      bookmark = Bookmarks.all[0]
      expect(bookmark.title).to eq(title)
      expect(bookmark.url).to include(url)
    end
    
  end
end 


   