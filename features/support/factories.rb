FactoryGirl.define do
  factory :user, class: User do
    email "ammii@ait.asia"
    password "password"
    password_confirmation "password"
  end

  factory :myarticle, class: Article do
    title "my title"
    detail "<h1>I am very big article</h1>"
  end

  factory :mycomment, class: Comment do
    comment_detail "<h1>I am very big comment</h1>"
  end

end