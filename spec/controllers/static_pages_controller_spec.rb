require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do

  describe "GET #home" do
    subject { get :home }

    it "renders the home template" do
      expect(subject).to render_template(:home)
    end

  end

  describe "GET #help" do
    subject { get :help }

    it "renders the help template" do
      expect(subject).to render_template(:help)
    end
  end

  describe "GET #about" do
    subject { get :about }

    it "renders the about template" do
      expect(subject).to render_template(:about)
    end
  end
end
