ActiveRecord::Migration.verbose = false

ActiveRecord::Schema.define(version: 0) do
  enable_extension 'uuid-ossp'
  enable_extension 'pgcrypto'

  create_table :categories, force: true, id: :uuid do |t|
    t.column :parent_id, :uuid
    t.column :trait_id, :string
    t.column :name, :string
    t.column :depth, :integer
    t.column :position, :integer
  end

  create_table :articles, force: true do |t|
    t.column :category_id, :uuid
    t.column :title, :string
  end

  create_table :model_with_default_scopes, force: true, id: :uuid do |t|
    t.column :parent_id, :uuid
    t.column :name, :string
  end
end
