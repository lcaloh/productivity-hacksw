FasdUAS 1.101.10   ��   ��    k             l      ��  ��   tn
OmniFocus Task to PomoDoneApp Timer 

Now that OmniFocus 3 is no longer syncing with PomoDoneApp, I quickly threw together this AppleScript to (1) grab the currently selected OmniFocus task into the clipboard, (2) create a new task in PomoDoneApp with the OmniFocus task, and (3) start the timer. 

Created: Tue., 09-25-18  by by Leng Caloh / lengcaloh.com / twitter: @lengcaloh

Works with web-downloaded version of PomoDoneApp (https://pomodoneapp.com/download-pomodone-app.html). MIGHT work with Mac App Store version, just change the name of the app from "PomoDoneApp" to "PomoDone App" in the script. 

Resources: 
https://pomodoneapp.com/faq.html#shortcuts
https://eastmanreference.com/complete-list-of-applescript-key-codes

---
OmniFocus portion of the script based on Curt Clifton's "Complete & Await Reply" AppleScript for OmniFocus.
	Copyright � 2007-2008, 2012, 2014, Curtis Clifton
	All rights reserved.
	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
		� Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
		� Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
---
     � 	 	� 
 O m n i F o c u s   T a s k   t o   P o m o D o n e A p p   T i m e r   
 
 N o w   t h a t   O m n i F o c u s   3   i s   n o   l o n g e r   s y n c i n g   w i t h   P o m o D o n e A p p ,   I   q u i c k l y   t h r e w   t o g e t h e r   t h i s   A p p l e S c r i p t   t o   ( 1 )   g r a b   t h e   c u r r e n t l y   s e l e c t e d   O m n i F o c u s   t a s k   i n t o   t h e   c l i p b o a r d ,   ( 2 )   c r e a t e   a   n e w   t a s k   i n   P o m o D o n e A p p   w i t h   t h e   O m n i F o c u s   t a s k ,   a n d   ( 3 )   s t a r t   t h e   t i m e r .   
 
 C r e a t e d :   T u e . ,   0 9 - 2 5 - 1 8     b y   b y   L e n g   C a l o h   /   l e n g c a l o h . c o m   /   t w i t t e r :   @ l e n g c a l o h 
 
 W o r k s   w i t h   w e b - d o w n l o a d e d   v e r s i o n   o f   P o m o D o n e A p p   ( h t t p s : / / p o m o d o n e a p p . c o m / d o w n l o a d - p o m o d o n e - a p p . h t m l ) .   M I G H T   w o r k   w i t h   M a c   A p p   S t o r e   v e r s i o n ,   j u s t   c h a n g e   t h e   n a m e   o f   t h e   a p p   f r o m   " P o m o D o n e A p p "   t o   " P o m o D o n e   A p p "   i n   t h e   s c r i p t .   
 
 R e s o u r c e s :   
 h t t p s : / / p o m o d o n e a p p . c o m / f a q . h t m l # s h o r t c u t s 
 h t t p s : / / e a s t m a n r e f e r e n c e . c o m / c o m p l e t e - l i s t - o f - a p p l e s c r i p t - k e y - c o d e s 
 
 - - - 
 O m n i F o c u s   p o r t i o n   o f   t h e   s c r i p t   b a s e d   o n   C u r t   C l i f t o n ' s   " C o m p l e t e   &   A w a i t   R e p l y "   A p p l e S c r i p t   f o r   O m n i F o c u s . 
 	 C o p y r i g h t   �   2 0 0 7 - 2 0 0 8 ,   2 0 1 2 ,   2 0 1 4 ,   C u r t i s   C l i f t o n 
 	 A l l   r i g h t s   r e s e r v e d . 
 	 R e d i s t r i b u t i o n   a n d   u s e   i n   s o u r c e   a n d   b i n a r y   f o r m s ,   w i t h   o r   w i t h o u t   m o d i f i c a t i o n ,   a r e   p e r m i t t e d   p r o v i d e d   t h a t   t h e   f o l l o w i n g   c o n d i t i o n s   a r e   m e t : 
 	 	 "   R e d i s t r i b u t i o n s   o f   s o u r c e   c o d e   m u s t   r e t a i n   t h e   a b o v e   c o p y r i g h t   n o t i c e ,   t h i s   l i s t   o f   c o n d i t i o n s   a n d   t h e   f o l l o w i n g   d i s c l a i m e r . 
 	 	 "   R e d i s t r i b u t i o n s   i n   b i n a r y   f o r m   m u s t   r e p r o d u c e   t h e   a b o v e   c o p y r i g h t   n o t i c e ,   t h i s   l i s t   o f   c o n d i t i o n s   a n d   t h e   f o l l o w i n g   d i s c l a i m e r   i n   t h e   d o c u m e n t a t i o n   a n d / o r   o t h e r   m a t e r i a l s   p r o v i d e d   w i t h   t h e   d i s t r i b u t i o n . 
 	 T H I S   S O F T W A R E   I S   P R O V I D E D   B Y   T H E   C O P Y R I G H T   H O L D E R S   A N D   C O N T R I B U T O R S   " A S   I S "   A N D   A N Y   E X P R E S S   O R   I M P L I E D   W A R R A N T I E S ,   I N C L U D I N G ,   B U T   N O T   L I M I T E D   T O ,   T H E   I M P L I E D   W A R R A N T I E S   O F   M E R C H A N T A B I L I T Y   A N D   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E   A R E   D I S C L A I M E D .   I N   N O   E V E N T   S H A L L   T H E   C O P Y R I G H T   O W N E R   O R   C O N T R I B U T O R S   B E   L I A B L E   F O R   A N Y   D I R E C T ,   I N D I R E C T ,   I N C I D E N T A L ,   S P E C I A L ,   E X E M P L A R Y ,   O R   C O N S E Q U E N T I A L   D A M A G E S   ( I N C L U D I N G ,   B U T   N O T   L I M I T E D   T O ,   P R O C U R E M E N T   O F   S U B S T I T U T E   G O O D S   O R   S E R V I C E S ;   L O S S   O F   U S E ,   D A T A ,   O R   P R O F I T S ;   O R   B U S I N E S S   I N T E R R U P T I O N )   H O W E V E R   C A U S E D   A N D   O N   A N Y   T H E O R Y   O F   L I A B I L I T Y ,   W H E T H E R   I N   C O N T R A C T ,   S T R I C T   L I A B I L I T Y ,   O R   T O R T   ( I N C L U D I N G   N E G L I G E N C E   O R   O T H E R W I S E )   A R I S I N G   I N   A N Y   W A Y   O U T   O F   T H E   U S E   O F   T H I S   S O F T W A R E ,   E V E N   I F   A D V I S E D   O F   T H E   P O S S I B I L I T Y   O F   S U C H   D A M A G E . 
 - - - 
   
  
 l     ��������  ��  ��        l     ����  r         m     ��
�� 
msng  o      ���� 0 	itemtitle 	iTemTitle��  ��        l   � ����  O    �    O    �    O    �    l   �     k    �       r       !   n     " # " 1    ��
�� 
valL # 2    ��
�� 
OTst ! o      ���� $0 theselecteditems theSelectedItems   $ % $ Z     8 & '���� & l    ' (���� ( A     ' ) * ) l    % +���� + I    %�� ,��
�� .corecnte****       **** , o     !���� $0 theselecteditems theSelectedItems��  ��  ��   * m   % &���� ��  ��   ' k   * 4 - -  . / . I  * 1�� 0 1
�� .sysodisAaleR        TEXT 0 m   * + 2 2 � 3 3 T Y o u   m u s t   f i r s t   s e l e c t   a n   i t e m   t o   c o m p l e t e . 1 �� 4��
�� 
as A 4 m   , -��
�� EAlTwarN��   /  5�� 5 L   2 4����  ��  ��  ��   %  6�� 6 X   9 � 7�� 8 7 k   I � 9 9  : ; : O  I | < = < O   O { > ? > k   Z z @ @  A B A r   Z a C D C m   Z [��
�� boovtrue D 1   [ `��
�� 
pisf B  E�� E I  b z�� F��
�� .prcsclicnull��� ��� uiel F n   b v G H G 4   o v�� I
�� 
menI I m   r u J J � K K  C o p y   a s   L i n k H n   b o L M L 4   h o�� N
�� 
menE N m   k n O O � P P  E d i t M 4   b h�� Q
�� 
mbar Q m   f g���� ��  ��   ? 4   O W�� R
�� 
prcs R m   S V S S � T T  O m n i F o c u s = m   I L U U�                                                                                  sevs  alis    b  Leng MacBook HD                BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p     L e n g   M a c B o o k   H D  -System/Library/CoreServices/System Events.app   / ��   ;  V W V r   } � X Y X I  } �������
�� .JonsgClp****    ��� null��  ��   Y o      ���� 0 itemlink itemLink W  Z [ Z r   � � \ ] \ n   � � ^ _ ^ 1   � ���
�� 
pnam _ o   � ����� 0 anitem anItem ] o      ���� 0 	itemtitle 	iTemTitle [  `�� ` I  � ��� a��
�� .JonspClpnull���     **** a o   � ����� 0 	itemtitle 	iTemTitle��  ��  �� 0 anitem anItem 8 o   < =���� $0 theselecteditems theSelectedItems��    / ) (first document window whose index is 1)     � b b R   ( f i r s t   d o c u m e n t   w i n d o w   w h o s e   i n d e x   i s   1 )  n     c d c 1    ��
�� 
FCcn d 4    �� e
�� 
FCdw e m    ����   4   �� f
�� 
docu f m   
 ����   m     g g�                                                                                  OFOC  alis    4  Leng MacBook HD                BD ����OmniFocus.app                                                  ����            ����  
 cu             Applications  /:Applications:OmniFocus.app/     O m n i F o c u s . a p p     L e n g   M a c B o o k   H D  Applications/OmniFocus.app  / ��  ��  ��     h i h l     ��������  ��  ��   i  j�� j l  �C k���� k O   �C l m l k   �B n n  o p o I  � �������
�� .miscactvnull��� ��� null��  ��   p  q�� q O  �B r s r O   �A t u t k   �@ v v  w x w r   � � y z y m   � ���
�� boovtrue z 1   � ���
�� 
pisf x  { | { I  � ��� }��
�� .prcsclicnull��� ��� uiel } n   � � ~  ~ 4   � ��� �
�� 
menI � m   � � � � � � �  C r e a t e   n e w   t a s k  n   � � � � � 4   � ��� �
�� 
menE � m   � � � � � � �  F i l e � 4   � ��� �
�� 
mbar � m   � ����� ��   |  � � � l   � � � � � � I  � ��� � �
�� .prcskprsnull���     ctxt � m   � � � � � � �  v � �� ���
�� 
faal � m   � ���
�� eMdsKcmd��   �   Paste     � � � �    P a s t e   �  � � � I  � ��� ���
�� .sysodelanull��� ��� nmbr � m   � ����� ��   �  � � � l  � ���������  ��  ��   �  � � � I  � ��� ���
�� .prcskprsnull���     ctxt � 1   � ���
�� 
tab ��   �  � � � I  � ��� ���
�� .JonspClpnull���     **** � o   � ����� 0 itemlink itemLink��   �  � � � l   � � � � � I  ��� � �
�� .prcskprsnull���     ctxt � m   � � � � � �  v � �� ���
�� 
faal � m  ��
�� eMdsKcmd��   �   Paste     � � � �    P a s t e   �  � � � I �� ���
�� .sysodelanull��� ��� nmbr � m   � � ?���������   �  � � � l ��������  ��  ��   �  � � � I �� ���
�� .prcskprsnull���     ctxt � 1  ��
�� 
tab ��   �  � � � I $�� ���
�� .sysodelanull��� ��� nmbr � m    � � ?�      ��   �  � � � l  %2 � � � � I %2�� � �
�� .prcskcodnull���     **** � m  %(���� L � �� ���
�� 
faal � m  +.��
�� eMdsKcmd��   � &   Command-Enter to save the task     � � � � @   C o m m a n d - E n t e r   t o   s a v e   t h e   t a s k   �  � � � I 38�� ���
�� .sysodelanull��� ��� nmbr � m  34���� ��   �  � � � l 99��������  ��  ��   �  ��� � l  9@ � � � � I 9@�� ���
�� .prcskcodnull���     **** � m  9<���� 1��   � $  space key to start the timer     � � � � <   s p a c e   k e y   t o   s t a r t   t h e   t i m e r  ��   u 4   � ��� �
�� 
prcs � m   � � � � � � �  P o m o D o n e A p p s m   � � � ��                                                                                  sevs  alis    b  Leng MacBook HD                BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p     L e n g   M a c B o o k   H D  -System/Library/CoreServices/System Events.app   / ��  ��   m m   � � � ��                                                                                      @ alis    <  Leng MacBook HD                BD ����PomoDoneApp.app                                                ����            ����  
 cu             Applications  /:Applications:PomoDoneApp.app/      P o m o D o n e A p p . a p p     L e n g   M a c B o o k   H D  Applications/PomoDoneApp.app  / ��  ��  ��  ��       �� � � � � ���   � ��������
�� .aevtoappnull  �   � ****�� 0 	itemtitle 	iTemTitle�� $0 theselecteditems theSelectedItems�� 0 itemlink itemLink � � ��~�} � ��|
� .aevtoappnull  �   � **** � k    C � �   � �   � �  j�{�{  �~  �}   � �z�z 0 anitem anItem � /�y�x g�w�v�u�t�s�r�q 2�p�o�n�m�l U�k S�j�i�h O�g J�f�e�d�c�b ��a � � � ��`�_�^�]�\ � � ��[�Z�Y
�y 
msng�x 0 	itemtitle 	iTemTitle
�w 
docu
�v 
FCdw
�u 
FCcn
�t 
OTst
�s 
valL�r $0 theselecteditems theSelectedItems
�q .corecnte****       ****
�p 
as A
�o EAlTwarN
�n .sysodisAaleR        TEXT
�m 
kocl
�l 
cobj
�k 
prcs
�j 
pisf
�i 
mbar
�h 
menE
�g 
menI
�f .prcsclicnull��� ��� uiel
�e .JonsgClp****    ��� null�d 0 itemlink itemLink
�c 
pnam
�b .JonspClpnull���     ****
�a .miscactvnull��� ��� null
�` 
faal
�_ eMdsKcmd
�^ .prcskprsnull���     ctxt
�] .sysodelanull��� ��� nmbr
�\ 
tab �[ L
�Z .prcskcodnull���     ****�Y 1�|D�E�O� �*�k/ �*�k/�, �*�-�,E�O�j 	k ���l OhY hO _�[��l 	kh  a  .*a a / "e*a ,FO*a k/a a /a a /j UUO*j E` O�a ,E�O�j [OY��UUUOa  �*j Oa  �*a a  / �e*a ,FO*a k/a a !/a a "/j Oa #a $a %l &Okj 'O_ (j &O_ j Oa )a $a %l &Oa *j 'O_ (j &Oa +j 'Oa ,a $a %l -Olj 'Oa .j -UUU � � � � 4 t a l k   t o   N a t e   r e   S h a r e   l i n k � �X ��X  �   � �  � �  ��W ��V �  g�U
�U 
FCDo
�W 
FCac � � � �  h F D V m 4 s C r S c
�V kfrmID   � � � � < o m n i f o c u s : / / / t a s k / h F D V m 4 s C r S c  ascr  ��ޭ