const { Pool } = require('pg');
var args = process.argv.slice(2);

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});
pool.query(text, values)
pool.query(`
SELECT students.id as student_id, students.name as name, cohorts.name as cohort
FROM students
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name LIKE '%${args[0]}%'

LIMIT ${args[1]};
`)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.student_id} has an id of ${user.student_id}  and was in the ${user.cohort} cohort`);
  })
});
