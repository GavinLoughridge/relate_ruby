class Types::UserType < Types::BaseObject
  field :email, String, null: true
  field :password, String, null: true
  field :posts, [Types::PostType], null: true
  field :friends, [Types::UserType], null: true
end
