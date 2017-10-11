class AddSlugAndBlurbToPages < ActiveRecord::Migration[5.1]
  def change
    add_column :pages, :slug, :string
  end
end
