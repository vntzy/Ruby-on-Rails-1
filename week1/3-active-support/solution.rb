class Object
  def blank?
    unless self
      return false
    end
    if respond_to? :empty?
      return empty?
    end
    true
  end

  def present?
    not blank?
  end

  def presence
    return self if present?
  end

  def try(method = itself, &block)
    unless self.nil?
      instance_eval {
        send :method, &block
      }
    end
  end
end