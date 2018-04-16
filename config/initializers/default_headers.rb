Rails.application.configure do
  config.action_dispatch.default_headers = {
    'X-Frame-Options' => 'SAMEORIGIN',
    'X-XSS-Protection' => '1; mode=block',
    'X-Content-Type-Options' => 'nosniff',
    'Referrer-Policy' => 'strict-origin-when-cross-origin',
    'X-My-Header' => 'testing-header-123', # New header
  }
  # Uncommenting the line below produces the intented result.
  # ActionDispatch::Response.default_headers = config.action_dispatch.default_headers
end
