require 'optimizable/engine'

module Optimizable
  class<<self
    attr_writer :options, :parent_controller

    def options
      @options || default_options
    end
    
    def default_options
      [:description, :title]
    end
    
    def parent_controller
      @parent_controller || default_parent_controller
    end
    
    def default_parent_controller
      ApplicationController
    end
  end
end

