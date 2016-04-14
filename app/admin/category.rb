ActiveAdmin.register Category do

  form :title => { :new => "New Category", :edit => "Renew  Category"} do |f|
    f.inputs do
      f.input :name
     # f.input :description
    end
    f.actions do
      f.action :submit
      f.action :cancel, :label => 'Cancel', :input_html => {:class => 'cancel_subscription'}
    end
  end
#end
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :id, :name, :created_at, :updated_at 
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end


end
