$(function() {

  if (!window.localStorage) {
    return;
  }

  let getDismissedHelpers = () => {
    let serialized = localStorage.getItem("dismissedHelpers");
    if (!serialized) {
      return [];
    }

    return serialized.split(",");
  };

  $(".floating-helper-container").each((_index, elem) => {
    let id = $(elem).data("help-id");

    let dismissedHelpers = getDismissedHelpers();

    if (!dismissedHelpers.includes(id)) {
      localStorage.setItem(
        "dismissedHelpers",
        [...dismissedHelpers, id].join(",")
      );
    }
  });

})