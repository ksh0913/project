Kakao.init("1644c85e91ef5e0ddfea44d9b0be460e");
function loginWithKakao() {
  Kakao.Auth.authorize({
    redirectUri: "http://127.0.0.1:8080/logined.jsp",
  });
}
displayToken();
function displayToken() {
  var token = getCookie("authorize-access-token");
  if (token) {
    Kakao.Auth.setAccessToken(token);
    Kakao.Auth.getStatusInfo()
      .then(function (res) {
        if (res.status === "connected") {
          document.getElementById("token-result").innerText =
            "login success, token: " + Kakao.Auth.getAccessToken();
        }
      })
      .catch(function (err) {
        Kakao.Auth.setAccessToken(null);
      });
  }
}
function getCookie(name) {
  var parts = document.cookie.split(name + "=");
  if (parts.length === 2) {
    return parts[1].split(";")[0];
  }
}
