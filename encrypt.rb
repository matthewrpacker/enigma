require_relative 'lib/encryptor.rb'

input_filename = ARGV[0]
output_filename = ARGV[1]
puts "input_file: #{input_filename}"
puts "output_file: #{output_filename}"
message = File.read input_filename
message.chomp!
puts "message: #{message}"
encrypt = Encryptor.new(message)
encrypted_mssg = encrypt.encrypted
puts "encrypted message: #{encrypted_mssg}"
output_file_handle = File.new(output_filename, "w")
output_file_handle << encrypted_mssg + "\n"
output_file_handle.close
