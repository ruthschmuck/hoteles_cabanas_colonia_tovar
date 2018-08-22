# == Schema Information
#
# Table name: hotels
#
#  id          :bigint(8)        not null, primary key
#  nombre      :string           not null
#  descripcion :text             not null
#  direccion   :text             not null
#  telefono    :string           not null
#  email       :string
#  fotos       :json
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class HotelTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
