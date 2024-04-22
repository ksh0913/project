$(function () {
  $(document).ready(function () {
    $.ajax({
      url: "bestBook.do",
      success: function (result) {
        const itemArr = result.item;
        let value = "";
        for (let i = 0; i < itemArr.length; i++) {
          let item = itemArr[i];
          value = item.cover;
          $("#best-cover-" + (parseInt(i) + 1)).attr("src", value);
          value = item.bestRank;
          $("#best-rank-" + (parseInt(i) + 1)).html(value);
          value = item.title.split("-", 1);
          $("#best-title-" + (parseInt(i) + 1)).html(value);
          value = item.author.split(",", 1);
          $("#best-author-" + (parseInt(i) + 1)).html(value);
        }
      },
    });
  });
});
