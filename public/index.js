/* global axios */

console.log("index.js connected");

axios.get("http://localhost:3000/api/posts").then(function(response) {
  var posts = response.data;
  console.log(posts);
});