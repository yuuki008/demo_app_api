class String
  include Camelizable

  def to_suitable_type
    case self
    when 'true'
      true
    when 'false'
      false
    when 'null'
      nil
    when 'undefined'
      false
    else
      self
    end
  end
end