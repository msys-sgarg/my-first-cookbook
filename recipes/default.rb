#
# Cookbook:: my_first_cookbook
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.

package "httpd"

service 'httpd' do
    action [ :enable, :start ]
end

file '/var/www/html/index.html' do
    content '<html>
    <body>
        <h1> My first cookbook is ready </h1>
    </body>
    </html>'
end
