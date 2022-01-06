require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
import "bootstrap";
import "../stylesheets/application";
import "../stylesheets/bootstrap_overrides.scss";

$(function(){
  $("#close-modal").on("click", function(){
    $("#modal-wrapper").fadeOut();
  });
  $("#btn-new").on("click", function(){
    $("#modal-wrapper").fadeIn();
  });
});
