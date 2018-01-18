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
