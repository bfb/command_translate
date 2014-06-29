# encoding: UTF-8

class Translation
  attr_accessor :text, :from, :to, :translation

  def initialize(text, from, to)
    @text = text
    @from = from
    @to = to
    @translation = translate.squeeze(" ")
  end

  def translate
    encoded_url = URI.encode("http://translate.google.com.br/translate_a/t?client=t&text=#{text}&hl=#{@to}&sl=#{@from}&ie=UTF-8&oe=UTF-8")
    response = Net::HTTP.get(URI(encoded_url))

    # use JSON parser to avoid to use eval
    translations = JSON.parse(response.squeeze(","))

    if translations[0].size > 1
      translations[0].collect {|x| x[0] }.join(" ")
    else
      translations[1][0][1].nil? ? translations[0][0][0] : translations[1][0][1].join(", ")
    end
  end
end
