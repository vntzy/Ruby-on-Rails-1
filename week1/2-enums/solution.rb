  class Enums
    def self.map(enum, to:)        
      self.class.instance_eval do
        define_method(enum) do
          enum_clazz = Class.new do
          end
          enum_clazz.singleton_class.class_eval do
            to.each {|enum| define_method(enum) { enum }}
          end
          enum_clazz
        end
      end
    end
  end