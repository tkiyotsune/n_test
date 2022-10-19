require 'rails_helper'

RSpec.describe ChangeController  do
    it "number_change" do
      # ChangeController.new.n_change("三億五百万二千").to eq "305002000"
      expect(ChangeController.n_change("三億五百万二千")).to eq "305002000"
    end
end