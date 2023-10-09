require './caesar_cipher.rb'

describe Encryption do 
  describe "#caesar_cipher" do
    it "takes a string and returns new string" do 
      encrypt = Encryption.new
      expect(encrypt.caesar_cipher('abc', 1)).equal?('abc')
    end

    it "shifts lowercase letters by correct amount" do
      encrypt = Encryption.new
      expect(encrypt.caesar_cipher('abc', 1)) == 'bcd'
    end

    it "shifts uppercase letters by correct amount" do
      encrypt = Encryption.new
      expect(encrypt.caesar_cipher('ABC', 1)) == 'BCD'
    end

    it "keeps non alphabetical the same" do
      encrypt = Encryption.new
      expect(encrypt.caesar_cipher('!@#$%^ &*_-+.', 1)) == '!@#$%^ &*_-+.'
    end

    it "loops the end of alphabet" do
      encrypt = Encryption.new
      expect(encrypt.caesar_cipher('XYZ', 3)) == 'ABC'
    end

  end
end