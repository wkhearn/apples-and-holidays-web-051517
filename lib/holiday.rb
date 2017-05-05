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
  holiday_hash[:winter].each do |holiday, value|
    value.push(supply)
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring].each do |holiday, value|
    value.push(supply)
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
#  puts "Winter:"
#  puts "  Christmas: Lights, Wreath"
#  puts "  New Years: Party Hats"
#  puts "Summer:"
#  puts "  Fourth Of July: Fireworks, BBQ"
#  puts "Fall:"
#  puts "  Thanksgiving: Turkey"
#  puts "Spring:"
#  puts "  Memorial Day: BBQ"
  holiday_hash.each do |season, data|
    puts season.to_s.capitalize << ":"
    data.each do |holiday, value|
      if value.size > 1
        puts "  " + holiday.to_s.split("_").map(&:capitalize).join(' ') << ": " + value.join(", ")
      elsif
        puts "  " + holiday.to_s.split("_").map(&:capitalize).join(' ') << ": " + value.join.split(" ").join(' ')
      end
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_seasons = []
  holiday_hash.each do |season, data|
    data.each do |holiday, value|
      if value.include?("BBQ")
        bbq_seasons << holiday
      end
    end
  end
  bbq_seasons
end
