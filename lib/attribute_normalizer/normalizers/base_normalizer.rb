module AttributeNormalizer
  module Normalizers
    module BaseNormalizer
      def normalize(value, options = {})
        case value.class.name
        when 'String'
          perform_normalization(value)
        when 'Array'
          value.map{|v| perform_normalization(v)}
        else
          value
        end
      end
    end
  end
end
