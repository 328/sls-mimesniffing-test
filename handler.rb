require 'json'

def normal(event:, context:)
  { statusCode: 200,
    headers: {
      'Content-Type': 'application/json; charset=utf-8',
    },
    body: JSON.generate('{"key":"value"}')
  }
end

def mimesniffing(event:, context:)
  { statusCode: 200,
    headers: {
      'Content-Type': 'application/json; charset=utf-8',
    },
    body: JSON.generate('{"key":"<script>alert(1)</script>"}')
  }
end

def nosniff(event:, context:)
  { statusCode: 200,
    headers: {
      'Content-Type': 'application/json; charset=utf-8',
      'X-Content-Type-Options': 'nosniff'
    },
    body: JSON.generate('{"key":"<script>alert(1)</script>"}')
  }
end
