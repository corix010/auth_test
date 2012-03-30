class User < ActiveRecord::Base
  include Adauth::UserModel

  def is?(role)
      groups.split(",").include?(role.to_s)
  end
end
