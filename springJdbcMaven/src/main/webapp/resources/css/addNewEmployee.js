/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function validateForm() {
            var isErr = false;
            debugger;
            if (document.getElementById('AddEmployeeFullName').value == "") {
                isErr = true;
                //login_username.setCustomValidity("Please Enter Email/Mobile No.");
                Materialize.toast('Please Enter Your Full Name', 1500) 
                document.getElementById('AddEmployeeFullName').focus();

            }else if (!document.getElementById('AddEmployeeFullName').value.match(/^[a-zA-Z ]+$/)) {
            isErr = true;
            Materialize.toast('Name cannot contain special characters', 1500)
            document.getElementById('AddEmployeeFullName').focus();
            } 
            if (!isErr) {
                debugger;
                document.forms["addEmployeeForm"].submit();

                return true;
            }
            return false;
}
