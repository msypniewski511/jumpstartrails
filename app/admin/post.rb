ActiveAdmin.register Post do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :category_id, :title, :slug, :blurb, :content, :image
  scope :rails
  index do
  	column :title
  	column :slug
  	column :blurb
  	column :created_at
  	actions
  end

  form do |f|
	f.inputs 'Details' do
	  f.input :title
	  f.input :slug
	  f.input :blurb
	  f.input :category
	  f.input :content, :as => :text
    end
    f.inputs 'Images' do
	    f.input :image, :label => 'Post image', :as => :file
    end
    f.actions
  end
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
