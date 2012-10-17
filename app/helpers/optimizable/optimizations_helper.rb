module Optimizable
  module OptimizationsHelper
    def optimization_path_for(object)
      o = Optimization.for(object)
      if o
        edit_optimization_path(o)
      else
        new_optimization_path(:optimizable_type => object.class.to_s.underscore, :optimizable_id => object.id)
      end
    end
  
    def optimization(object, option)
      return nil if object.blank? || option.blank?
      o = Optimization.for(object)
      return nil unless o
      o.get(option)
    end
    
  end
end