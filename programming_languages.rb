require "pry"
def reformat_languages(languages)
   new_hash = {}
  languages.each do |style,language_hash|
# binding.pry
# end 
# # # :oo => {}   => {:ruby=>{
  language_hash.each do |language, attribute_hash|
    #:type => {}
    attribute_hash.each do |type, str|
      #interpreted or complied
      if new_hash[language].nil?
        new_hash[language] = {}
      end 
        new_hash[language][:style] ||= []  #only assign to values that are not already been assign
        new_hash[language][:style] << style
      if new_hash[language][:type].nil?
        new_hash[language] = str
      end
    end 
  end 
end 
  retrun new_hash
end 



# def reformat_languages(languages)
  
#   language_attributes = {}

#   languages.each do |oo_or_functional, language_hash|
#     #:oo, {:ruby => {...}}
#     language_hash.each do |language, attribute_hash|
#       #:ruby, {:type => "interpreted"}
#       attribute_hash.each do |attribute, str_value|
#         #:type, "interpreted"
#         if language_attributes[language].nil?
#           #if language :ruby doesn't exist in new hash
#           language_attributes[language] = {}  #initiate a new hash for the value of :ruby
#         end
#         # this would cause us problems if we had more than one attribute we're iterating over

#         language_attributes[language][:style] ||= []  # create a :style key within that hash and set it equal to an empty array
#         language_attributes[language][:style] << oo_or_functional  #added oo key from first level of languages hash to this key                                
#         if language_attributes[language][attribute].nil?
#           #if :ruby language key doesn't have a :type key nested within it
#           language_attributes[language][attribute] = str_value  #set this :type key to equal the str "interpreted"
#         end
#       end
#     end
#   end
#   language_attributes
# end


