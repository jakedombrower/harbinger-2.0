ActiveAdmin.register Author do

  form do |f|
    f.inputs do
      f.input :name
      f.input :grade
      f.input :bio
      f.submit
    end  
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :grade, :bio

  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  controller do
    def find_resource
      scoped_collection.friendly.find(params[:id])
    end
  end


end
