# your code goes here
def begins_with_r(arg)
  arg.all? do |ind_args|
    ind_args.start_with?("r")
  end
end

def contain_a(arg2)
  arg2.select do |ind_args2|
    ind_args2.include?("a")
  end
end

def first_wa(arg3)
  arg3.find do |ind_args3|
    ind_args3.match(/wa/)
  end
end

def remove_non_strings(arg4)
  arg4.delete_if do |ind_args4|
    !(ind_args4.is_a? String)
  end
end

def count_elements(arg5)
  arg5.each do |ind_args5|
    ind_args5[:count] = 0
    ia5 = ind_args5[:name]
    arg5.each do |newia5|
      if newia5[:name] == ia5
        ind_args5[:count] += 1
      end
    end
  end.uniq
end 

def merge_data(keys, data)
  keys.each do |key|
    data.each do |dat|
      key.merge!(dat[key[:first_name]])
    end
  end
end

def find_cool(cool)
  cool.select do |coo|
    if coo.has_value?("cool")
      coo
    end
  end 
end

def organize_schools(schools)
  school_listing = {}
    schools.each do |school, locations|
      locations.each do |loc_key, loc_val|
        if school_listing[loc_val] == nil
          school_listing[loc_val] = [school]
        else
          school_listing[loc_val] << school
      end
    end
  end
    school_listing
end