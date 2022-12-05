require_relative '../lib/2_classes'
load "#{__dir__}/solution.x.rb" if File.file?("#{__dir__}/solution.x.rb")

RSpec.describe 'classes' do
  describe 'Greeter' do
    describe 'hello' do
      it 'given "Jo", returns "Hello, Jo"' do
        greeter = Greeter.new
        expect(greeter.hello('Jo')).to eq 'Hello, Jo'
      end

      it 'given "Tina", returns "Hello, Tina"' do
        greeter = Greeter.new
        expect(greeter.hello('Tina')).to eq 'Hello, Tina'
      end
    end

    describe 'goodbye' do
      it 'given, "Jo" returns "Goodbye, Jo"' do
        greeter = Greeter.new
        expect(greeter.goodbye('Jo')).to eq 'Goodbye, Jo'
      end

      it 'given, "Tina" returns "Goodbye, Tina"' do
        greeter = Greeter.new
        expect(greeter.goodbye('Tina')).to eq 'Goodbye, Tina'
      end
    end

    describe 'goodnight' do
      it 'given "Jo" returns "Goodnight, Jo"' do
        greeter = Greeter.new
        expect(greeter.goodnight('Jo')).to eq 'Goodnight, Jo'
      end

      it 'given "Tina" returns "Goodnight, Tina"' do
        greeter = Greeter.new
        expect(greeter.goodnight('Tina')).to eq 'Goodnight, Tina'
      end
    end

    describe 'goodmorning' do
      it 'given "Jo" returns "Goodmorning, Jo"' do
        greeter = Greeter.new
        expect(greeter.goodmorning('Jo')).to eq 'Goodmorning, Jo'
      end
      
      it 'given "Tina" returns "Goodmorning, Tina"' do
        greeter = Greeter.new
        expect(greeter.goodmorning('Tina')).to eq 'Goodmorning, Tina'
      end
    end
  end

  describe 'Basket' do
    subject { Basket.new }

    describe 'add' do
      it 'used three times, adds three items to the list' do
        subject.add('eggs')
        subject.add('milk')
        subject.add('bread')
        expect(subject.items).to eq ['eggs', 'milk', 'bread']
      end

      it 'used two times, adds two items to the list' do
        subject.add('eggs')
        subject.add('milk')
        expect(subject.items).to eq ['eggs', 'milk']
      end
    end
  end
  
  describe 'Basket2' do
    subject { Basket2.new }

    describe 'add' do
      it 'used three times, adds three items to the list' do
        subject.add('eggs', 12)
        subject.add('milk', 1)
        subject.add('bread', 1)
        expect(subject.contents).to eq [
          {"item" => 'eggs', "amount" => 12},
          {"item" => 'milk', "amount" => 1},
          {"item" => 'bread', "amount" => 1},
        ]
      end
      
      it 'used two times, adds two items to the list' do
        subject.add('eggs', 6)
        subject.add('milk', 2)
        expect(subject.contents).to eq [
          {"item" => 'eggs', "amount" => 6},
          {"item" => 'milk', "amount" => 2},
        ]
      end
    end
  end
  
  describe 'Calculator' do
    describe 'add' do
      it 'given 5 and 5, returns 10' do
        calculator = Calculator.new
        expect(calculator.add(5,5)).to eq 10
      end

      it 'given 1 and 1, returns 2' do
        calculator = Calculator.new
        expect(calculator.add(1,1)).to eq 2
      end
    end

    describe 'multiply' do
      it 'given 5 and 5, returns 25' do
        calculator = Calculator.new
        expect(calculator.multiply(5,5)).to eq 25
      end

      it 'given 2 and 2, returns 4' do
        calculator = Calculator.new
        expect(calculator.multiply(2,2)).to eq 4
      end
    end

    describe 'subtract' do
      it 'given 5 and 4, returns 1' do
        calculator = Calculator.new
        expect(calculator.subtract(5,4)).to eq 1
      end

      it 'given 5 and 5, returns 0' do
        calculator = Calculator.new
        expect(calculator.subtract(5,5)).to eq 0
      end

      it 'given 4 and 5, returns -1' do
        calculator = Calculator.new
        expect(calculator.subtract(4,5)).to eq -1
      end
    end

    describe 'divide' do
      it 'given 10 and 5, returns 2' do
        calculator = Calculator.new
        expect(calculator.divide(10,5)).to eq 2
      end

      it 'given 10 and 2, returns 5' do
        calculator = Calculator.new
        expect(calculator.divide(10,2)).to eq 5
      end
    end  
    
    describe 'history' do
      it 'when used to add then multiply, returns an array of hashes with these events' do
        calculator = Calculator.new
        calculator.add(5, 6)
        calculator.multiply(3, 8)
        expect(calculator.history).to eq [
          {"operation" => "add", "arguments" => [5, 6], "result" => 11},
          {"operation" => "multiply", "arguments" => [3, 8], "result" => 24}
        ]
      end
      it 'when used to subtract then divide, returns an array of hashes with these events' do
        calculator = Calculator.new
        calculator.subtract(20, 3)
        calculator.divide(28, 4)
        expect(calculator.history).to eq [
          {"operation" => "subtract", "arguments" => [20, 3], "result" => 17},
          {"operation" => "divide", "arguments" => [28, 4], "result" => 7}
        ]
      end
    end    
  end


  describe 'Cohort' do

    subject { Cohort.new }

    describe 'add_student' do
      it 'called three times, adds three students' do

        subject.add_student({'name' => 'Gene', 'employer' => 'Atlantis Digital'})
        subject.add_student({'name' => 'Petra', 'employer' => 'Atlantis Digital'})
        subject.add_student({'name' => 'Jaspal', 'employer' => 'Mercia Digital'})

        expect(subject.students).to eq [
          {'name' => 'Gene', 'employer' => 'Atlantis Digital'},
          {'name' => 'Petra', 'employer' => 'Atlantis Digital'},
          {'name' => 'Jaspal', 'employer' => 'Mercia Digital'}
        ]
      end

      it 'called two times, adds two students' do

        subject.add_student({'name' => 'Gene', 'employer' => 'Atlantis Digital'})
        subject.add_student({'name' => 'Petra', 'employer' => 'Atlantis Digital'})

        expect(subject.students).to eq [
          {'name' => 'Gene', 'employer' => 'Atlantis Digital'},
          {'name' => 'Petra', 'employer' => 'Atlantis Digital'}
        ]
      end
    end

    describe 'employed_by' do
      
      it 'given "Atlantis Digtal", returns their employees' do
        subject.add_student({'name' => 'Gene', 'employer' => 'Atlantis Digital'})
        subject.add_student({'name' => 'Petra', 'employer' => 'Atlantis Digital'})
        subject.add_student({'name' => 'Jaspal', 'employer' => 'Mercia Digital'})

        expect(subject.employed_by('Atlantis Digital')).to eq [
          {'name' => 'Gene', 'employer' => 'Atlantis Digital'},
          {'name' => 'Petra', 'employer' => 'Atlantis Digital'}
        ]
      end

      it 'given "Mercia Digtal", returns their employees' do
        subject.add_student({'name' => 'Gene', 'employer' => 'Atlantis Digital'})
        subject.add_student({'name' => 'Petra', 'employer' => 'Atlantis Digital'})
        subject.add_student({'name' => 'Jaspal', 'employer' => 'Mercia Digital'})

        expect(subject.employed_by('Mercia Digital')).to eq [
          {'name' => 'Jaspal', 'employer' => 'Mercia Digital'}
        ]
      end
    end
  end

  describe 'Person' do
    context 'when person is Jo' do
      subject {
        Person.new(
          {
            'name' => 'Jo',
            'pets' => [
              {'name' => 'Paulo', 'animal' => 'cat'},
              {'name' => 'Edith', 'animal' => 'dog'},
              {'name' => 'Pawel', 'animal' => 'goldfish'}
            ],
            'addresses' => [
              {'name' => 'work', 'building' => '12', 'street' => 'Whitehall'},
              {'name' => 'home', 'building' => '1', 'street' => 'North Lane'}
            ]
          }
        )
      }

      describe 'work_address' do
        it 'returns work_address, nicely formatted' do
          expect(subject.work_address)
            .to eq '12 Whitehall'
        end
      end

      describe 'home_address' do
        it 'returns home_address, nicely formatted' do
          expect(subject.home_address)
            .to eq '1 North Lane'
        end
      end

      describe 'pets' do
        it 'returns pets, nicely formatted' do
          expect(subject.pets)
            .to eq "Jo has 3 pets\n- a cat called Paulo\n- a dog called Edith\n- a goldfish called Pawel\n"
        end
      end
    end

    context 'when person is Migel' do
      subject {
        Person.new(
          {
            'name' => 'Migel',
            'pets' => [
              {'name' => 'Pedro', 'animal' => 'rat'},
              {'name' => 'Margarida', 'animal' => 'rabbit'},
              {'name' => 'Cesar', 'animal' => 'goldfish'}
            ],
            'addresses' => [
              {'name' => 'work', 'building' => '52', 'street' => 'Commercial St'},
              {'name' => 'home', 'building' => '99', 'street' => 'Brixton Road'}
            ]
          }
        )
      }

      describe 'work_address' do
        it 'returns work_address, nicely formatted' do
          expect(subject.work_address)
            .to eq '52 Commercial St'
        end
      end

      describe 'home_address' do
        it 'returns home_address, nicely formatted' do
          expect(subject.home_address)
            .to eq '99 Brixton Road'
        end
      end

      describe 'pets' do
        it 'returns pets, nicely formatted' do
          expect(subject.pets)
            .to eq "Migel has 3 pets\n- a rat called Pedro\n- a rabbit called Margarida\n- a goldfish called Cesar\n"
        end
      end
    end
  end
end
