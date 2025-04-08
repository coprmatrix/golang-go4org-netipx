s~%global\s+goipath\s+(.*)/(.*)~%global goihead \2\n%global goipath go4.org/%{goihead}~g;
s~(Version:)[^0-9\.]*(.*)~\1  \2\n%global scm git\n%global debug_package %{nil}\n~g;
s~%gocheck~~g;
s~Name:.*~Name: golang-go4org-netipx~g;
s~URL:.*~URL: https:\/\/github.com\/go4org\/%{goihead}~g;
s~Source:.*~%define scommit %{?commit}%{?!commit:v%{version}}\n%define stag %{?tag}%{?!tag:%scommit}\nSource: %{url}/archive/%{stag}/%{goihead}-%{stag}.tar.gz~g;
