
#khi vao thang plugin
get 'departments', to: 'departments#index'


#khi click vao link them moi,  hien thi form
get 'form', to: 'departments#form'


#khi click vao link them moi,  hien thi form
get 'form', to: 'departments#form'

# khi click va nut save
post 'departments', to: 'departments#departments'


match 'deleteDepartment', to: 'departments#delete', via: :get, as: 'delete'


match 'updateDepartment', to: 'departments#update', via: :get, as: 'update'