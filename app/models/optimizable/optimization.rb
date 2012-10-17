module Optimizable
  class Optimization < ActiveRecord::Base
    validates_uniqueness_of :optimizable_id, :scope => [:optimizable_type]
    belongs_to :optimizable, :polymorphic => true

    serialize :data, Hash

    def self.for(optimizable)
      self.where(:optimizable_id => optimizable.id, :optimizable_type => optimizable.class.to_s).first
    end

    def after_initialize
      if self.data.blank?
        self.data = {}
        Optimizable.options.each do |option|
          self.data[option] = nil
        end
      end
    end

    def get key
      self.data.symbolize_keys[key.to_sym]
    end

    def human_optimizable
      [optimizable.try(:title) || optimizable.try(:name) || optimizable.try(:id), optimizable.class.to_s].join(' ').downcase
    end
  end
end