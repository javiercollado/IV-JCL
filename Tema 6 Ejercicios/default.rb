package 'nginx'
package 'geany'
directory '/home/javier/web'
file "/home/javier/index.html" do
	owner "javier"
	group "javier"
	mode 00544
	action :create
	content "HOLA MUNDO"
end