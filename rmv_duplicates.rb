#Given an array of numbers, remove the duplicates such that each unique element appears only once.
#Input: numbers = [0,0,1,1,1,2,2,3,3,4]
#Expected output: [0,1,2,3,4, nil, nil, nil, nil, nil]

def remove_duplicates_numbers(arr)
    uniquearr = []
    duplicatearr = []
  
    arr.each do |element|
      
      if uniquearr.include?(element)
        duplicatearr << nil
      else
        uniquearr << element
      end
    end

    uniquearr.concat(duplicatearr)
    print uniquearr
  end
  arr = [0,0,1,1,1,2,2,3,3,4]
  remove_duplicates_numbers(arr)
