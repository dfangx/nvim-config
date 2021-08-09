local opts = {}
buf_nnoremap('<f4>', ':GodotRunLast<cr>', opts)
buf_nnoremap('<f5>', ':GodotRun<cr>', opts)
buf_nnoremap('<f6>', ':GodotRunCurrent<cr>', opts)
buf_nnoremap('<f7>', ':GodotRunFZF<cr>', opts)

g.godot_executable = "/usr/bin/godot"
