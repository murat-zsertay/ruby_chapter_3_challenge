require_relative '../lib/1_arrays_and_hashes'
load "#{__dir__}/solution.x.rb" if File.file?("#{__dir__}/solution.x.rb")

RSpec.describe 'arrays and hashes' do
  describe 'fourth_element' do
    it 'given [1,2,3,4,5], returns 4' do
      expect(fourth_element([1,2,3,4,5])).to eq 4
    end

    it 'given [11,12,13,14,15], returns 14' do
      expect(fourth_element([11,12,13,14,15])).to eq 14
    end

    it 'given [11,12,13,14,15,16,17,18,19,20], returns 14' do
      expect(fourth_element([11,12,13,14,15,16,17,18,19,20])).to eq 14
    end
  end

  describe 'average' do
    it 'given [1,2,3,4,5] returns 3' do
      expect(average([1,2,3,4,5])).to eq 3
    end

    it 'given [1,1,1,1,1] returns 1' do
      expect(average([1,1,1,1,1])).to eq 1
    end

    it 'given [10,20] returns 15' do
      expect(average([10,20])).to eq 15
    end
  end

  describe 'lowest_squared' do
    describe 'takes an array of numbers and returns the lowest number, squared' do
      it 'given [2,3,4,5], returns 4' do
        expect(lowest_squared([2,3,4,5])).to eq 4
      end

      it 'given [5,6,7,8,9], returns 25' do
        expect(lowest_squared([5,6,7,8,9])).to eq 25
      end

      it 'given [10,20,30,40], returns 100' do
        expect(lowest_squared([10,20,30,40])).to eq 100
      end
    end
  end

  describe 'highest_squared' do
    describe 'takes an array of numbers and returns the highest number, squared' do
      it 'given [2,3,4,5], returns 25' do
        expect(highest_squared([2,3,4,5])).to eq 25
      end

      it 'given [5,6,7,8,9], returns 81' do
        expect(highest_squared([5,6,7,8,9])).to eq 81
      end

      it 'given [10,20,30,40], returns 1600' do
        expect(highest_squared([10,20,30,40])).to eq 1600
      end
    end
  end

  describe 'values_summed' do
    describe 'takes a hash where the values are numbers and returns the total of the values' do
      it "given {'one' => 1, 'two' => 2, 'three' => 3}, returns 6" do
        expect(values_summed({'one' => 1, 'two' => 2, 'three' => 3})).to eq 6
      end

      it "given {'one' => 1, 'two' => 2, 'three' => 3, 'four' => 4}, returns 10" do
        expect(values_summed({'one' => 1, 'two' => 2, 'three' => 3, 'four' => 4})).to eq 10
      end
    end
  end

  describe 'first_two_keys' do
    describe 'takes a hash and returns the first two keys' do
      it "given {'one' => 1, 'two' => 2, 'three' => 3}, returns ['one', 'two']" do
        expect(first_two_keys({'one' => 1, 'two' => 2, 'three' => 3})).to eq ['one', 'two']
      end

      it "given {'two' => 2, 'three' => 3}, returns ['two', 'three']" do
        expect(first_two_keys({'two' => 2, 'three' => 3})).to eq ['two', 'three']
      end
    end
  end

  describe 'first_two_values' do
    describe 'takes a hash and returns the first two values' do
      it "given {'one' => 1, 'two' => 2, 'three' => 3}, returns [1,2]" do
        expect(first_two_values({'one' => 1, 'two' => 2, 'three' => 3})).to eq [1,2]
      end

      it "given {'two' => 2, 'three' => 3}, returns [2,3]" do
        expect(first_two_values({'two' => 2, 'three' => 3})).to eq [2,3]
      end
    end
  end

  describe 'starts_with_a' do
    describe 'takes an array of strings and returns the elements starting with a' do
      it "given ['aardvark', 'apple', 'zebra', 'zinc'], returns ['aardvark', 'apple']" do
        expect(starts_with_a(
            ['aardvark', 'apple', 'zebra', 'zinc']
          )).to eq(
            ['aardvark', 'apple']
          )
      end

      it "given ['apple', 'zebra', 'zinc', 'apricot'], returns ['apple', 'apricot']" do
        expect(starts_with_a(
            ['apple', 'zebra', 'zinc', 'apricot']
          )).to eq(
            ['apple', 'apricot']
          )
      end
    end
  end

  describe 'starts_with_a_vowel' do
    describe 'takes an array of strings and returns the elements starting with a vowel' do
      it "given ['apple', 'pear', 'orange', 'egg', 'indigo', 'uncle'], returns ['apple', 'orange', 'egg', 'indigo', 'uncle']" do
        expect(starts_with_a_vowel(
            ['apple', 'pear', 'orange', 'egg', 'indigo', 'uncle']
          )).to eq(
            ['apple', 'orange', 'egg', 'indigo', 'uncle']
          )
      end

      it "given ['Pauli', 'Penrose', 'Planck'], returns []" do
        expect(starts_with_a_vowel(
          ['Pauli', 'Penrose', 'Planck']
          )).to eq(
            []
          )
      end
    end
  end

  describe 'reverse_each_element' do
    it "given ['one', 'two'], returns ['eno', 'owt']" do
      expect(reverse_each_element(
        ['one', 'two']
      )).to eq(
        ['eno', 'owt']
      )
    end

    it "given ['three', 'four'], returns ['eerht', 'ruof']" do
      expect(reverse_each_element(
        ['three', 'four']
      )).to eq(
        ['eerht', 'ruof']
      )
    end
  end

  describe 'sort_by_last_letter' do
    describe 'takes an array of strings and sorts the elements by their last letter' do
      it "given ['apple', 'pear', 'satsuma'], returns ['satsuma', 'apple', 'pear']" do
        expect(sort_by_last_letter(
          ['apple', 'pear', 'satsuma']
        )).to eq(
          ['satsuma', 'apple', 'pear']
        )
      end

      it "given ['rolex', 'soda', 'pollen'], returns ['soda', 'pollen', 'rolex']" do
        expect(sort_by_last_letter(
          ['rolex', 'soda', 'pollen']
        )).to eq(
          ['soda', 'pollen', 'rolex']
        )
      end
    end
  end

  describe 'greater_than_5' do
    describe 'takes an array of numbers and returns only those which are greater than 5' do
      it "given [1,2,3,4,5,6,7,8,9,10], returns [6,7,8,9,10]" do
        expect(greater_than_5(
          [1,2,3,4,5,6,7,8,9,10]
        )).to eq(
          [6,7,8,9,10]
        )
      end

      it "given [10,3,4,5,6,7,8,9,10], returns [10,6,7,8,9,10]" do
        expect(greater_than_5(
          [10,3,4,5,6,7,8,9,10]
        )).to eq(
          [10,6,7,8,9,10]
        )
      end

      it "given [3,4,1,2,5,1,2,4,3], returns []" do
        expect(greater_than_5(
          [3,4,1,2,5,1,2,4,3]
        )).to eq(
          []
        )
      end
    end
  end

  describe 'greater_than' do
    describe 'takes an array of numbers and a number - returns only those greater than the number provided' do
      it 'given [1,2,3,4,5] and 3, returns [4,5]' do
        expect(greater_than(
          [1,2,3,4,5], 3
        )).to eq(
          [4,5]
        )
      end

      it 'given [1,2,3,4,5] and 2, returns [3,4,5]' do
        expect(greater_than(
          [1,2,3,4,5], 2
        )).to eq(
          [3,4,5]
        )
      end

      it 'given [11,12,13,14,15] and 15, returns []' do
        expect(greater_than(
          [11,12,13,14,15], 15
        )).to eq(
          []
        )
      end
    end
  end

  describe 'less_than' do
    describe 'takes an array of numbers and a number - returns only those less than the number provided' do
      it 'given [1,2,3,4,5] and 3, returns [1,2]' do
        expect(less_than(
          [1,2,3,4,5], 3
        )).to eq(
          [1,2]
        )
      end

      it 'given [1,2,3,4,5] and 4, returns [1,2,3]' do
        expect(less_than(
          [1,2,3,4,5], 4
        )).to eq(
          [1,2,3]
        )
      end

      it 'given [11,12,13,14,15] and 11, returns []' do
        expect(less_than(
          [11,12,13,14,15], 11
        )).to eq(
          []
        )
      end
    end
  end

  describe 'words_shorter_than' do
    describe 'takes an array of strings and a number - returns only the strings that are shorter than the number provided' do
      it "given ['tree', 'rainbow', 'desk', 'computer'] and 5, returns ['tree', 'desk']" do 
        expect(words_shorter_than(
          ['tree', 'rainbow', 'desk', 'computer'], 5
        )).to eq(
          ['tree', 'desk']
        )
      end

      it "given ['tree', 'rainbow', 'desk', 'computer'] and 4, returns []" do 
        expect(words_shorter_than(
          ['tree', 'rainbow', 'desk', 'computer'], 4
        )).to eq(
          []
        )
      end

      it "given ['tree', 'rainbow', 'desk', 'computer'] and 10, returns ['tree', 'rainbow', 'desk', 'computer']" do 
        expect(words_shorter_than(
          ['tree', 'rainbow', 'desk', 'computer'], 10
        )).to eq(
          ['tree', 'rainbow', 'desk', 'computer']
        )
      end
    end
  end

  describe 'all_above?' do
    describe 'takes an array of numbers and a number - returns true if all numbers are greater than the number provided' do
      it 'given [2,3,4,5] and 1, returns true' do
        expect(all_above?(
          [2,3,4,5], 1
        )).to eq(
          true
        )
      end

      it 'given [20,30,40,50] and 19, returns true' do
        expect(all_above?(
          [20,30,40,50], 19
        )).to eq(
          true
        )
      end
    end

    describe 'takes an array of numbers and a number - returns false if any numbers are less than the number provided' do
      it 'given [2,3,4,5] and 5, returns false' do
        expect(all_above?(
          [2,3,4,5], 5
        )).to eq(
          false
        )
      end

      it 'given [2,3,4,5] and 3, returns false' do
        expect(all_above?(
          [2,3,4,5], 3
        )).to eq(
          false
        )
      end
    end
  end

  describe 'all_below?' do
    it 'takes an array of numbers and a number - returns true if all numbers are less than the number provided' do
      expect(all_below?(
        [1,2,3,4,5], 6
      )).to eq(
        true
      )
    end

    it 'takes an array of numbers and a number - returns false if any numbers are greater than the number provided' do
      expect(all_below?(
        [1,2,3,4,5], 5
      )).to eq(
        false
      )
    end
  end

  describe 'multiply_each_by' do
    describe 'takes an array of numbers and a number - multiplies each number in the array by the number provided' do
      it 'given [1,2,3,4,5] and 2, returns [2,4,6,8,10]' do
        expect(multiply_each_by(
          [1,2,3,4,5], 2
        )).to eq(
          [2,4,6,8,10]
        )
      end

      it 'given [10,20,30,40,50] and 4, returns [20,80,120,160,200]' do
        expect(multiply_each_by(
          [10,20,30,40,50], 4
        )).to eq(
          [40,80,120,160,200]
        )
      end
    end
  end

  describe 'where_value_below' do
    describe 'takes a hash where the values are numbers and a number - returns only the key-value pairs where the value is less than the number provided' do
      it "given {'chips' => 2.5, 'burger' => 10, 'slaw' => 2.0, 'salad' => 3.0} and 5, returns {'chips' => 2.5, 'slaw' => 2.0, 'salad' => 3.0}" do
        expect(where_value_below(
          {'chips' => 2.5, 'burger' => 10, 'slaw' => 2.0, 'salad' => 3.0}, 5
        )).to eq(
          {'chips' => 2.5, 'slaw' => 2.0, 'salad' => 3.0}
        )
      end

      it "given {'chips' => 2.5, 'burger' => 10, 'rice' => 2.0, 'salad' => 3.0} and 3, returns {'chips' => 2.5, 'rice' => 2.0}" do
        expect(where_value_below(
          {'chips' => 2.5, 'burger' => 10, 'rice' => 2.0, 'salad' => 3.0}, 3
        )).to eq(
          {'chips' => 2.5, 'rice' => 2.0}
        )
      end
    end
  end

  describe 'where_key_starts_with' do
    describe 'takes a hash where the keys are strings and a letter - returns only the key-value pairs whgere the key starts with the letter provided' do
      it "{'chips' => 2.5, 'burger' => 10, 'slaw' => 2.0, 'salad' => 3.0} and 's', returns {'slaw' => 2.0, 'salad' => 3.0}" do
        expect(where_key_starts_with(
          {'chips' => 2.5, 'burger' => 10, 'slaw' => 2.0, 'salad' => 3.0}, 's'
        )).to eq(
          {'slaw' => 2.0, 'salad' => 3.0}
        )
      end

      it "{'chips' => 2.5, 'burger' => 10, 'rice' => 2.0, 'salad' => 3.0} and 'r', returns {'rice' => 2.0}" do
        expect(where_key_starts_with(
          {'chips' => 2.5, 'burger' => 10, 'rice' => 2.0, 'salad' => 3.0}, 'r'
        )).to eq(
          {'rice' => 2.0}
        )
      end
    end
  end

  describe 'add_key_value_pair' do
    describe 'takes a hash, a key and a value - returns a hash with a new key-value pair' do
      it "given {'chips' => 2.5, 'burger' => 10} and 'beans', 2.0, returns {'chips' => 2.5, 'burger' => 10, 'beans' => 2.0}" do
        expect(add_key_value_pair(
          {'chips' => 2.5, 'burger' => 10}, 'beans', 2.0
        )).to eq(
          {'chips' => 2.5, 'burger' => 10, 'beans' => 2.0}
        )
      end
    end
  end
  describe 'sorts_by_key' do
    describe 'takes a hash and sorts it by the key' do
      it 'given {"will"=>12, "simo"=
      >78, "roi"=>56, "eddie"=>98, "neil"=>43}' do
      expect(sort_by_key({"will"=>12, "simo"=>78, "roi"=>56, "eddie"=>98, "neil"=>43})).to eq(
          {"eddie"=>98,
            "neil"=>43,
            "roi"=>56,
            "simo"=>78,
            "will"=>12} 
        )
      end
    end
  end
  describe 'sorts_by_value' do
    describe 'takes a hash and sorts it by the value' do
      it 'given {"will"=>12, "simo"=
      >78, "roi"=>56, "eddie"=>98, "neil"=>43}' do
      expect(sort_by_value({"will"=>12, "simo"=>78, "roi"=>56, "eddie"=>98, "neil"=>43})).to eq(
          {"eddie"=>98,
            "simo"=>78,
            "roi"=>56,
            "neil"=>43,
            "will"=>12} 
        )
      end
    end
  end
end
