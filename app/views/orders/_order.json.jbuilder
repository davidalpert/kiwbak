json.extract! order, :id, :first_name, :last_name, :email, :cell_phone, :home_phone, :heard_how, :afac_boxes, :self_boxes, :fulfilled, :has_paid, :comments, :created_at, :updated_at
json.url order_url(order, format: :json)
