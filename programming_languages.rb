require "pry"
def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |style,language_hash| # :oo => {} 
# binding.pry
  language_hash.each do |language, attribute_hash|  #:ruby => {}
    attribute_hash.each do |type, str| #:type => "complied"
      if new_hash[language].nil?
          new_hash[language] = {}
      end 
        new_hash[language][:style] ||= []  #only assign to values that are not already been assign
        new_hash[language][:style] << style
      if new_hash[language][type].nil?
        new_hash[language][type] = str
      end
    end 
  end 
end 
  new_hash
end 


