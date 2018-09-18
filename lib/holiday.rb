require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, decoration|
      if season == :winter 
        decoration.push(supply)
      end
    end
  end 
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, decoration|
      if season == :spring 
        decoration.push(supply)
      end
    end
  end 
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array 
  # remember to return the updated hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_supplies = holiday_hash[:winter].values.flatten
  return holiday_supplies 
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday.each do |holiday, decorations|
      holiday.gsub("_", " ")
      decorations_two = decorations.join(", ")
      puts "  #{holiday.capitalize}: #{decorations_two}"
    end
  end 
end
myString.gsub("PHP", "Ruby")
=> "Welcome to Ruby Essentials!"

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_holidays = []
    holiday_hash.each do |season, holiday|
      holiday.each do |holiday, decorations|
        decorations.each do |decoration|
          if decoration == "BBQ"
            bbq_holidays << holiday
          end 
        end 
      end 
    end
    bbq_holidays 
end







