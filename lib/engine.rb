class Engine
  attr_reader :date, :offset
  def initialize
    @date = Time.new
    @offset = offset
    # @key = ARGV[0]
  end

  def five_rand
    num = [*0..9]
    return num.sample(5)
  end

  def key_gen
    @five_num = five_rand
    a = @five_num[0..1].join("")
    b = @five_num[1..2].join("")
    c = @five_num[2..3].join("")
    d = @five_num[3..4].join("")
    return final_key_gen = [a,b,c,d]
    # puts "#{a}, #{b}"
  end

  def date_offset
    formatted_date = @date.strftime("%d%m%y").to_i
    squared_date = (formatted_date ** 2).to_s
    return squared_date[-4..-1].to_s
  end

  def date_assignment
    @offset = date_offset
    a = @offset[0]
    b = @offset[1]
    c = @offset[2]
    d = @offset[3]
    return final_offset = [a,b,c,d]
    # puts "#{a}, #{b}"
  end

  def ultimate_offset
    gen = key_gen
    off = date_assignment
    comb_array = gen.zip(off)
    a = comb_array[0]
    b = comb_array[1]
    c = comb_array[2]
    d = comb_array[3]
    return step_one = [a,b,c,d]
  end

  def cryptor
    # puts "printing ultimate_offset"
    crypt = ultimate_offset
    a1 = crypt[0]
    b1 = crypt[1]
    c1 = crypt[2]
    d1 = crypt[3]
    # puts "this is crypt a1 #{a1}"

    a = a1[0].to_i + a1[1].to_i
    b = b1[0].to_i + b1[1].to_i
    c = c1[0].to_i + c1[1].to_i
    d = d1[0].to_i + d1[1].to_i

    return ultra_cryptor = [a,b,c,d]
    # puts "this is the #{ultra_cryptor}"
    #
    #
    # print "this is the sum for a #{a}, this is b #{b}"
  end

end

# engine = Engine.new
# # # puts engine.key_gen
# # puts engine.date_offset
# # puts engine.date_assignment
# # puts engine.ultimate_offset
# engine.cryptor
