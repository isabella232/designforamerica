// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

jQuery(function($)
{
    
   var search_form_options = {
    meanwhile: function()
    {
      $('.search_results').html('<p>Searching...</p>');
    },
    buildSearch: function()
    {
      return function()
      {
        form_fields = $(this).serialize();
        form_fields += '&quicksearch=true';
        $.get(this.action, form_fields, null, 'script');
      }
    }
  }
// This code had problems, so I had to edit it
/*  var search_form = $('#search_form');
  if ( search_form.length > 0 )
  {
    search_form
      .searchform(search_form_options)
      .find('#search_box').dropdown({
        container_div: '#search_container',
        dropdown_div: '#dropdown_search_results',
        childSelector: 'div.search_result'
        });
  }
*/
  var quick_search_form = $('#quick_search_form');
  if ( quick_search_form.length > 0 )
    quick_search_form.searchform(search_form_options);

  var ckeditor_toolbar = [
    ['Source','-','Save','NewPage','Preview','-','Templates'],
    ['Cut','Copy','Paste','PasteText','PasteFromWord','-','SpellChecker', 'Scayt'],
    ['Undo','Redo','-','Find','Replace','-','SelectAll','RemoveFormat'],
    ['Form', 'Checkbox', 'Radio', 'TextField', 'Textarea', 'Select', 'Button', 'ImageButton', 'HiddenField'],
    '/',
    ['Bold','Italic','Underline','Strike','-','Subscript','Superscript'],
    ['NumberedList','BulletedList','-','Outdent','Indent','Blockquote','CreateDiv'],
    ['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],
    ['BidiLtr', 'BidiRtl' ],
    '/',
    ['Styles','Format','Font','FontSize'],
    ['Link','Unlink','Anchor']
  ];

  var axis_form = $('.add_axis_form');
  $('.add_axis_link').click(function(event)
  {
    axis_form[axis_form.is(':visible') ? 'hide' : 'show']();

    event.preventDefault();
  });
  $('.hide_form').click(function(event)
  {
    axis_form.hide();

    event.preventDefault();
  });

  $('.range').rangeinput({
    progress: true
  })
  .change(function()
  {
    $.post(this.form.action, $(this.form).serialize(), function(response, status, xhr)
    {
      //possibly do something like notify them
    });
  }); */

});
