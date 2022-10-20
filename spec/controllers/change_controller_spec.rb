require 'rails_helper'

RSpec.describe ChangeController  do
    # 漢数字->英数字
    it "一" do
      expect(ChangeController.n_change('["一"]')).to eq 1
    end

    it "二十三" do
      expect(ChangeController.n_change('["二十三"]')).to eq 23
    end

    it "三百五" do
      expect(ChangeController.n_change('["三百五"]')).to eq 305
    end

    it "三億五百万二千" do
      expect(ChangeController.n_change('["三億五百万二千"]')).to eq 305002000
    end
    
    it "一兆三十億五千万" do
      expect(ChangeController.n_change('["一兆三十億五千万"]')).to eq 1003050000000
    end

    # 英数字->漢数字
    it "1" do
      expect(ChangeController.n_change("1".to_s)).to eq "一"
    end

    it "10" do
      expect(ChangeController.n_change("23".to_s)).to eq "二十三"
    end

    it "105" do
      expect(ChangeController.n_change("305".to_s)).to eq "三百五"
    end

    it "305002000" do
      expect(ChangeController.n_change("305002000".to_s)).to eq "三億五百万二千"
    end
    
    it "1003050000000" do
      expect(ChangeController.n_change("1003050000000".to_s)).to eq "一兆三十億五千万"
    end

end