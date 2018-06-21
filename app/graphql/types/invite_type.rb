class Types::InviteType < Types::BaseObject
  field :code, String, null: true
  field :sender, Types::UserType, null: true
end
