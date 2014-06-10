---
---
# Mobile Menu Navigation

menuLink = (document.querySelectorAll('.menu-link'))[0]
disclosedMenuItems = Array.prototype.slice.call document.querySelectorAll('.disclosed')
toggleMenu = () ->
  disclosedMenuItems.forEach (item, i) ->
    item.classList.toggle('show')

menuLink.addEventListener('mousedown', toggleMenu)

# BuddySystem

buddySystem = (objs) ->
  for o in objs
    s = String o.innerHTML;(o.innerHTML = s.replace((new RegExp '((?:[^ ]* ){' + (s.match(/\s/g).length - 1) + '}[^ ]*) '),"$1&nbsp;")) if s

headings = document.querySelectorAll('h1')
paragraphs = document.querySelectorAll('p')
buddySystem headings
buddySystem paragraphs
