
# Daily Report 

@(Front-End)[14/06/2017|Do Hong Quan]
Learn about html form.

----------

[TOC]

## FORM HTML
### Theory
- An HTML form contains form elements.
- Form elements are different types of input elements, like text fields, checkboxes, radio buttons, submit buttons, and more.
- Syntax: 
<*form* action ="... " method="post">  
		form elements    
<*/form*>
- The **action** attribute defines the action to be performed when the form is submitted.
- The **method** attribute specifies the HTTP method (GET or POST) to be used when submitting the form data.
### Element of Form
- The Input Element:
The <*input*> element is the most important form element.
The <*input*> element can be displayed in several ways, depending on the type attribute.
- Types of Input Element:
  <*input type="text"*>     **=>** define a one line text input field.
  <*input type="radio"*>**=>** define a radio button.
  <*input type="submit"*>**=>** define a submit button.

###Example:

Write a **register form** which can input username, password, emails, gender.

```
<form action="Register.html" method="post">
	<div>
		<label for="name">Username</label>
		<input type="text" name="user_name" id="name">
	</div>
	<div>
		<label for="password">Password</label>
		<input type="password" name="pass_word" id="password">
	</div>
	<div>
		<label for="email">Email</label>
		<input type="email" name="email" id="email">
	</div>
	
	<div>
		<label for="name">Genders</label>
		<input type="radio" name="gender" value="male">
		<input type="radio" name="gender" value="female">
		<input type="radio" name="gender" value="other">
	</div>
</form>
```
