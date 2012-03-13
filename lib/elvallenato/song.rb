require 'open-uri'
require 'nokogiri'
module ElVallenato
  class Song

    def initialize(url)
      @url = url
      @content = get
      @doc = Nokogiri::HTML(@content)
    end

    def get
      open(@url,'r').read
    end

    def title
     @doc.search(".text_title").first.text
    end

    def body
     @doc.search(".text_std")[2].text.strip
    end

  end
end
