class Checker
   attr_reader :number
               :valid

  def initialize(number)
    @number = number
    @valid  = false
    validation
  end

  def validation
    str_ary = i_to_s_array(number)
    puts str_ary.inspect
    man_ary = manipulation(str_ary)
    puts man_ary.inspect
    test = sum_integers(man_ary)
    puts test
    check_validity(test)
    message
  end


  def manipulation(in_nums)
    decrementer = in_nums.count
    every_other = decrementer/2
    (every_other).times do
    if in_nums.count.odd?
      every_other -= 1
    end
    current_digit = in_nums[every_other - 2].to_i * 2
    # else
    #   current_digit = in_nums[every_other - 1].to_i * 2
    # end
      if current_digit > 9
        in_nums[every_other - 2] = (ones(current_digit) + tens(current_digit)).to_s
      else
        in_nums[every_other - 2] = current_digit.to_s
      end
      every_other -= 2
    end
    in_nums
  end

  def tens(num)
    1
  end

  def ones(num)
    num % 10
  end

  def digit_count(array_in)
    array_in.count
  end

  def sum_integers(input_set)
    tester_total = 0
    input_set.each do |input|
      tester_total += input.to_i
    end
    tester_total
  end

  def check_validity(tester)
    if tester % 10 == 0
      @valid = true
    end
  end

  def message
    if @valid == true
      puts "VALID ENTRY!"
    else
      puts "INVALID ENTRY!"
    end
  end

  def i_to_s_array(tobe_split)
    the_nums = []
    num_str = tobe_split.to_s
    iter = num_str.length
    iter.times do |index|
      the_nums[index] = num_str[index]
    end
    the_nums
  end
end
