FasdUAS 1.101.10   ��   ��    k             l     ������  ��        l     �� 	��   	  PopularityContest 0.3      
  
 l     �� ��     j.hobbs 2005         l     ������  ��     ��  l   � ��  O    �    k   �       l   ������  ��        l   �� ��     get user name         r        c        n    	     1    	��
�� 
azf7   1    ��
�� 
az54  m   	 
��
�� 
TEXT  o      ���� 0 first_user_name     ! " ! r     # $ # c     % & % n     ' ( ' 1    ��
�� 
azf8 ( 1    ��
�� 
az54 & m    ��
�� 
TEXT $ o      ���� 0 last_user_name   "  ) * ) r     + , + b     - . - b     / 0 / o    ���� 0 first_user_name   0 m     1 1       . o    ���� 0 last_user_name   , o      ���� 0 	user_name   *  2 3 2 l     ������  ��   3  4�� 4 X    � 5�� 6 5 k   2� 7 7  8 9 8 l  2 2������  ��   9  : ; : l  2 2�� <��   < 4 .get name and email addresses from address book    ;  = > = r   2 9 ? @ ? c   2 7 A B A n   2 5 C D C 1   3 5��
�� 
azf7 D o   2 3���� 0 this_person   B m   5 6��
�� 
TEXT @ o      ���� 0 
first_name   >  E F E r   : A G H G c   : ? I J I n   : = K L K 1   ; =��
�� 
azf8 L o   : ;���� 0 this_person   J m   = >��
�� 
TEXT H o      ���� 0 	last_name   F  M N M r   B K O P O b   B G Q R Q b   B E S T S o   B C���� 0 
first_name   T m   C D U U       R o   E F���� 0 	last_name   P o      ���� 0 address_book_entry_name   N  V W V l  L L�� X��   X < 6set address_book_email to email of this_person as text    W  Y Z Y l  L L������  ��   Z  [�� [ Z   L� \ ]���� \ >  L S ^ _ ^ o   L O���� 0 address_book_entry_name   _ m   O R ` ` ! missing value missing value    ] k   V� a a  b c b l  V V������  ��   c  d e d l  V V�� f��   f $ get the date of the last email    e  g h g r   V i i j i c   V e k l k l  V c m�� m I  V c�� n��
�� .sysoexecTEXT���     TEXT n b   V _ o p o b   V [ q r q m   V Y s s J Dmdls -name kMDItemContentCreationDate `mdfind "(kMDItemAuthors == "*    r o   Y Z���� 0 
first_name   p m   [ ^ t t ; 5*" ) && (kMDItemKind == "emlx")" | tail -1` | tail -1   ��  ��   l m   c d��
�� 
TEXT j o      ���� 0 date_last_email   h  u v u l  j j������  ��   v  w x w l  j j�� y��   y + %trim the date of the email down a bit    x  z { z Q   j � | }�� | k   m � ~ ~   �  r   m � � � � c   m � � � � n   m ~ � � � 7  p ~�� � �
�� 
cha  � m   v z����  � m   { }������ � o   m p���� 0 date_last_email   � m   ~ ��
�� 
TEXT � o      ���� 0 date_last_email   �  ��� � r   � � � � � c   � � � � � n   � � � � � 7  � ��� � �
�� 
cha  � m   � �����  � m   � �����  � o   � ����� 0 date_last_email   � m   � ���
�� 
TEXT � o      ���� 0 date_last_email  ��   } R      ������
�� .ascrerr ****      � ****��  ��  ��   {  � � � l  � �������  ��   �  � � � l  � ��� ���   � 6 0parse the date string to a human readable format    �  � � � r   � � � � � c   � � � � � n   � � � � � 7  � ��� � �
�� 
cha  � m   � �����  � m   � �����  � o   � ����� 0 date_last_email   � m   � ���
�� 
TEXT � o      ���� 0 year_last_email   �  � � � r   � � � � � c   � � � � � n   � � � � � 7  � ��� � �
�� 
cha  � m   � �����  � m   � �����  � o   � ����� 0 date_last_email   � m   � ���
�� 
TEXT � o      ���� 0 month_last_email   �  � � � r   � � � � � c   � � � � � n   � � � � � 7  � ��� � �
�� 
cha  � m   � ����� 	 � m   � ����� 
 � o   � ����� 0 date_last_email   � m   � ���
�� 
TEXT � o      ���� 0 day_last_email   �  � � � l  � �������  ��   �  � � � Z  � � ����� � =  � � � � � o   � ����� 0 month_last_email   � m   � � � �  01    � r   � � � � m   � � � �  January    � o      ���� 0 word_month_last_email  ��  ��   �  � � � Z  � ����� � =  � � � o  ���� 0 month_last_email   � m   � �  02    � r   � � � m   � �  Febuary    � o      ���� 0 word_month_last_email  ��  ��   �  � � � Z 3 � ����� � = % � � � o  !���� 0 month_last_email   � m  !$ � �  03    � r  (/ � � � m  (+ � �  March    � o      ���� 0 word_month_last_email  ��  ��   �  � � � Z 4I � ����� � = 4; � � � o  47���� 0 month_last_email   � m  7: � �  04    � r  >E � � � m  >A � �  April    � o      ���� 0 word_month_last_email  ��  ��   �  � � � Z J_ � ����� � = JQ � � � o  JM���� 0 month_last_email   � m  MP � �  05    � r  T[ � � � m  TW � � 	 May    � o      ���� 0 word_month_last_email  ��  ��   �  � � � Z `u � ����� � = `g � � � o  `c���� 0 month_last_email   � m  cf � �  06    � r  jq � � � m  jm � � 
 June    � o      ���� 0 word_month_last_email  ��  ��   �  � � � Z v� � ����� � = v} � � � o  vy���� 0 month_last_email   � m  y| � �  07    � r  �� � � � m  �� � � 
 July    � o      ���� 0 word_month_last_email  ��  ��   �  � � � Z �� � ��~ � = �� o  ���}�} 0 month_last_email   m  ��  08     r  �� m  ��  August    o      �|�| 0 word_month_last_email  �  �~   �  Z ��	
�{�z	 = �� o  ���y�y 0 month_last_email   m  ��  09   
 r  �� m  ��  	September    o      �x�x 0 word_month_last_email  �{  �z    Z ���w�v = �� o  ���u�u 0 month_last_email   m  ��  10    r  �� m  ��  October    o      �t�t 0 word_month_last_email  �w  �v    Z ���s�r = ��  o  ���q�q 0 month_last_email    m  ��!!  11    r  ��"#" m  ��$$  November   # o      �p�p 0 word_month_last_email  �s  �r   %&% Z ��'(�o�n' = ��)*) o  ���m�m 0 month_last_email  * m  ��++  12   ( r  ��,-, m  ��..  December   - o      �l�l 0 word_month_last_email  �o  �n  & /0/ l ���k�j�k  �j  0 121 r  �343 c  �565 b  �787 b  �	9:9 b  �;<; b  �=>= o  ���i�i 0 word_month_last_email  > m  � ??      < o  �h�h 0 day_last_email  : m  @@  ,    8 o  	�g�g 0 year_last_email  6 m  �f
�f 
TEXT4 o      �e�e "0 human_readable_date_last_email  2 ABA l �d�c�d  �c  B CDC l �bE�b  E $ get the path of the last email   D FGF r  %HIH l !J�aJ I !�`K�_
�` .sysoexecTEXT���     TEXTK b  LML b  NON m  PP # mdfind "(kMDItemAuthors == "*   O o  �^�^ 0 
first_name  M m  QQ 0 **" ) && (kMDItemKind == "emlx")" | tail -1   �_  �a  I o      �]�] 0 path_last_email  G RSR l &&�\�[�\  �[  S TUT l &&�Z�Y�Z  �Y  U VWV l &&�XX�X  X $ check if the date is not empty   W YZY Z  &�[\�W�V[ > &-]^] o  &)�U�U 0 date_last_email  ^ m  ),__      \ k  0�`` aba l 00�T�S�T  �S  b c�Rc O  0�ded k  6�ff ghg I 6;�Q�P�O
�Q .miscactvnull��� ��� null�P  �O  h iji l <<�N�M�N  �M  j klk l <<�Lm�L  m " display informational dialog   l non I <w�Kpq
�K .sysodlogaskr        TEXTp b  <[rsr b  <Wtut b  <Svwv b  <Oxyx b  <Kz{z b  <G|}| b  <C~~ o  <?�J�J 0 address_book_entry_name   m  ?B�� $  and you last corresponded on:   } o  CF�I
�I 
ret { o  GJ�H
�H 
ret y o  KN�G�G "0 human_readable_date_last_email  w o  OR�F
�F 
ret u o  SV�E
�E 
ret s m  WZ��  	Continue?   q �D��
�D 
btns� J  ^i�� ��� m  ^a�� 
 Quit   � ��� m  ad��  
Open Email   � ��C� m  dg��  OK   �C  � �B��
�B 
dflt� m  lm�A�A � �@��?
�@ 
disp� m  pq�>�> �?  o ��=� Z  x������ = x���� l x��<� n  x��� 1  {�;
�; 
bhit� l x{��:� 1  x{�9
�9 
rslt�:  �<  � m  ���  OK   � k  ���� ��� l ���8�7�8  �7  � ��6� l ���5��5  � - 'keep going onto next address book entry   �6  � ��� = ����� l ����4� n  ����� 1  ���3
�3 
bhit� l ����2� 1  ���1
�1 
rslt�2  �4  � m  ����  
Open Email   � ��0� k  ���� ��� l ���/�.�/  �.  � ��� l ���-��-  �  open the email   � ��� I ���,��+
�, .sysoexecTEXT���     TEXT� b  ����� b  ����� m  ����  open "   � o  ���*�* 0 path_last_email  � m  ����  "   �+  � ��)� l ���(�'�(  �'  �)  �0  � k  ���� ��� l ���&��&  � 
 quit   � ��%� L  ���$�$  �%  �=  e m  03���null     3߰��  ^Mail.app���п��`��4    +��   ��S���� ����S��EB��� ��emal   alis    <  	powerbook                  ��9�H+    ^Mail.app                                                         F�aTp        ����  	                Applications    ���      �a��      ^  powerbook:Applications:Mail.app     M a i l . a p p   	 p o w e r b o o k  Applications/Mail.app   / ��  �R  �W  �V  Z ��#� l ���"�!�"  �!  �#  ��  ��  ��  �� 0 this_person   6 2   # &� 
�  
azf4��    m     ���null     ߀��  ^Address Book.appP�H?��s�d��Ϡ   �`   )       �6(�Gk�����adrb   alis    \  	powerbook                  ��9�H+    ^Address Book.app                                                ��l�b        ����  	                Applications    ���      �m=�      ^  'powerbook:Applications:Address Book.app   "  A d d r e s s   B o o k . a p p   	 p o w e r b o o k  Applications/Address Book.app   / ��  ��  ��       ����  � �
� .aevtoappnull  �   � ****� �������
� .aevtoappnull  �   � ****� k    ���  ��  �  �  � �� 0 this_person  � U������� 1������� U�
 ` s t�	��������� ���������� � ��� � � � � � � � � � � � �!$+.?@��PQ��_��������������������������
� 
az54
� 
azf7
� 
TEXT� 0 first_user_name  
� 
azf8� 0 last_user_name  � 0 	user_name  
� 
azf4
� 
kocl
� 
cobj
� .corecnte****       ****� 0 
first_name  � 0 	last_name  �
 0 address_book_entry_name  
�	 .sysoexecTEXT���     TEXT� 0 date_last_email  
� 
cha � � �  �  � � 0 year_last_email  �  �� �� 0 month_last_email  �� 	�� 
�� 0 day_last_email  �� 0 word_month_last_email  �� "0 human_readable_date_last_email  �� 0 path_last_email  
�� .miscactvnull��� ��� null
�� 
ret 
�� 
btns
�� 
dflt
�� 
disp
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
bhit����*�,�,�&E�O*�,�,�&E�O��%�%E�O�*�-[��l kh  ��,�&E�O��,�&E�O��%�%E` O_ a da �%a %j �&E` O 4_ [a \[Za \Zi2�&E` O_ [a \[Zk\Za 2�&E` W X  hO_ [a \[Zk\Za 2�&E` O_ [a \[Za \Za 2�&E` O_ [a \[Za  \Za !2�&E` "O_ a #  a $E` %Y hO_ a &  a 'E` %Y hO_ a (  a )E` %Y hO_ a *  a +E` %Y hO_ a ,  a -E` %Y hO_ a .  a /E` %Y hO_ a 0  a 1E` %Y hO_ a 2  a 3E` %Y hO_ a 4  a 5E` %Y hO_ a 6  a 7E` %Y hO_ a 8  a 9E` %Y hO_ a :  a ;E` %Y hO_ %a <%_ "%a =%_ %�&E` >Oa ?�%a @%j E` AO_ a B �a C z*j DO_ a E%_ F%_ F%_ >%_ F%_ F%a G%a Ha Ia Ja Kmva Lma Mka  NO_ Oa P,a Q  hY &_ Oa P,a R  a S_ A%a T%j OPY hUY hOPY h[OY�sUascr  ��ޭ