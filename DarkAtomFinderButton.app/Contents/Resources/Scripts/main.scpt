JsOsaDAS1.001.00bplist00�Vscripto% / /     T h e   M I T   L i c e n s e   ( M I T ) 
 / /     C o p y r i g h t   �   2 0 1 8   L e x   T a n g ,   h t t p : / / l e x r u s . c o m 
 / / 
 / /     h t t p s : / / g i t h u b . c o m / l e x r u s / L T F i n d e r B u t t o n s 
 / / 
 / /     P e r m i s s i o n   i s   h e r e b y   g r a n t e d ,   f r e e   o f   c h a r g e ,   t o   a n y   p e r s o n   o b t a i n i n g   a   c o p y 
 / /     o f   t h i s   s o f t w a r e   a n d   a s s o c i a t e d   d o c u m e n t a t i o n   f i l e s   ( t h e    S o f t w a r e  ) ,   t o   d e a l 
 / /     i n   t h e   S o f t w a r e   w i t h o u t   r e s t r i c t i o n ,   i n c l u d i n g   w i t h o u t   l i m i t a t i o n   t h e   r i g h t s 
 / /     t o   u s e ,   c o p y ,   m o d i f y ,   m e r g e ,   p u b l i s h ,   d i s t r i b u t e ,   s u b l i c e n s e ,   a n d / o r   s e l l 
 / /     c o p i e s   o f   t h e   S o f t w a r e ,   a n d   t o   p e r m i t   p e r s o n s   t o   w h o m   t h e   S o f t w a r e   i s 
 / /     f u r n i s h e d   t o   d o   s o ,   s u b j e c t   t o   t h e   f o l l o w i n g   c o n d i t i o n s : 
 / / 
 / /     T h e   a b o v e   c o p y r i g h t   n o t i c e   a n d   t h i s   p e r m i s s i o n   n o t i c e   s h a l l   b e   i n c l u d e d   i n 
 / /     a l l   c o p i e s   o r   s u b s t a n t i a l   p o r t i o n s   o f   t h e   S o f t w a r e . 
 / / 
 / /     T H E   S O F T W A R E   I S   P R O V I D E D    A S   I S  ,   W I T H O U T   W A R R A N T Y   O F   A N Y   K I N D ,   E X P R E S S   O R 
 / /     I M P L I E D ,   I N C L U D I N G   B U T   N O T   L I M I T E D   T O   T H E   W A R R A N T I E S   O F   M E R C H A N T A B I L I T Y , 
 / /     F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E   A N D   N O N I N F R I N G E M E N T .   I N   N O   E V E N T   S H A L L   T H E 
 / /     A U T H O R S   O R   C O P Y R I G H T   H O L D E R S   B E   L I A B L E   F O R   A N Y   C L A I M ,   D A M A G E S   O R   O T H E R 
 / /     L I A B I L I T Y ,   W H E T H E R   I N   A N   A C T I O N   O F   C O N T R A C T ,   T O R T   O R   O T H E R W I S E ,   A R I S I N G   F R O M , 
 / /     O U T   O F   O R   I N   C O N N E C T I O N   W I T H   T H E   S O F T W A R E   O R   T H E   U S E   O R   O T H E R   D E A L I N G S   I N 
 / /     T H E   S O F T W A R E . 
 
 v a r   a p p   =   A p p l i c a t i o n . c u r r e n t A p p l i c a t i o n ( ) 
 a p p . i n c l u d e S t a n d a r d A d d i t i o n s   =   t r u e 
 
 O b j C . i m p o r t ( " F o u n d a t i o n " ) 
 
 f u n c t i o n   u r l P a t h T o P o s i x P a t h ( p a t h )   { 
 	 r e t u r n   d e c o d e U R I C o m p o n e n t ( p a t h ) 
 	         . r e p l a c e ( / ^ \ / ? f i l e [ : ] \ / + / i ,   ' / ' ) 
 	 	 . r e p l a c e ( / ( " ) / g ,   ' \ \ $ 1 ' ) 
 } 
 
 f u n c t i o n   g e t C u r r e n t F i n d e r S e l e c t i o n s ( )   { 
 	 l e t   F i n d e r   =   A p p l i c a t i o n ( ' F i n d e r ' ) 
 	 
 	 l e t   i t e m s   =   [ ] 
 	 
 	 f o r   ( l e t   i   i n   F i n d e r . s e l e c t i o n ( ) )   { 
 	 	 l e t   f i l e U R L   =   $ . N S U R L . a l l o c . i n i t F i l e U R L W i t h P a t h ( F i n d e r . s e l e c t i o n ( ) [ i ] . u r l ( ) ) 
 	 	 l e t   u r l P a t h   =   O b j C . u n w r a p ( f i l e U R L . p a t h ) 
 	 	 i t e m s [ i t e m s . l e n g t h ]   =   u r l P a t h T o P o s i x P a t h ( u r l P a t h ) 
 	 } 
 	 
 	 i f   ( i t e m s . l e n g t h   = =   0 )   { 
 	 	 t r y   { 
 	 	 	 r e t u r n   [ u r l P a t h T o P o s i x P a t h ( F i n d e r . w i n d o w s [ 0 ] . t a r g e t ( ) . u r l ( ) ) ] 
 	 	 }   c a t c h   ( e )   { 
 	 	 	 r e t u r n   [ u r l P a t h T o P o s i x P a t h ( F i n d e r . d e s k t o p ( ) . u r l ( ) ) ] 
 	 	 } 
 	 } 
 	 
 	 r e t u r n   i t e m s 
 	 
 } 
 
 g e t C u r r e n t F i n d e r S e l e c t i o n s ( ) . f o r E a c h (   i t e m   = >   { 
 	 l e t   c m d   =   ` / u s r / l o c a l / b i n / a t o m   " $ { i t e m } " ` 
 	 a p p . d o S h e l l S c r i p t ( c m d ) 
 } )                              `jscr  ��ޭ