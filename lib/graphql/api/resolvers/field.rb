module GraphQL::Api
  module Resolvers
    class Field

      def initialize(model, name)
        @model = model
        @name = name
        @policy_class = "#{model.name}Policy".safe_constantize
      end

      def call(obj, args, ctx)
        if @policy_class
          policy = @policy_class.new(ctx, obj)
          return policy.unauthorized! unless policy.read?

          if policy.respond_to?("access_#{@name}?")
            return policy.unauthorized_field_access(@name) unless policy.send("access_#{@name}?")
          end
          
          obj.send(@name)
        elsif obj.respond_to?("access_#{@name}?")
          obj.send(@name) if obj.send("access_#{@name}?", ctx)
        else
          obj.send(@name)
        end
      end

    end
  end
end
