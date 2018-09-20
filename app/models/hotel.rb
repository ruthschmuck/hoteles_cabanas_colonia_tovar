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

class Hotel < ApplicationRecord
  validates :nombre, presence: true, uniqueness: true
  validates :descripcion, presence: true
  validates :direccion, presence: true
  validates :telefono, presence: true

  mount_uploaders :fotos, FotoUploader

  #
  before_create do
    self.nombre = nombre.split(' ').collect(&:capitalize).join(' ')
  end
end
