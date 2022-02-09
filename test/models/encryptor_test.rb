require "test_helper"

class EncryptorTest < ActiveSupport::TestCase
  test "encrypts message" do 
    encrypted = Encryptor.encrypt("hello")
    refute_equal "hello", encrypted
  end


  test "dencrypts message" do 
    decrypted = Encryptor.decrypt(Encryptor.encrypt("hello"))
    assert_equal "hello", decrypted
  end

  # test "raise error for invalid encrypetd messages" do 
  #   assert_raises(Encryptor::InvalidEncryptedMessage) do
  #     Encryptor.decrypt("foo")
  #   end
  # end

  test "returns nil for invalid decryption" do
    assert_nil Encryptor.decrypt("foo")
  end
end