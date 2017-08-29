var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "guppies1",
  database: "bamazon"
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId);
  afterConnection();
});

function afterConnection() {
  connection.query("SELECT item_id, product_name, price, stock_quantity FROM products", function(err, res) {
    if (err) throw err;
    console.log(res);
    promptUser();
  });
}

function promptUser() {
  connection.query("SELECT * FROM products", function(err, res) {
    if (err) throw err;

    inquirer.prompt([
      {
          name: "ID_num",
          type: "input",
          message: "Please enter the ID of the item you would like to buy."
        },
        {
          name: "num_units",
          type: "input",
          message: "How many units of the item would you like to buy?"
        }
      ])
      .then(function(answer) {
        buyItem(answer.ID_num, answer.num_units);
      })
  })
}

function buyItem(id, quantity) {
  connection.query("SELECT * FROM products WHERE ?",
  {
    item_id: id
  },
  function(err, product) {

      if (err) throw err;
      
      if (product[0].stock_quantity < parseInt(quantity)) {
        console.log("insufficient quantity!");
      } else {
        connection.query(
          "UPDATE products SET stock_quantity = ? WHERE item_id = ?", [product[0].stock_quantity - quantity, product[0].item_id],
          
          function(error) {
            if (error) throw err;
            console.log("Your total is " + product[0].price * quantity);
            process.exit();
          }
        );
      }
    })
  }
