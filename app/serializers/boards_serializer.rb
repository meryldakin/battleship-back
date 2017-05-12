class BoardsSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :gameResult, :ammo, :status, :ship, :hits
end
