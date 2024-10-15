// signup form validation

document.addEventListener('DOMContentLoaded', function () {
    const form = document.querySelector('.signup-form');
  
    form.addEventListener('submit', function (event) {
      // Prevent form submission
      event.preventDefault();
  
      // Get form values
      const fname = document.getElementById('fname').value.trim();
      const lname = document.getElementById('lname').value.trim();
      const email = document.getElementById('email').value.trim();
      const password = document.getElementById('password').value;
      const confirmPassword = document.getElementById('confirm-password').value;
  
      // Validation checks
      if (fname === '') {
        alert('First name is required');
        return;
      }
      if (lname === '') {
        alert('Last name is required');
        return;
      }
      if (!validateEmail(email)) {
        alert('Please enter a valid email address');
        return;
      }
      if (password === '') {
        alert('Password is required');
        return;
      }
      if (password.length < 6) {
        alert('Password must be at least 8 characters long');
        return;
      }
      if (password !== confirmPassword) {
        alert('Passwords do not match');
        return;
      }
  
      // If validation passes, submit the form
      alert('Form submitted successfully!');
      form.submit();
    });
  
    // Email validation function
    function validateEmail(email) {
      const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
      return re.test(String(email).toLowerCase());
    }
  });
  