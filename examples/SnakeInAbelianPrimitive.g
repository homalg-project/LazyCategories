#! @Chunk SnakeInAbelianPrimitive

LoadPackage( "LazyCategories" );

#! @Example
LoadPackage( "LinearAlgebraForCAP" );
#! true
LoadPackage( "GeneralizedMorphismsForCAP" );
#! true
SwitchGeneralizedMorphismStandard( "cospan" );
Q := HomalgFieldOfRationals( );
#! Q
id := HomalgIdentityMatrix( 8, Q );
#! <An unevaluated 8 x 8 identity matrix over an internal ring>
a := CertainColumns( CertainRows( id, [ 1, 2, 3 ] ), [ 2, 3, 4, 5 ] );
#! <An unevaluated non-zero 3 x 4 matrix over an internal ring>
b := CertainColumns( CertainRows( id, [ 1, 2, 3, 4 ] ), [ 2, 3, 4, 5, 6 ] );
#! <An unevaluated non-zero 4 x 5 matrix over an internal ring>
c := CertainColumns(
             CertainRows( id, [ 1, 2, 3, 4, 5 ] ), [ 3, 4, 5, 6, 7, 8 ] );
#! <An unevaluated non-zero 5 x 6 matrix over an internal ring>
IsZero( a * b );
#! false
IsZero( b * c );
#! false
IsZero( a * b * c );
#! true
Qmat := MatrixCategory( Q );
#! Category of matrices over Q
Lazy := LazyCategory( Qmat :
                show_evaluation := true, primitive_operations := true );
#! LazyCategory( Category of matrices over Q )
a := a / Lazy; SetLabel( a, "a" );
#! <An evaluated morphism in LazyCategory( Category of matrices over Q )>
b := b / Lazy; SetLabel( b, "b" ); SetLabel( Target( b ), "C" );
#! <An evaluated morphism in LazyCategory( Category of matrices over Q )>
c := c / Lazy; SetLabel( c, "c" );
#! <An evaluated morphism in LazyCategory( Category of matrices over Q )>
d := CokernelProjection( a );
#! <An epimorphism in LazyCategory( Category of matrices over Q )>
e := CokernelColift( a, PreCompose( b, c ) );
#! <A morphism in LazyCategory( Category of matrices over Q )>
f := KernelEmbedding( e );
#! <A monomorphism in LazyCategory( Category of matrices over Q )>
g := KernelEmbedding( c );
#! <A monomorphism in LazyCategory( Category of matrices over Q )>
h := KernelLift( c, PreCompose( a, b ) );
#! <A morphism in LazyCategory( Category of matrices over Q )>
i := CokernelProjection( h );
#! <An epimorphism in LazyCategory( Category of matrices over Q )>
ff := AsGeneralizedMorphism( f );
#! <A morphism in Generalized morphism category of
#!  LazyCategory( Category of matrices over Q ) by cospan>
dd := AsGeneralizedMorphism( d );
#! <A morphism in Generalized morphism category of
#!  LazyCategory( Category of matrices over Q ) by cospan>
bb := AsGeneralizedMorphism( b );
#! <A morphism in Generalized morphism category of
#!  LazyCategory( Category of matrices over Q ) by cospan>
gg := AsGeneralizedMorphism( g );
#! <A morphism in Generalized morphism category of
#!  LazyCategory( Category of matrices over Q ) by cospan>
ii := AsGeneralizedMorphism( i );
#! <A morphism in Generalized morphism category of
#!  LazyCategory( Category of matrices over Q ) by cospan>
ss := PreCompose( [ ff, PseudoInverse( dd ), bb, PseudoInverse( gg ), ii ] );
#! <A morphism in Generalized morphism category of
#!  LazyCategory( Category of matrices over Q ) by cospan>
s := HonestRepresentative( ss );
#! <A morphism in LazyCategory( Category of matrices over Q )>
j := KernelObjectFunctorial( b, d, e );
#! <A morphism in LazyCategory( Category of matrices over Q )>
k := CokernelObjectFunctorial( h, g, b );
#! <A morphism in LazyCategory( Category of matrices over Q )>
HK := HomologyObject( j, s );
#! <An object in LazyCategory( Category of matrices over Q )>
HC := HomologyObject( s, k );
#! <An object in LazyCategory( Category of matrices over Q )>
#! @EndExample
