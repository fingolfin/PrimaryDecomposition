#############################################################################
##
##  Tools.gd                                    PrimaryDecomposition package
##
##  Copyright 2013,      Mohamed Barakat, University of Kaiserslautern
##                  Eva Maria Hemmerling, University of Kaiserslautern
##
##  Declaration of some tools.
##
#############################################################################

#! @Chapter Tools

####################################
#
#! @Section Attributes
#
####################################

#! @Description
#!  Computes a basis of the ring <A>R</A>,
#!  provided it is free of finite rank over its coefficients ring.
#! @Arguments R
#! @Returns a &homalg; matrix
DeclareAttribute( "BasisOverCoefficientsRing",
        IsHomalgRing );
#! @InsertSystem BasisOverCoefficientsRing

#! @Description
#!  Computes a representation matrix of the ring element <A>r</A>,
#!  provided it is free of finite rank over its coefficients ring.
#! @Arguments r
#! @Returns a &homalg; matrix
DeclareAttribute( "RepresentationOverCoefficientsRing",
        IsHomalgRingElement );
#! @InsertSystem RepresentationOverCoefficientsRing

#! @Description
#!  Computes the FGLM data of the ring <A>R</A> (see <Cite Key="SJ"/>),
#!  provided it is free of finite rank over its coefficients ring.
#!  The FGLM data of such a ring consists of the representationmatrices
#!  of all basiselements of <A>R</A> computed by BasisOverCoefficientsRing.
#! @Arguments R
#! @Returns a list
DeclareAttribute( "FGLMdata",
        IsHomalgRing );
#! @InsertSystem FGLMdata

#! @Description
#!  Computes the minimal polynomial of the element <A>r</A>
#!  of a ring <M>R</M> of finite rank over its coefficients ring.
#! @Arguments r
#! @Returns a matrix
# @InsertChunk MinimalPolynomial_ring_element
#! @Group MinimalPolynomial
DeclareAttribute( "MinimalPolynomial",
	IsHomalgRingElement );
#! @InsertSystem MinimalPolynomial

#! @Description
#!  Computes the irreducible factors of the square free part of the univariate polynomial <A>p</A>.
#! @Arguments p
#! @Returns a list
DeclareAttribute( "SquareFreeFactors",
	IsHomalgRingElement );

####################################
#
#! @Section Operations
#
####################################

#! @Arguments r, str
#! @Group MinimalPolynomial
DeclareOperation( "MinimalPolynomial",
	[ IsHomalgRingElement, IsString ] );

#! @Arguments r, t
#! @Group MinimalPolynomial
DeclareOperation( "MinimalPolynomial",
	[ IsHomalgRingElement, IsHomalgRingElement ] );
