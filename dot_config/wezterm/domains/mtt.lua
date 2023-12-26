local M = {}
M.ssh_domains = {
  {
    -- This name identifies the domain
    name = '102.server',
    -- The hostname or address to connect to. Will be used to match settings
    -- from your ssh config file
    remote_address = '172.20.10.102',
    -- The username to use on the remote host
    username = 'avsokolov',
  },
  {
    -- This name identifies the domain
    name = '201.server',
    -- The hostname or address to connect to. Will be used to match settings
    -- from your ssh config file
    remote_address = '172.20.4.201',
    -- The username to use on the remote host
    username = 'avsokolov',
  },

}
return M
