---
---
document.addEventListener 'DOMContentLoaded', ->

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

  # RetinaImages 
  HDimgs = document.querySelectorAll '[srcset]'
  (
    image = new Image()
    image.onload = ->
      console.info 'Image loaded'
      img.src = image.src
      img.style.width = "#{image.width / 2}px"
      img.removeAttribute 'srcset'
    image.onerror = ->
      console.error 'Could not load image'
    image.src = img.srcset.split(' ')[0]
  ) for img in HDimgs
