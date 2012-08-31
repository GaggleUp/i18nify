module I18nify

  def self.included(base)
    base.extend ClassMethods
  end

  def tr(key, params={})
    self.class.tr(key, params)
  end

  module ClassMethods
    def has_strings(strings={})
      class_attribute :strings
      self.strings = strings
    end

    def tr(key, params={})
      I18n.t("#{self.class.name}.#{key}", params.merge({:default => self.strings.fetch(key)}))
    end
  end
end

require 'active_record'

ActiveRecord::Base.send(:include, I18nify)
