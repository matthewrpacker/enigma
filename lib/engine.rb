class Engine
  attr_reader :date, :offset
  def initialize
    @date = Time.new
  end

  def five_rand
    num = [*0..9]
    num.sample(5)
  end

  def five_num
    num = [5,4,3,2,1]
  end

  def key_generator
    a = five_num[0..1].join("")
    b = five_num[1..2].join("")
    c = five_num[2..3].join("")
    d = five_num[3..4].join("")
    return final_key_generator = [a,b,c,d]
  end

  def date_offset
    formatted_date = @date.strftime("%d%m%y").to_i
    squared_date = (formatted_date ** 2).to_s
    return squared_date[-4..-1].to_s
  end

  def date_assignment
    a = date_offset[0]
    b = date_offset[1]
    c = date_offset[2]
    d = date_offset[3]
    return [a,b,c,d]
  end

  def grouped_offset
    comb_array = key_generator.zip(date_assignment)
    a = comb_array[0]
    b = comb_array[1]
    c = comb_array[2]
    d = comb_array[3]
    return first_step = [a,b,c,d]
  end

  def total_offset
    crypt = grouped_offset
    a1 = crypt[0]
    b1 = crypt[1]
    c1 = crypt[2]
    d1 = crypt[3]
    a = a1[0].to_i + a1[1].to_i
    b = b1[0].to_i + b1[1].to_i
    c = c1[0].to_i + c1[1].to_i
    d = d1[0].to_i + d1[1].to_i
    return ultra_cryptor = [a,b,c,d]
  end

end
