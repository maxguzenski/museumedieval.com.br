// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
// modal
$(function() {
    // pesonaliza todas os modais
    $('.modal').dialog({
        bgiframe: true,
        autoOpen: false,
        modal: true,
        draggable: true,
        resizable: false
    });

	// escreve "Digite aqui..." no input
    var surname_title = $('#surname_search').attr("title");
    $('#surname_search').addClass("input_label");
    $('#surname_search').val(surname_title);

    $('#surname_search').focus(function() {
        if ($('#surname_search').val() == surname_title) {
            $('#surname_search').removeClass("input_label");
            $('#surname_search').val("");
        }
    });

    $('#surname_search').blur(function() {
        if ($('#surname_search').val() == "") {
            $('#surname_search').addClass("input_label");
            $('#surname_search').val(surname_title);
        }
    });

	// apenas pesquisa se algo foi digitado
    $('#surname_submit').click(function() {
        if ($('#surname_search').val() == surname_title) return false;
        if ($('#surname_search').val() == "") return false;
        return true;
    });

	// mostra modal de waiting em todas as chamadas ajax
	$('#waiting').bind('ajaxStart', function() {
		$(this).attr('style', 'top:'+ document.body.scrollTop + 'px');
		$(this).show();
	});
	$('#waiting').bind('ajaxStop', function() {
		$(this).hide();
	});
});


/**
 * Prepara imagem de loading para telas como brasoes e modelos
 */
var imgLoading = new Image();
$(imgLoading).attr('src', '/images/lightbox-ico-loading.gif');

var divTrans = $("<div style='background-color:#ffffff;position:relative;opacity:0.87;display:inline-block;filter: alpha(opacity = 87)'></div>");
var divLoading = $("<div style='line-height:2em'></div>");
divLoading.append(imgLoading).append('<br/><span style="font-weight:bold">Carregando imagem. Aguarde...</span>');

divTrans.html(divLoading);


/**
 * Funcoes
 */
function openModal(id, width) {
    $('#' + id).dialog('option', 'width', width);
    $('#' + id).dialog('open');
    return false;
}

function changeImage(appendTo, newImg) {
    var oldImg = appendTo.find('img');

    divTrans.css('height', oldImg.height());
    divTrans.css('width', oldImg.width());
    divTrans.css('top', oldImg.height() * -1);

    divLoading.css('padding-top', ((oldImg.height() / 2) - 32) + 'px');
    appendTo.append(divTrans);

    var img = new Image();
    $(img).load(function() {
        $(this).hide();
        appendTo.html(this);
        $(this).fadeIn();
    })
    .attr('src', newImg.attr('rel'))
    .css('display', 'inline');

    return false;
}

function loadFromFlicker(object, tag, per_page) {
    var config = {api_key: 'c84fa41c8002bf5c466dffde766b3a90',link_to_size: 'm',callback:function() {
		object.find("a").lightBox({fixedNavigation:false});
	}};
	object.flickr(config).photosSearch({user_id: '31729360@N00', tags: tag, per_page: per_page});
}