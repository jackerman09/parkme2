require 'rails_helper'

RSpec.describe "cars/new", :type => :view do
  before(:each) do
    assign(:car, Car.new(
      :make => "MyString",
      :model => "MyString",
      :garage => nil,
      :user => nil
    ))
  end

  it "renders new car form" do
    render

    assert_select "form[action=?][method=?]", cars_path, "post" do

      assert_select "input#car_make[name=?]", "car[make]"

      assert_select "input#car_model[name=?]", "car[model]"

      assert_select "input#car_garage_id[name=?]", "car[garage_id]"

      assert_select "input#car_user_id[name=?]", "car[user_id]"
    end
  end
end
