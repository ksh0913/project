Kakao.init("1644c85e91ef5e0ddfea44d9b0be460e");

function loginWithKakao() {
  Kakao.Auth.authorize({
    redirectUri: "http://localhost:8080/bookkkeureom/loginedHome",
  });
}

function requestUserInfo() {
  Kakao.API.request({
    url: "/v2/user/me",
  })
    .then(function (res) {
      alert(JSON.stringify(res));
    })
    .catch(function (err) {
      alert("failed to request user information: " + JSON.stringify(err));
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
