//used to initialize the npm modules
const figlet = require('figlet');
const inquierer = require('inquirer');

const db = require("./DB");

function loadQuestions(){
    const {questions} = prompt([
        {
            type: "list",
            name: "choice",
            message: "Please select one of the following:",
            choices: [
                {
                    name: "View Employees",
                    value: "VIEW_EMPLOYEES"
                },
                {
                    name: "view employees by department",
                    value: "VIEW_EMPLOYEES_BY_DEPARTMENT"
                }
                {
                    name: "Add Employee",
                    value: "ADD_EMPLOYEE"
                  },
                  {
                    name: "Remove Employee",
                    value: "REMOVE_EMPLOYEE"
                  },
                  {
                    name: "Update Employee Role",
                    value: "UPDATE_EMPLOYEE_ROLE"
                  },
            ]
        }
    ])
}

//