import Generic from "@dashkite/generic"

Montrose =

  resource: ( locator ) ->
    K.peek Montrose.resource locator

  resolve: ( name ) -> K.push Montrose.resolve name

  observe: ( name, handler ) ->
    K.peek ( handle ) ->
      observe = Montrose.observe name, ( state ) ->
        handler Daisho.create [ state, handle ], { handle }
      observe handle
  
  update: ( name, mutator ) ->
    K.peek ( handle ) ->
      update = Montrose.update name, ( state ) ->
        mutator Daisho.create [ state, handle ], { handle }
      update handle

export default Montrose