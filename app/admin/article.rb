ActiveAdmin.register Article do

  form do |f|
    f.inputs do
      f.input :title
      f.input :date_published
      f.input :content, as: :html_editor
      f.submit
    end

    
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
   permit_params :title, :author_id, :content, :date_published
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end