$(document).ready(function() {
  $('.add-ingredient-button').on('click', function(ev) {
      var $lastEmailField;
      console.log($('input[name="meal[ingredients][]"]').last())
      $lastEmailField = $('input[name="meal[ingredients][]"]').last().clone();
      $lastEmailField.val('');
      return $(".input.meal_ingredients")
        .parent()
        .append("<div class='field'>")
        .find('.field').last()
        .append("<div class='control'>")
        .find('.control').last()
        .append($lastEmailField);
  })
})
