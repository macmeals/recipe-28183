require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録がうまくいくとき' do

      it "nickname,email,passwordがあると登録できる" do
        expect(@user).to be_valid
      end

    end

    context '新規登録がうまくいかない時' do

      it "nicknameが空だと登録できない" do
        @user.nickname = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end

      it "emailが空だと登録できない" do
        @user.email = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end

      it "重複したemailは登録できない（既にDBに存在してるemailはDBに登録できない" do
        @user.save
        another_email  = FactoryBot.build(:user, email: @user.email)
        another_email.valid?
        expect(another_email.errors.full_messages).to include("Email has already been taken")
      end

      it "emailに＠が入っていないと登録できない。" do
        @user.email = "emailadrress"
        @user.valid?
        expect(@user.errors.full_messages).to include("Email is invalid")
      end

      it "passwordが空だと登録できない"  do
        @user.password = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end

      it "passwordは5文字以下だと登録できない"  do
        @user.password = "qa1"
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
      end  

      it "passwordは半角英数でないと登録できない" do
        @user.password = "テスト"
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is invalid")
      end

      it "passwordは半角英語だけだと登録できない" do
        @user.password = "aaaaaa"
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is invalid")
      end

      it "passwordは半角数字だけだと登録できない" do
        @user.password = "111111"
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is invalid")
      end

    end

  end
  
end