ActiveAdmin.register Page do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
 # ActiveAdmin.register Post, namespace: false
  permit_params :title, :content, :slug
 #permit_params do
 #  permitted = [:permitted, :attributes]
 #  permitted << :other if params[:action] == 'create' && current_user.admin?
 #  permitted
 #end
  index do
  	column :title
    column :slug
    column :created_at
    actions
  end
end
