#! @Chunk SnakeInFreeAbelianPrimitive

LoadPackage( "LazyCategories" );

#! @Example
LoadPackage( "Algebroid", ">= 2022.05-02" );
#! true
q := RightQuiver( "q(4)[a:1->2,b:2->3,c:3->4]" );
#! q(4)[a:1->2,b:2->3,c:3->4]
Fq := FreeCategory( q );
#! FreeCategory( RightQuiver( "q(4)[a:1->2,b:2->3,c:3->4]" ) )
ZZ := HomalgRingOfIntegers( );
#! Z
Zq := ZZ[Fq];
#! Algebroid over Z freely generated by the right quiver q(4)[a:1->2,b:2->3,c:3->4]
A := Zq / [ Zq.abc ];
#! Algebroid generated by the right quiver q(4)[a:1->2,b:2->3,c:3->4]
LoadPackage( "FreydCategoriesForCAP" );
#! true
A_add := AdditiveClosure( A );
#! Additive closure( Algebroid generated by
#! the right quiver q(4)[a:1->2,b:2->3,c:3->4] )
A_abel := AdelmanCategory( A_add );
#! Adelman category( Additive closure( Algebroid generated
#! by the right quiver q(4)[a:1->2,b:2->3,c:3->4] ) )
LoadPackage( "LazyCategories" );
#! true
Lazy := LazyCategory( A_abel :
                show_evaluation := true, primitive_operations := true );
#! LazyCategory( Adelman category( Additive closure( Algebroid
#! generated by the right quiver q(4)[a:1->2,b:2->3,c:3->4] ) ) )
a := A.a / A_add / A_abel / Lazy;
#! <An evaluated morphism in LazyCategory( Adelman category( Additive closure(
#!  Algebroid generated by the right quiver q(4)[a:1->2,b:2->3,c:3->4] ) ) )>
b := A.b / A_add / A_abel / Lazy;
#! <An evaluated morphism in LazyCategory( Adelman category( Additive closure(
#!  Algebroid generated by the right quiver q(4)[a:1->2,b:2->3,c:3->4] ) ) )>
c := A.c / A_add / A_abel / Lazy;
#! <An evaluated morphism in LazyCategory( Adelman category( Additive closure(
#!  Algebroid generated by the right quiver q(4)[a:1->2,b:2->3,c:3->4] ) ) )>
SetLabel( Source( a ), "1" );
SetLabel( Source( b ), "2" );
SetLabel( Range( b ), "3" );
SetLabel( Range( c ), "4" );
d := CokernelProjection( a );
#! <An epimorphism in LazyCategory( Adelman category( Additive closure(
#!  Algebroid generated by the right quiver q(4)[a:1->2,b:2->3,c:3->4] ) ) )>
e := CokernelColift( a, PreCompose( b, c ) );
#! <A morphism in LazyCategory( Adelman category( Additive closure(
#!  Algebroid generated by the right quiver q(4)[a:1->2,b:2->3,c:3->4] ) ) )>
f := KernelEmbedding( e );
#! <A monomorphism in LazyCategory( Adelman category( Additive closure(
#!  Algebroid generated by the right quiver q(4)[a:1->2,b:2->3,c:3->4] ) ) )>
g := KernelEmbedding( c );
#! <A monomorphism in LazyCategory( Adelman category( Additive closure(
#!  Algebroid generated by the right quiver q(4)[a:1->2,b:2->3,c:3->4] ) ) )>
h := KernelLift( c, PreCompose( a, b ) );
#! <A morphism in LazyCategory( Adelman category( Additive closure(
#!  Algebroid generated by the right quiver q(4)[a:1->2,b:2->3,c:3->4] ) ) )>
i := CokernelProjection( h );
#! <An epimorphism in LazyCategory( Adelman category( Additive closure(
#!  Algebroid generated by the right quiver q(4)[a:1->2,b:2->3,c:3->4] ) ) )>
ff := AsGeneralizedMorphism( f );
#! <A morphism in Generalized morphism category of LazyCategory(
#!  Adelman category( Additive closure( Algebroid generated by the
#!  right quiver q(4)[a:1->2,b:2->3,c:3->4] ) ) ) by cospan>
dd := AsGeneralizedMorphism( d );
#! <A morphism in Generalized morphism category of LazyCategory(
#!  Adelman category( Additive closure( Algebroid generated by the
#!  right quiver q(4)[a:1->2,b:2->3,c:3->4] ) ) ) by cospan>
bb := AsGeneralizedMorphism( b );
#! <A morphism in Generalized morphism category of LazyCategory(
#!  Adelman category( Additive closure( Algebroid generated by the
#!  right quiver q(4)[a:1->2,b:2->3,c:3->4] ) ) ) by cospan>
gg := AsGeneralizedMorphism( g );
#! <A morphism in Generalized morphism category of LazyCategory(
#!  Adelman category( Additive closure( Algebroid generated by the
#!  right quiver q(4)[a:1->2,b:2->3,c:3->4] ) ) ) by cospan>
ii := AsGeneralizedMorphism( i );
#! <A morphism in Generalized morphism category of LazyCategory(
#!  Adelman category( Additive closure( Algebroid generated by the
#!  right quiver q(4)[a:1->2,b:2->3,c:3->4] ) ) ) by cospan>
ss := PreCompose( [ ff, PseudoInverse( dd ), bb, PseudoInverse( gg ), ii ] );
#! <A morphism in Generalized morphism category of LazyCategory(
#!  Adelman category( Additive closure( Algebroid generated by the
#!  right quiver q(4)[a:1->2,b:2->3,c:3->4] ) ) ) by cospan>
s := HonestRepresentative( ss );
#! <A morphism in LazyCategory( Adelman category( Additive closure(
#!  Algebroid generated by the right quiver q(4)[a:1->2,b:2->3,c:3->4] ) ) )>
j := KernelObjectFunctorial( b, d, e );
#! <A morphism in LazyCategory( Adelman category( Additive closure(
#!  Algebroid generated by the right quiver q(4)[a:1->2,b:2->3,c:3->4] ) ) )>
k := CokernelObjectFunctorial( h, g, b );
#! <A morphism in LazyCategory( Adelman category( Additive closure(
#!  Algebroid generated by the right quiver q(4)[a:1->2,b:2->3,c:3->4] ) ) )>
HK := HomologyObject( j, s );
#! <An object in LazyCategory( Adelman category( Additive closure(
#!  Algebroid generated by the right quiver q(4)[a:1->2,b:2->3,c:3->4] ) ) )>
HC := HomologyObject( s, k );
#! <An object in LazyCategory( Adelman category( Additive closure(
#!  Algebroid generated by the right quiver q(4)[a:1->2,b:2->3,c:3->4] ) ) )>
#! @EndExample
