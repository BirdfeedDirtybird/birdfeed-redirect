require 'rack/rewrite'

use Rack::Rewrite do
  r301 %r{.*}, "https://birdfeed.dirtybirdrecords.com$&?redirect=true"
end

# Fall back to default app (empty).
run -> (env) { [200, {}, []] }
