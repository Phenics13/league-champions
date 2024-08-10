// Please see documentation at https://learn.microsoft.com/aspnet/core/client-side/bundling-and-minification
// for details on configuring this project to bundle and minify static web assets.

// Write your JavaScript code.
$(document).ready(function () {
  loadChampions = function (page = 1) {
    var url = "/League/LoadChampions";
    var search = $("#search").val();
    var rangeId = $("#rangeId").val();
    var sortBy = $("#sortBy").val();
    var positionId = $("input[type=radio][name=positionId]:checked").val();

    data = {
      page: page,
      search: search,
      rangeId: rangeId,
      sortBy: sortBy,
      positionId: positionId,
    };

    console.log(data);

    $.ajax({
      url: url,
      type: "GET",
      data: data,
      success: function (result) {
        $("#ChampionsContainer").html(result);
      },
    });
  };
  loadChampions();

  pickChampion = function (id) {
    var url = "League/Details/" + id;
    window.location.href = url;
  };

  pickAbility = function (abilityId) {
    var url = "/League/PickAbility/" + abilityId;

    $.ajax({
      url: url,
      type: "GET",
      success: function (result) {
        $("#AbilitiesContainer").html(result);
      },
    });
  };

  $("#filterForm").submit(function (e) {
    e.preventDefault();

    $.ajax({
      url: $(this).attr("action"),
      type: "POST",
      data: $(this).serialize(),
      success: function (result) {
        $("#ChampionsContainer").html(result);
      },
    });
  });

  $("input[type=radio][name=positionId]").change(function () {
    var labels = $(".position-label");
    labels.removeClass("opacity-100");
    labels.addClass("opacity-50");

    var label = $("label[for=" + $(this).attr("id") + "]");
    label.addClass("opacity-100");
  });
});
