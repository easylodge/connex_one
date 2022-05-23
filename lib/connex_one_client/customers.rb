module Customers

  def create_customer(body)
    endpoint = "/customer/load/single"
    post(endpoint, body)
  end

  def update_customer(id, body)
    endpoint = "/customer/#{id}"
    patch(endpoint, body)
  end

  def delete_customer(id)
    endpoint = "/customer/#{id}"
    delete(endpoint)
  end

end
