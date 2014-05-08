buddySystem = (objs) ->
  for o in objs
    s = String o.innerHTML;(o.innerHTML = s.replace((new RegExp '((?:[^ ]* ){' + (s.match(/\s/g).length - 1) + '}[^ ]*) '),"$1&nbsp;")) if s

objs = document.querySelectorAll('h1')
# objs = objs.concat(document.querySelectorAll('p'))
buddySystem objs
