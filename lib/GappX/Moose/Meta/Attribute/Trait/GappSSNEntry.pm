package GappX::Moose::Meta::Attribute::Trait::GappSSNEntry;
use Moose::Role;

before '_process_options' => sub {
    my ( $class, $name, $opts ) = @_;
    $opts->{gclass} = 'GappX::SSNEntry' if ! exists $opts->{class};
};

package Moose::Meta::Attribute::Custom::Trait::GappSSNEntry;
sub register_implementation { 'GappX::Moose::Meta::Attribute::Trait::GappSSNEntry' };
1;
