require 'rails_helper'

RSpec.describe Post, type: :model do
    it "値を代入すると無事登録されること" do
        testdata="試験投稿"
        post=Post.new(
            content: testdata,
        )

        expect(post.test).to eq testdata
    end
end