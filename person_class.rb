class Person
  attr_accessor :first_name, :last_name, :email, :mobile_phone, :work_phone, :linkedin, :website
  attr_reader :date_created
  DEFAULT_OPTIONS = {
    email: "",
    mobile_phone: "",
    work_phone: "",
    linkedin: "",
    website: "",
    date_created: Time.now
  }
  def initialize(options = {})
    if !options[:first_name] || !options[:last_name]
      begin
        raise ArgumentError, "First and Last Name are Required."
      rescue
        puts "First and Last Name are Required."
      end
    else
      options = DEFAULT_OPTIONS.merge(options)
      @first_name = options[:first_name]
      @last_name = options[:last_name]
      @email = options[:email]
      @mobile_phone = options[:mobile_phone]
      @work_phone = options[:work_phone]
      @linkedin = options[:linkedin]
      @website = options[:website]
      @date_created = options[:date_created]
    end
  end
end
