# encoding: ISO-8859-1
require 'elvallenato/song'

module ElVallenato
  describe Song do
    before do
      @s = Song.new('http://www.elvallenato.com/letras/letras/15419/Naci%C3%B3%20Mi%20Poesia-Jorge%20O%C3%B1ate-Fernando%20Dangond%20.htm')
      @s.stub!(:get).and_return(File.read(File.join(File.dirname(__FILE__), "..", "assets", "nacio_mi_poesia.html"), :encoding => "ISO-8859-1"))
    end
    it "has a title" do
      @s.title.should == "Nació Mi Poesia".force_encoding("UTF-8")
    end

    it "has a body" do
      @s.body.size.should == 1339
    end

    xit "has a singer" do
      @s.singer.should == "Jorge"
    end
  end
end
