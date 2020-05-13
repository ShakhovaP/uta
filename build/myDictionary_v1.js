
const mysql = require("mysql2");
let fs = require("fs");
let data = new Array;

  
const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  database: "mydb",
  password: "password"
}).promise();

///////////////////////////////
const select = (mf, word, tag) => {
		//let count = 0;
		const ass = `INSERT INTO Association (MainForm_id, Word_id, Tag_id) VALUES (?)`;
		const sel1 = `SELECT * FROM mainForm WHERE value=?`;
		connection.query(sel1, mf)
          .then(result =>{
           data[0] = result[0][0].id;
          })


          const sel2 = `SELECT * FROM word WHERE value=?`;
		connection.query(sel2, word)
          .then(result =>{
           data[1] = result[0][0].id;
          })


          const sel3 = `SELECT * FROM tag WHERE value=?`;
		connection.query(sel3, tag)
          .then(result =>{
           data[2] = result[0][0].id;
            return connection.query(ass, [data])

         
          })
          .then(result =>{
          	console.log(result)
          })
          .catch(err =>{
        console.log(err);
    });
	};

//////////////////////////////////////
const insert = (sql, value) => {
connection.query(sql, value)
          .then(result =>{
          	id = result[0][0].id
          })   
  .catch(err =>{
        //console.log(err);
    });
}


let count = 0;
let vesum = JSON.parse(fs.readFileSync(`../data/vesum-tone/test_0.json`));
  vesum.forEach( r => {
  delete r._id; 
  const word = r.word;
  const mf = r.mainForm;
  const sqlWord = "INSERT INTO word (value) VALUES (?)";
const sqlMainform = "INSERT INTO mainForm (value) VALUES (?)";
const sqlTag = "INSERT INTO Tag (value) VALUES (?)";

  insert(sqlWord, word);
  insert(sqlMainform, mf);


  let tags = r.tags;
  tags.forEach( tag => {
  	insert(sqlTag, tag)
  	select(mf, word, tag)

    })
});




//////////////////////////

/*connection.end(function(err) {
  if (err) {
    return console.log("Ошибка: " + err.message);
  }
  console.log("Подключение закрыто");
});*/





