class CalculationsController < ApplicationController

  def word_count
    @text = params[:user_text]
    @special_word = params[:user_word]

    # ================================================================================
    # Your code goes below.
    # The text the user input is in the string @text.
    # The special word the user input is in the string @special_word.
    # ================================================================================


    @character_count_with_spaces = @text.length







    def without_spaces string
      total=string.length
      space_count=0
      index=0

      while index<total
        if string[index]==" "
          space_count=space_count+1
      else
      end
      index=index+1
  end

  total=total -space_count

end

@character_count_without_spaces = without_spaces(@text)

@word_count = "Replace this string with your answer."

@occurrences = "Replace this string with your answer."
end

def loan_payment
    @apr = params[:annual_percentage_rate].to_f
    @years = params[:number_of_years]
    @principal = params[:principal_value].to_f

    # ================================================================================
    # Your code goes below.
    # The annual percentage rate the user input is in the decimal @apr.
    # The number of years the user input is in the integer @years.
    # The principal value the user input is in the decimal @principal.
    # ================================================================================

    @monthly_payment = (@apr/100/12*@principal)/(1-(1+@apr/100/12)**(-12*@years))


end

def time_between
    @starting = Chronic.parse(params[:starting_time])
    @ending = Chronic.parse(params[:ending_time])

    # ================================================================================
    # Your code goes below.
    # The start time is in the Time @starting.
    # The end time is in the Time @ending.
    # Note: Ruby stores Times in terms of seconds since Jan 1, 1970.
    #   So if you subtract one time from another, you will get an integer
    #   number of seconds as a result.
    # ================================================================================

    @seconds =  @ending - @starting
    @minutes = (@ending - @starting)/60
    @hours = (@ending - @starting)/60/60
    @days = (@ending - @starting)/60/60/24
    @weeks = (@ending- @starting)/60/60/24/7
    @years = (@ending - @starting)/60/60/24/365
end

def descriptive_statistics
    @numbers = params[:list_of_numbers].gsub(',', '').split.map(&:to_f)

    # ================================================================================
    # Your code goes below.
    # The numbers the user input are in the array @numbers.
    # ================================================================================

    @sorted_numbers = @numbers.sort

    @count = @numbers.length

    @minimum = @numbers.min

    @maximum = @numbers.max

    @range = @numbers.max-@numbers.min


    def median(list_of_numbers)
       if @count%2.0 == 0
        x=(@count/2.0-1)
        y=(@count/2.0)
        med=(list_of_numbers[x]+list_of_numbers[y])/2.0
    else
       z=@count/2.0
       med=list_of_numbers[z]
   end
   return med
end

@median =median(@numbers)

def sum(list_of_numbers)
  running_total = 0
  list_of_numbers.each do |number|
    running_total = running_total + number
end

return running_total
end

@sum =sum(@numbers)

@mean = @sum/@count


def variance(list_of_numbers)
 total_var=0
 var2=0
 list_of_numbers.each do |var|

     var2=(var-@mean)**2
     total_var+=var2
 end
 total_var= total_var/@count
 return total_var
end

@variance = variance(@numbers)
@standard_deviation =Math.sqrt(@variance)


def variance(list_of_numbers)
 total_var=0
 list_of_numbers.each do |var|
     var2=(var-@mean)**2
     total_var+=var2
 end
 total_var= total_var/@count
 return total_var
end

@mode = "Replace this string with your answer."
end
end
