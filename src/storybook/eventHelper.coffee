
# sends out notifications on navagation key events

class AmoebaSB.EventHelper
  constructor: () ->
    this._setupKeyHandler()

    @paused = false

    @nextKeyEventName = "next:keyEvent"
    @prevKeyEventName = "prev:keyEvent"
    @pauseKeyEventName = "pause:keyEvent"
    @resizeEventName = "resize:windowEvent"

    # next and previous keys send this
    @indexEventName = "index:event"

  triggerEvent: (el, eventName, detail) =>
    event = document.createEvent("CustomEvent")
    event.initCustomEvent(eventName, true, true, detail)
    el.dispatchEvent(event)

  togglePause: () =>
    @paused = not @paused;

    # send a nextKeyEvent if we unpaused
    if not @paused
      AmoebaSB.eventHelper.triggerEvent(document, AmoebaSB.eventHelper.nextKeyEventName)

  _setupKeyHandler: =>
    document.addEventListener("keydown", (event) =>
      this._handleKeyEvent(event)
    )

    document.addEventListener("keyup", (event) =>
      this._handleKeyEvent(event)
    )

    document.addEventListener("touchstart", (event) =>
      if (event.touches.length == 1)
        x = event.touches[0].clientX
        width = window.innerWidth * 0.3

        if (x < width)
          this.triggerEvent(document, @prevKeyEventName)
          event.preventDefault()
        else if (x > window.innerWidth - width)
          this.triggerEvent(document, @nextKeyEventName)
          event.preventDefault()
    )

    # window resize events
    window.addEventListener("resize", (event) =>
      if (not @sentReizeEvent)
        @sentResizeEvent = true

        setTimeout( =>
          this.triggerEvent(document, @resizeEventName)
          @sentResizeEvent = false
        , 250)
    )

  _handleKeyEvent: (event) =>
    tabKey = 9
    spaceBar = 32
    leftArrow = 37
    upArrow = 38
    rightArrow = 39
    downArrow = 40

    # only send events on keyUp, we still need the preventDefaults on the keyDown
    sendEvent = false
    if event.type == 'keyup'
      sendEvent = true

    switch event.keyCode
      when spaceBar
        event.preventDefault()
        if sendEvent
          this.triggerEvent(document, @pauseKeyEventName)

      when tabKey, downArrow, rightArrow, spaceBar
        event.preventDefault()
        if sendEvent
          this.triggerEvent(document, @nextKeyEventName)

      when leftArrow, upArrow
        event.preventDefault()
        if sendEvent
          this.triggerEvent(document, @prevKeyEventName)
