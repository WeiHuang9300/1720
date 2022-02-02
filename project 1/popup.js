$(function(){
    var state = $('#state')
    $('#changeimg').click(function () {
        chrome.tabs.query({active:true, currentWindow:true}, function (tab) {
            chrome.tabs.sendMessage(tab[0].id, {  
               action: "changeimg"   
            }, function (response) {
                state.html(response.state)
            });
        });
    })

    })
