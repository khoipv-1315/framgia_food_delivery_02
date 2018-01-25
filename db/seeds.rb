User.create!([{
  name: "Ant-Man",
  email: "admin@gmail.com",
  admin: true,
  password: "123456",
  password_confirmation: "123456",
  address: "Ha Nam"
},
{
  name: "Ant",
  email: "customers@gmail.com",
  admin: false,
  password: "123456",
  password_confirmation: "123456",
  phone: "01234567889",
  address: "Hà Nội"
},
{
  name: "ANT",
  email: "hehe@gmail.com",
  admin: false,
  password: "123456",
  password_confirmation: "123456",
  phone: "01234567889",
  address: "Hà Nội"
}])

Category.create!([{
  name: "Bữa Trưa",
  status: true,
  description: "Bữa trưa Bữa trưa ăn ngon"
},
{
  name: "Bữa Tối",
  status: true,
  description: "Bữa trưa Bữa trưa ăn ngon"
},
{
  name: "Món Vặt",
  status: true,
  description: "Bữa trưa Bữa trưa ăn ngon"
}])

Discount.create!([{
  discount: "0",
  start_date: "2011-04-24",
  description: "2030-04-24"
},
{
  discount: "10",
  start_date: "2017-04-24",
  description: "2018-04-24"
},
{
  discount: "20",
  start_date: "2018-04-24",
  description: "2018-04-25"
}])
