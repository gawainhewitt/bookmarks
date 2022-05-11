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
    it 'responds to two arguments' do
      expect(Bookmarks).to respond_to(:add).with(2).arguments
    end
    it 'adds title and url' do 
      title = "luiza"
      url = "www.luiza.com"
      Bookmarks.add(url, title)
      variable = Bookmarks.all[0]
      expect(variable).to eq(title)
      expect(Bookmarks.all).to include(url)
    end
    
  end
end 


   