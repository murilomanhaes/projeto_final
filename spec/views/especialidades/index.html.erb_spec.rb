require 'spec_helper'

describe "especialidades/index" do
  before(:each) do
    assign(:especialidades, [
      stub_model(Especialidade,
        :nome => "Nome"
      ),
      stub_model(Especialidade,
        :nome => "Nome"
      )
    ])
  end

  it "renders a list of especialidades" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
  end
end
