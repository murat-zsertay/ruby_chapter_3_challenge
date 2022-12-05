


class PasswordManager2
  attr_accessor :services
  def initialize
    @services = []
  end
  def remove_item_from_hash(service)
    @services = @services.reject{|service_hash| service_hash["service"] == service}
  end
  def add_item_to_services

  end
  def select_hash_from_services(hash_item_name, hash_item)
    @services.select {|hash| hash[hash_item_name] == hash_item}.first
  end
  def service_hash_checker(hash_item_name,hash_item)
    # Returns true if the item given is unique
    @services.filter{|service_hash| service_hash[hash_item_name] == hash_item}.empty?
  end
  def add(service,password)
    service_unique = service_hash_checker("service",service)
    password_unique = service_hash_checker("password",password)
    if service_unique && password_unique
      @services << {"service" => service,"password" => password,"added_on" => DateTime.now}
    elsif service_unique == false
      "ERROR: Service names must be unique"
    elsif password_unique == false
      "ERROR: Passwords must be unique"
    end

  end
  def services
    @services.map { |service_hash| service_hash['service']}
  end
  def remove(service)
    remove_item_from_hash(service)
  end
  def update(service,password)
    password_unique = service_hash_checker("password",password)
    if password_unique == false
      "is not updated"
    elsif password_unique == true
      current_service = select_hash_from_services("service", service)
      remove_item_from_hash(service)
      @services << {"service" => service,"password" => password,"added_on" => current_service['added_on'],"updated_on" => DateTime.now }
    end
  end
  def password_for(service)
    select_hash_from_services("service", service)['password']
  end
  def sort_by(sort_option)
    @services.sort_by{|k| k[sort_option]}.map{|k| k["service"]}
  end
end

=begin
#Class Recipe
## this should create an instance of password manager
pwm = PasswordManager2.new

## this should allow me to add a password
pwm.add("Acebook", "password123")
pwm.add("MakersBnB", "superpassword123")

## this should return true or false whether a password is currently used
## takes a hash item name and hash item to be checked
pwm.service_hash_checker("service","Acebook")
pwm.service_hash_checker("password","password123")

## this should return a list of all services
pwm.services

## This should delete a service and its password
pwm.remove("Acebook")

## This should return a sorted list of all services depending on whether
`"service"` or `"added_on"` is passed as an arguement.
pwm.sort_by("added_on")
pwm.sort_by("service")

## This should return a password for the service passed into the method
pwm.password_for("Acebook")

## This should take a service name and new password and updates the password of that service
unless it is in use elsewhere
pwm.update("Acebook","superpassword123")
=end