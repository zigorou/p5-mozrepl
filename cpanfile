requires 'perl', '5.008001';

requires 'Carp';
requires 'Class::Accessor::Fast';
requires 'Class::Data::Inheritable';
requires 'Data::Dump';
requires 'Data::JavaScript::Anon';
requires 'File::Spec';
requires 'Module::Pluggable::Fast';
requires 'Net::Telnet';
requires 'Template';
requires 'Template::Provider::FromDATA';
requires 'Text::SimpleTable';
requires 'UNIVERSAL::require';
requires 'URI';

on 'test' => sub {
    requires 'Test::More', '0.98';
    requires 'Test::Base';
};

