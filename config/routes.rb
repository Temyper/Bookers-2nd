Rails.application.routes.draw do
  # get 'books/index'
  # get 'books/show'
  # get 'books/new'
  # get 'books/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# トップ画面を「/」（例:https://...amazonaws.com/ ）で表示できるようにしましょう。https://web-camp.online/lesson/curriculums/212/contents/1801
# ↑紛らわしいが、スラッシュ付きのURLにすることではない？
# 20201211「amazonaws.com/」で「amazonaws.com」を表示できる。トップページは「/」無し
root to:  'books#top'

# resourcesでindexからdestroyまでの7つのアクションを自動設定https://web-camp.online/lesson/curriculums/212/contents/1798
resources :books
end
