$(function () {
  $(document).ready(function () {
    $.ajax({
      url: "myBook.do",
      success: function (result) {
        const itemArr = result.item;
        let value = "";
        for (let i = 0; i < itemArr.length; i++) {
          let item = itemArr[i];
          value = item.title.split("-", 1);
          $("#new-title-" + (parseInt(i) + 1)).html(value);
          value = item.cover;
          $("#new-cover-" + (parseInt(i) + 1)).attr("src", value);
          value = item.author.split(",", 1);
          $("#new-author-" + (parseInt(i) + 1)).html(value);
          const categoryArr = item.categoryName.split(">", 3);
          for (let j = 0; j < categoryArr.length; j++) {
            value = categoryArr[j];
            $("#new-category-" + (parseInt(i) + 1) + " " + "#btn-" + (parseInt(j) + 1)).html(value);
          }
        }
      },
    });
  });
});
