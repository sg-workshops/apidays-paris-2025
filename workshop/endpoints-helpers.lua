
--- check_method checks that current transaction method is one of defined
--  in req.ep_method, which is a comma separated items string.
--  
--  If set req.invalid_method to true if method is not allowed. Action to
--  be taken in HAProxy configuration:
--
--     http-request deny status 405 if { var(req.invalid_method),bool }
function check_method(txn) 
  local method = txn.f:method()
  local allowed_methods = txn.get_var(txn,"req.ep_method")
  local methods = core.tokenize(allowed_methods,",",true)
  for _,v in ipairs(methods) do
    if v == method then
      return
    end
  end
  txn.set_var(txn,"req.invalid_method",true)
  return 
end

-- register helpers
core.register_action("check-method", { "http-req" }, check_method)
