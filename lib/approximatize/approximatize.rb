module Approximatize
  def approximatize(target, max_edit_distance = 1)
    m = Module.new do
      def self.included(other)
        other.send :alias_method, :method_missing_without_approximate,
        :method_missing
        other.send :alias_method, :method_missing, :method_missing_with_approximate
      end

      define_method :method_missing_with_approximate do |*args|
        meth = args.shift
        similar_methods = {}

        self.methods.each do |m|
          dist = m.edit_distance(meth.to_s)
          if dist <= max_edit_distance then
            if similar_methods[dist].nil? then
              similar_methods[dist] = [ m.to_s ]
            else
              similar_methods[dist] << m.to_s
            end
          end
        end

        # Eliminate candidates with higher edit distances than the candidates
        with the lowest
        similar_methods = similar_methods.min.pop unless similar_methods.min.nil?

        # Call method only if there is _exactly_ one element with the minimum
        edit distance
        if similar_methods.nil? or similar_methods.size != 1 then
          method_missing_without_approximate(meth, *args)
          #raise NoMethodError.new("undefined method ‘#{meth.to_s}’ for
          #{self}",meth,args)
        else
          self.send(similar_methods.first,*args)
        end
      end
    end
    if target.kind_of? Module
      target.send :include, m
    else
      target.extend m
      target.instance_eval do
        alias :method_missing_without_approximate :method_missing
        alias :method_missing :method_missing_with_approximate
      end
    end
  end
end
