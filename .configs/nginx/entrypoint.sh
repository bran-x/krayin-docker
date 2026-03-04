#!/bin/sh

# Default credentials if not provided
AUTH_USERNAME=${AUTH_USERNAME:-admin}
AUTH_PASSWORD=${AUTH_PASSWORD:-admin123}

# Generate .htpasswd file with provided credentials
echo "Generating .htpasswd with user: $AUTH_USERNAME"
htpasswd -cb /etc/nginx/.htpasswd "$AUTH_USERNAME" "$AUTH_PASSWORD"

# Start nginx
exec nginx -g 'daemon off;'
