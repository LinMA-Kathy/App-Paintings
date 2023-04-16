document.addEventListener("DOMContentLoaded", function() {
  const signOutLink = document.getElementById("sign_out_link");

  if (signOutLink) {
    signOutLink.addEventListener("click", function(event) {
      event.preventDefault();

      const csrfToken = document.querySelector('meta[name="csrf-token"]').content;

      fetch("/users/sign_out", {
        method: "DELETE",
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json",
          "X-CSRF-Token": csrfToken
        },
        credentials: "same-origin"
      }).then(function(response) {
        if (response.ok) {
          window.location.href = "/";
        } else {
          alert("Sign out failed");
        }
      });
    });
  }
});
