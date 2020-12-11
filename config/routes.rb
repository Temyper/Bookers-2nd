Rails.application.routes.draw do
  # get 'books/index'
  # get 'books/show'
  # get 'books/new'
  # get 'books/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# resourcesでindexからdestroyまでの7つのアクションを自動設定https://web-camp.online/lesson/curriculums/212/contents/1798
resources :books
end
