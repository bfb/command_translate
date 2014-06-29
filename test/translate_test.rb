require File.expand_path('test/helper')

describe Translation do
  it "should tranlsate a simple word" do
    Translation.new("beach", "en", "es").translation.must_equal "playa"
  end

  it "should translate a simple phrase" do
    Translation.new("my car is more fast than yours", "en", "es").translation.must_equal "mi coche es más rápido que su"
  end

  it "should translate more than one phrase" do
    Translation.new("You can translate more than one phrase. It is an example.", "en", "pt-br").translation.must_equal "Você pode traduzir mais do que uma frase. É um exemplo ."
  end
end
