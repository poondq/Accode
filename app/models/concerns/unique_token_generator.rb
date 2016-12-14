module UniqueTokenGenerator

  extend ActiveSupport::Concern

  private
    def generate_token_for(field, options={})
      return if send(field).present?
      generation_method = default_generation_method(options[:token_size])

      unique_id = generation_method.call()

      loop do
        unique_id = generation_method.call()
        break unique_id unless self.class.exists?(field => unique_id)
      end

      send(:"#{field}=", unique_id)
    end

    def default_generation_method(token_size)
      token_size ||= 10
      -> { (rand(36**token_size - 36**(token_size-1)) + 36**(token_size-1)).to_s(36).upcase }
    end

end
