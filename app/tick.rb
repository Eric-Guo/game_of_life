
Cell.random_seed = 100
Cell.start_alive_rate = 0.1

def tick(args)
  if args.state.tick_count.zero?
    args.state.world = World.new
    args.outputs.static_sprites << args.state.world.cells
  else
    args.state.world.assign_alive_cells
  end

  args.outputs.debug << args.gtk.framerate_diagnostics_primitives
end
