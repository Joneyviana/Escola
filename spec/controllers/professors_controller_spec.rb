require "rails_helper"

RSpec.describe ProfessorsController, :type => :controller do

    let(:create_one) { FactoryGirl.create(:professor)}
    let(:create_two) { FactoryGirl.create(:professor, register_number: 4343354)}
    it_behaves_like "GET #index"

  describe 'POST #create' do

       let(:params){{professor: attributes_for(:professor)}}
       let(:invalid_params){{professor: attributes_for(:professor , name: nil)}}
       let(:count){Professor.count}
       let(:first){Professor.first}

       it_behaves_like 'with valid attributes'
       it_behaves_like 'with invalid attributes'

    end
end
