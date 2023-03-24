-- Shim module to address deprecations across nvim versions
local ts = vim.treesitter
local tsq = ts.query

local M = {}

function M.get_query_files(lang, query_group, is_included)
  return (tsq.get_files or tsq.get_query_files)(lang, query_group, is_included)
end

function M.inspect_language(lang)
  return (ts.language.inspect or ts.inspect_language)(lang)
end

function M.set_query(lang, query_name, text)
  return (tsq.set or tsq.set_query)(lang, query_name, text)
end

function M.get_query(lang, query_name)
  return (tsq.get or tsq.get_query)(lang, query_name)
end

function M.parse_query(lang, query)
  return (tsq.parse or tsq.parse_query)(lang, query)
end

function M.add_predicate(name, handler, force)
  return (tsq.add_predicate or ts.add_predicate)(name, handler, force)
end

function M.add_directive(name, handler, force)
  return (tsq.add_directive or ts.add_directive)(name, handler, force)
end

function M.list_predicates()
  return (tsq.list_predicates or ts.list_predicates)()
end

function M.list_directives()
  return (tsq.list_directives or ts.list_directives)()
end

function M.get_range(node, source, metadata)
  return (ts.get_range or tsq.get_range)(node, source, metadata)
end

function M.get_node_text(node, source, opts)
  return (ts.get_node_text or tsq.get_node_text)(node, source, opts)
end

return M
