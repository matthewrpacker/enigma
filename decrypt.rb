require_relative 'lib/decryptor'

input_filename = ARGV[0]
output_filename = ARGV[1]
puts "input_file: #{input_filename}"
puts "output_file: #{output_filename}"
encrypted_mssg = File.read input_filename
encrypted_mssg.chomp!
puts "encrypted message: #{encrypted_mssg}."
decrypt = Decryptor.new(encrypted_mssg)
decrypted_mssg = decrypt.decrypted
puts "message: #{decrypted_mssg}"
output_file_handle = File.new(output_filename, "w")
output_file_handle << decrypted_mssg + "\n"
output_file_handle.close
