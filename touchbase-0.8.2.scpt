FasdUAS 1.101.10   ��   ��    k             l     ������  ��        l     �� 	��   	  TouchBase 0.8.2      
  
 l     �� ��     j.hobbs 2005         l     ������  ��        l      �� ��   '!
FEATURE TO DO/BUGFIXES:
* build array and sort table cells by date
* color code egregiously stale emails
* fix bug with subject lines & unescaped characters
* insert CSS directly into html document
* move output html file from /tmp to user-selectable POSIX path
* remove user from output
         l     ������  ��        l     ��  Q       ��  I   �� ��
�� .sysoexecTEXT���     TEXT  m        rm /tmp/report.html   ��    R      ������
�� .ascrerr ****      � ****��  ��  ��  ��        l     ������  ��        l     �� ��     make the file        !   l    "�� " I   �� #��
�� .sysoexecTEXT���     TEXT # m     $ $  touch /tmp/report.html   ��  ��   !  % & % l     ������  ��   &  ' ( ' l     �� )��   )  start the html    (  * + * l    ,�� , I   �� -��
�� .sysoexecTEXT���     TEXT - m     . . K Eecho "<html><head><title>TouchBase</title>" | cat >> /tmp/report.html   ��  ��   +  / 0 / l     �� 1��   1 � �do shell script "echo \"<link rel=\"stylesheet\" href=\"css/visual.css\" type=\"text/css\" media=\"screen\" title=\"Primary Stylesheet\" charset=\"utf-8\" />\" | cat >> /tmp/report.html"    0  2 3 2 l   % 4�� 4 r    % 5 6 5 l   # 7�� 7 I   #�� 8��
�� .sysoexecTEXT���     TEXT 8 m     9 9  date "+%m/%d/%y"   ��  ��   6 o      ���� 0 report_date  ��   3  : ; : l  & / <�� < I  & /�� =��
�� .sysoexecTEXT���     TEXT = b   & + > ? > b   & ) @ A @ m   & ' B B ( "echo "</head><h2>TouchBase Report     A o   ' (���� 0 report_date   ? m   ) * C C &  </h2>" | cat >> /tmp/report.html   ��  ��   ;  D E D l     ������  ��   E  F G F l     �� H��   H  
time stamp    G  I J I l  0 7 K�� K r   0 7 L M L l  0 5 N�� N I  0 5�� O��
�� .sysoexecTEXT���     TEXT O m   0 1 P P &  date "+REPORT STARTED: %H:%M:%S"   ��  ��   M o      ���� 0 
time_start  ��   J  Q R Q l  8 A S�� S I  8 A�� T��
�� .sysoexecTEXT���     TEXT T b   8 = U V U b   8 ; W X W m   8 9 Y Y  echo "    X o   9 :���� 0 
time_start   V m   ; < Z Z ! " | cat >> /tmp/report.html   ��  ��   R  [ \ [ l     ������  ��   \  ] ^ ] l     �� _��   _  start the table    ^  ` a ` l  B G b�� b I  B G�� c��
�� .sysoexecTEXT���     TEXT c m   B C d d E ?echo "<TABLE border="2" width="600">" | cat >> /tmp/report.html   ��  ��   a  e f e l     �� g��   g l fdo shell script "echo \"   <COLGROUP span=\"3\" width=\"200\"></COLGROUP>\" | cat >> /tmp/report.html"    f  h i h l     ������  ��   i  j k j l  H M l�� l I  H M�� m��
�� .sysoexecTEXT���     TEXT m m   H I n n ] Wecho "<THEAD><TR><TH>Date Received<TH>From<TH>Subject<TBODY>" | cat >> /tmp/report.html   ��  ��   k  o p o l     ������  ��   p  q r q l  N� s�� s O   N� t u t k   T� v v  w x w l  T T������  ��   x  y z y l  T T�� {��   {  get user name    z  | } | r   T e ~  ~ c   T a � � � n   T ] � � � 1   Y ]��
�� 
azf7 � 1   T Y��
�� 
az54 � m   ] `��
�� 
TEXT  o      ���� 0 first_user_name   }  � � � r   f w � � � c   f s � � � n   f o � � � 1   k o��
�� 
azf8 � 1   f k��
�� 
az54 � m   o r��
�� 
TEXT � o      ���� 0 last_user_name   �  � � � r   x � � � � b   x � � � � b   x  � � � o   x {���� 0 first_user_name   � m   { ~ � �       � o    ����� 0 last_user_name   � o      ���� 0 	user_name   �  � � � l  � �������  ��   �  ��� � X   �� ��� � � k   �� � �  � � � l  � �������  ��   �  � � � l  � ��� ���   � 4 .get name and email addresses from address book    �  � � � r   � � � � � c   � � � � � n   � � � � � 1   � ���
�� 
azf7 � o   � ����� 0 this_person   � m   � ���
�� 
TEXT � o      ���� 0 
first_name   �  � � � r   � � � � � c   � � � � � n   � � � � � 1   � ���
�� 
azf8 � o   � ����� 0 this_person   � m   � ���
�� 
TEXT � o      ���� 0 	last_name   �  � � � r   � � � � � b   � � � � � b   � � � � � o   � ����� 0 
first_name   � m   � � � �       � o   � ����� 0 	last_name   � o      ���� 0 address_book_entry_name   �  � � � l  � �������  ��   �  � � � r   � � � � � m   � � � �       � o      ���� 0 address_book_email1   �  � � � r   � � � � � m   � � � �       � o      ���� 0 address_book_email2   �  � � � r   � � � � � m   � � � �       � o      ���� 0 address_book_email3   �  � � � r   � � � � � m   � � � �       � o      ���� 0 address_book_email4   �  � � � r   � � � � � m   � � � �       � o      ���� 0 address_book_email5   �  � � � l  � �������  ��   �  � � � r   � � � � � m   � ���
�� boovtrue � o      ���� 0 address_book_has_email   �  � � � r   � � � � I  ��� ���
�� .corecnte****       **** � n   � � � � � 2  � ���
�� 
az21 � o   � ����� 0 this_person  ��   � o      ����  0 address_book_email_addresses   �  � � � l ������  ��   �  � � � Z  � � ��� � � l  ��� � I �� ���
�� .coredoexbool        obj  � n   � � � m  	��
�� 
az21 � o  	���� 0 this_person  ��  ��   � Y  � ��� � ��� � k  &� � �  � � � Z  &> � ����� � =  &) � � � o  &'���� 0 email_address_count   � m  '(����  � r  ,: � � � n  ,6 � � � 1  26�
� 
az17 � n  ,2 � � � 4  -2�~ �
�~ 
az21 � o  01�}�} 0 email_address_count   � o  ,-�|�| 0 this_person   � o      �{�{ 0 address_book_email1  ��  ��   �  � � � l ??�z�y�z  �y   �  �  � Z  ?W�x�w =  ?B o  ?@�v�v 0 email_address_count   m  @A�u�u  r  ES n  EO 1  KO�t
�t 
az17 n  EK	
	 4  FK�s
�s 
az21 o  IJ�r�r 0 email_address_count  
 o  EF�q�q 0 this_person   o      �p�p 0 address_book_email2  �x  �w     l XX�o�n�o  �n    Z  Xp�m�l =  X[ o  XY�k�k 0 email_address_count   m  YZ�j�j  r  ^l n  ^h 1  dh�i
�i 
az17 n  ^d 4  _d�h
�h 
az21 o  bc�g�g 0 email_address_count   o  ^_�f�f 0 this_person   o      �e�e 0 address_book_email3  �m  �l    l qq�d�c�d  �c    Z  q� �b�a =  qv!"! o  qr�`�` 0 email_address_count  " m  ru�_�_   r  y�#$# n  y�%&% 1  ��^
�^ 
az17& n  y'(' 4  z�])
�] 
az21) o  }~�\�\ 0 email_address_count  ( o  yz�[�[ 0 this_person  $ o      �Z�Z 0 address_book_email4  �b  �a   *+* l ���Y�X�Y  �X  + ,-, Z  ��./�W�V. =  ��010 o  ���U�U 0 email_address_count  1 m  ���T�T / r  ��232 n  ��454 1  ���S
�S 
az175 n  ��676 4  ���R8
�R 
az218 o  ���Q�Q 0 email_address_count  7 o  ���P�P 0 this_person  3 o      �O�O 0 address_book_email5  �W  �V  - 9�N9 l ���M�L�M  �L  �N  �� 0 email_address_count   � m  �K�K  � I !�J:�I
�J .corecnte****       ****: n  ;<; 2 �H
�H 
az21< o  �G�G 0 this_person  �I  ��  ��   � r  ��=>= m  ���F
�F boovfals> o      �E�E 0 address_book_has_email   � ?@? l ���D�C�D  �C  @ A�BA Z  ��BC�A�@B F  ��DED F  ��FGF > ��HIH o  ���?�? 0 address_book_entry_name  I m  ��JJ ! missing value missing value   G > ��KLK o  ���>�> 0 address_book_has_email  L m  ���=
�= boovfalsE > ��MNM o  ���<�< 0 address_book_has_email  N o  ���;�; 0 	user_name  C k  ��OO PQP l ���:�9�:  �9  Q RSR Z  �_TUV�8T = ��WXW o  ���7�7  0 address_book_email_addresses  X m  ���6�6 U k  �'YY Z[Z l ���5�4�5  �4  [ \]\ l ���3^�3  ^ $ get the date of the last email   ] _`_ r  ��aba c  ��cdc l ��e�2e I ���1f�0
�1 .sysoexecTEXT���     TEXTf b  ��ghg b  ��iji m  ��kk � �mdls -name kMDItemContentCreationDate `mdfind "(kMDItemAuthors == "*first_name*" && kMDItemAuthors == "*last_name*") || (kMDItemAuthorEmailAddresses == '   j o  ���/�/ 0 address_book_email1  h m  ��ll A ;'c) && (kMDItemKind == "emlx")" | sort | tail -1` | tail -1   �0  �2  d m  ���.
�. 
TEXTb o      �-�- 0 date_last_email  ` mnm l ���,�+�,  �+  n opo l ���*q�*  q - 'get the message title of the last email   p rsr r  �tut c  �vwv l �	x�)x I �	�(y�'
�( .sysoexecTEXT���     TEXTy b  �z{z b  �|}| m  ��~~ � �mdls -name kMDItemTitle `mdfind "(kMDItemAuthors == "*first_name*" && kMDItemAuthors == "*last_name*") || (kMDItemAuthorEmailAddresses == '   } o  � �&�& 0 address_book_email1  { m   A ;'c) && (kMDItemKind == "emlx")" | sort | tail -1` | tail -1   �'  �)  w m  	�%
�% 
TEXTu o      �$�$ 0 title_last_email  s ��� l �#�"�#  �"  � ��� l �!��!  � $ get the path of the last email   � ��� r  %��� l !�� � I !���
� .sysoexecTEXT���     TEXT� b  ��� b  ��� m  �� x rmdfind "(kMDItemAuthors == "*first_name*" && kMDItemAuthors == "*last_name*") || (kMDItemAuthorEmailAddresses == '   � o  �� 0 address_book_email1  � m  �� 6 0'c) && (kMDItemKind == "emlx")" | sort | tail -1   �  �   � o      �� 0 path_last_email  � ��� l &&���  �  �  V ��� = */��� o  *-��  0 address_book_email_addresses  � m  -.�� � ��� k  2��� ��� l 22���  �  � ��� l 22���  � $ get the date of the last email   � ��� r  2Q��� c  2M��� l 2I��� I 2I���
� .sysoexecTEXT���     TEXT� b  2E��� b  2A��� b  2=��� b  29��� m  25�� � �mdls -name kMDItemContentCreationDate `mdfind "(kMDItemAuthors == "*first_name*" && kMDItemAuthors == "*last_name*") || (kMDItemAuthorEmailAddresses == '   � o  58�� 0 address_book_email1  � m  9<�� 0 *'c" ) || (kMDItemAuthorEmailAddresses == '   � o  =@�� 0 address_book_email2  � m  AD�� C ='c" ) && (kMDItemKind == "emlx")" | sort | tail -1` | tail -1   �  �  � m  IL�
� 
TEXT� o      �� 0 date_last_email  � ��� l RR���  �  � ��� l RR�
��
  � - 'get the message title of the last email   � ��� r  Rq��� c  Rm��� l Ri��	� I Ri���
� .sysoexecTEXT���     TEXT� b  Re��� b  Ra��� b  R]��� b  RY��� m  RU�� � �mdls -name kMDItemTitle `mdfind "(kMDItemAuthors == "*first_name*" && kMDItemAuthors == "*last_name*") || (kMDItemAuthorEmailAddresses == '   � o  UX�� 0 address_book_email1  � m  Y\�� 0 *'c" ) || (kMDItemAuthorEmailAddresses == '   � o  ]`�� 0 address_book_email2  � m  ad�� B <'c") && (kMDItemKind == "emlx")" | sort | tail -1` | tail -1   �  �	  � m  il�
� 
TEXT� o      �� 0 title_last_email  � ��� l rr���  �  � ��� l rr� ��   � $ get the path of the last email   � ��� r  r���� l r����� I r������
�� .sysoexecTEXT���     TEXT� b  r���� b  r���� b  r}��� b  ry��� m  ru�� x rmdfind "(kMDItemAuthors == "*first_name*" && kMDItemAuthors == "*last_name*") || (kMDItemAuthorEmailAddresses == '   � o  ux���� 0 address_book_email1  � m  y|�� - ''c)|| (kMDItemAuthorEmailAddresses == '   � o  }����� 0 address_book_email2  � m  ���� 6 0'c) && (kMDItemKind == "emlx")" | sort | tail -1   ��  ��  � o      ���� 0 path_last_email  � ���� l ��������  ��  ��  � ��� = ����� o  ������  0 address_book_email_addresses  � m  ������ � ��� k  ��� ��� l ��������  ��  � ��� l �������  � $ get the date of the last email   � ��� r  ����� c  ����� l ������ I �������
�� .sysoexecTEXT���     TEXT� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� m  ��   � �mdls -name kMDItemContentCreationDate `mdfind "(kMDItemAuthors == "*first_name*" && kMDItemAuthors == "*last_name*") || (kMDItemAuthorEmailAddresses == '   � o  ������ 0 address_book_email1  � m  �� 0 *'c" ) || (kMDItemAuthorEmailAddresses == '   � o  ������ 0 address_book_email2  � m  �� 0 *'c" ) || (kMDItemAuthorEmailAddresses == '   � o  ������ 0 address_book_email3  � m  �� C ='c" ) && (kMDItemKind == "emlx")" | sort | tail -1` | tail -1   ��  ��  � m  ����
�� 
TEXT� o      ���� 0 date_last_email  �  l ��������  ��    l ������   - 'get the message title of the last email    	
	 r  �� c  �� l ���� I ������
�� .sysoexecTEXT���     TEXT b  �� b  �� b  �� b  �� b  �� b  �� m  �� � �mdls -name kMDItemTitle `mdfind "(kMDItemAuthors == "*first_name*" && kMDItemAuthors == "*last_name*") || (kMDItemAuthorEmailAddresses == '    o  ������ 0 address_book_email1   m  �� 0 *'c" ) || (kMDItemAuthorEmailAddresses == '    o  ������ 0 address_book_email2   m  �� / )'c") || (kMDItemAuthorEmailAddresses == '    o  ������ 0 address_book_email3   m  ��   B <'c") && (kMDItemKind == "emlx")" | sort | tail -1` | tail -1   ��  ��   m  ����
�� 
TEXT o      ���� 0 title_last_email  
 !"! l ��������  ��  " #$# l ����%��  % $ get the path of the last email   $ &'& r  �()( l �	*��* I �	��+��
�� .sysoexecTEXT���     TEXT+ b  �,-, b  �./. b  ��010 b  ��232 b  ��454 b  ��676 m  ��88 x rmdfind "(kMDItemAuthors == "*first_name*" && kMDItemAuthors == "*last_name*") || (kMDItemAuthorEmailAddresses == '   7 o  ������ 0 address_book_email1  5 m  ��99 . ('c) || (kMDItemAuthorEmailAddresses == '   3 o  ������ 0 address_book_email2  1 m  ��:: . ('c) || (kMDItemAuthorEmailAddresses == '   / o  � ���� 0 address_book_email3  - m  ;; 6 0'c) && (kMDItemKind == "emlx")" | sort | tail -1   ��  ��  ) o      ���� 0 path_last_email  ' <��< l ������  ��  ��  � =>= = ?@? o  ����  0 address_book_email_addresses  @ m  ���� > ABA k  �CC DED l ������  ��  E FGF l ��H��  H $ get the date of the last email   G IJI r  KKLK c  GMNM l CO��O I C��P��
�� .sysoexecTEXT���     TEXTP b  ?QRQ b  ;STS b  7UVU b  3WXW b  /YZY b  +[\[ b  ']^] b  #_`_ m  aa � �mdls -name kMDItemContentCreationDate `mdfind "(kMDItemAuthors == "*first_name*" && kMDItemAuthors == "*last_name*") || (kMDItemAuthorEmailAddresses == '   ` o  "���� 0 address_book_email1  ^ m  #&bb 0 *'c" ) || (kMDItemAuthorEmailAddresses == '   \ o  '*���� 0 address_book_email2  Z m  +.cc 0 *'c" ) || (kMDItemAuthorEmailAddresses == '   X o  /2���� 0 address_book_email3  V m  36dd 0 *'c" ) || (kMDItemAuthorEmailAddresses == '   T o  7:���� 0 address_book_email4  R m  ;>ee C ='c" ) && (kMDItemKind == "emlx")" | sort | tail -1` | tail -1   ��  ��  N m  CF��
�� 
TEXTL o      ���� 0 date_last_email  J fgf l LL������  ��  g hih l LL��j��  j - 'get the message title of the last email   i klk r  L{mnm c  Lwopo l Lsq��q I Ls��r��
�� .sysoexecTEXT���     TEXTr b  Losts b  Lkuvu b  Lgwxw b  Lcyzy b  L_{|{ b  L[}~} b  LW� b  LS��� m  LO�� � �mdls -name kMDItemTitle `mdfind "(kMDItemAuthors == "*first_name*" && kMDItemAuthors == "*last_name*") || (kMDItemAuthorEmailAddresses == '   � o  OR���� 0 address_book_email1  � m  SV�� 0 *'c" ) || (kMDItemAuthorEmailAddresses == '   ~ o  WZ���� 0 address_book_email2  | m  [^�� / )'c") || (kMDItemAuthorEmailAddresses == '   z o  _b���� 0 address_book_email3  x m  cf�� / )'c") || (kMDItemAuthorEmailAddresses == '   v o  gj���� 0 address_book_email4  t m  kn�� B <'c") && (kMDItemKind == "emlx")" | sort | tail -1` | tail -1   ��  ��  p m  sv��
�� 
TEXTn o      ���� 0 title_last_email  l ��� l ||������  ��  � ��� l ||�����  � $ get the path of the last email   � ��� r  |���� l |����� I |������
�� .sysoexecTEXT���     TEXT� b  |���� b  |���� b  |���� b  |���� b  |���� b  |���� b  |���� b  |���� m  |�� x rmdfind "(kMDItemAuthors == "*first_name*" && kMDItemAuthors == "*last_name*") || (kMDItemAuthorEmailAddresses == '   � o  ����� 0 address_book_email1  � m  ���� . ('c) || (kMDItemAuthorEmailAddresses == '   � o  ������ 0 address_book_email2  � m  ���� . ('c) || (kMDItemAuthorEmailAddresses == '   � o  ������ 0 address_book_email3  � m  ���� . ('c) || (kMDItemAuthorEmailAddresses == '   � o  ������ 0 address_book_email4  � m  ���� 6 0'c) && (kMDItemKind == "emlx")" | sort | tail -1   ��  ��  � o      ���� 0 path_last_email  � ���� l ��������  ��  ��  B ��� = ����� o  ������  0 address_book_email_addresses  � m  ������ � ���� k  �[�� ��� l ��������  ��  � ��� l �������  � $ get the date of the last email   � ��� r  ����� c  ����� l ������ I �������
�� .sysoexecTEXT���     TEXT� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� � �mdls -name kMDItemContentCreationDate `mdfind "(kMDItemAuthors == "*first_name*" && kMDItemAuthors == "*last_name*") || (kMDItemAuthorEmailAddresses == '   � o  ������ 0 address_book_email1  � m  ���� 0 *'c" ) || (kMDItemAuthorEmailAddresses == '   � o  ������ 0 address_book_email2  � m  ���� 0 *'c" ) || (kMDItemAuthorEmailAddresses == '   � o  ������ 0 address_book_email3  � m  ���� 0 *'c" ) || (kMDItemAuthorEmailAddresses == '   � o  ������ 0 address_book_email4  � m  ���� 0 *'c" ) || (kMDItemAuthorEmailAddresses == '   � o  ������ 0 address_book_email5  � m  ���� C ='c" ) && (kMDItemKind == "emlx")" | sort | tail -1` | tail -1   ��  ��  � m  ����
�� 
TEXT� o      ���� 0 date_last_email  � ��� l ��������  ��  � ��� l �������  � - 'get the message title of the last email   � ��� r  �%��� c  �!��� l ����� I ������
�� .sysoexecTEXT���     TEXT� b  ���� b  ���� b  ���� b  ���� b  �	��� b  ���� b  ���� b  ����� b  ����� b  ����� m  ���� � �mdls -name kMDItemTitle `mdfind "(kMDItemAuthors == "*first_name*" && kMDItemAuthors == "*last_name*") || (kMDItemAuthorEmailAddresses == '   � o  ������ 0 address_book_email1  � m  ���� 0 *'c" ) || (kMDItemAuthorEmailAddresses == '   � o  ������ 0 address_book_email2  � m  � �� / )'c") || (kMDItemAuthorEmailAddresses == '   � o  ���� 0 address_book_email3  � m  �� / )'c") || (kMDItemAuthorEmailAddresses == '   � o  	���� 0 address_book_email4  � m  �� / )'c") || (kMDItemAuthorEmailAddresses == '   � o  ���� 0 address_book_email5  � m  �� B <'c") && (kMDItemKind == "emlx")" | sort | tail -1` | tail -1   ��  ��  � m   ��
�� 
TEXT� o      ���� 0 title_last_email  � ��� l &&������  ��  � � � l &&����   $ get the path of the last email      r  &Y l &U�� I &U����
�� .sysoexecTEXT���     TEXT b  &Q	 b  &M

 b  &I b  &E b  &A b  &= b  &9 b  &5 b  &1 b  &- m  &) x rmdfind "(kMDItemAuthors == "*first_name*" && kMDItemAuthors == "*last_name*") || (kMDItemAuthorEmailAddresses == '    o  ),���� 0 address_book_email1   m  -0 . ('c) || (kMDItemAuthorEmailAddresses == '    o  14���� 0 address_book_email2   m  58 . ('c) || (kMDItemAuthorEmailAddresses == '    o  9<���� 0 address_book_email3   m  =@ . ('c) || (kMDItemAuthorEmailAddresses == '    o  AD���� 0 address_book_email4   m  EH   . ('c) || (kMDItemAuthorEmailAddresses == '    o  IL���� 0 address_book_email5  	 m  MP!! 6 0'c) && (kMDItemKind == "emlx")" | sort | tail -1   ��  ��   o      ���� 0 path_last_email   "��" l ZZ��~�  �~  ��  ��  �8  S #$# l ``�}�|�}  �|  $ %&% l ``�{'�{  ' , &trim the title of the email down a bit   & ()( Q  `�*+�z* r  c|,-, c  cx./. n  ct010 7 ft�y23
�y 
cha 2 m  lp�x�x 3 m  qs�w�w��1 o  cf�v�v 0 title_last_email  / m  tw�u
�u 
TEXT- o      �t�t 0 title_last_email  + R      �s�r�q
�s .ascrerr ****      � ****�r  �q  �z  ) 454 l ���p�o�p  �o  5 676 l ���n8�n  8 + %trim the date of the email down a bit   7 9:9 Q  ��;<�m; k  ��== >?> r  ��@A@ c  ��BCB n  ��DED 7 ���lFG
�l 
cha F m  ���k�k G m  ���j�j��E o  ���i�i 0 date_last_email  C m  ���h
�h 
TEXTA o      �g�g 0 date_last_email  ? H�fH r  ��IJI c  ��KLK n  ��MNM 7 ���eOP
�e 
cha O m  ���d�d P m  ���c�c N o  ���b�b 0 date_last_email  L m  ���a
�a 
TEXTJ o      �`�` 0 date_last_email  �f  < R      �_�^�]
�_ .ascrerr ****      � ****�^  �]  �m  : QRQ l ���\�[�\  �[  R STS l ���ZU�Z  U 6 0parse the date string to a human readable format   T VWV l ���Y�X�Y  �X  W XYX Q  �EZ[\Z k  �.]] ^_^ r  ��`a` c  ��bcb n  ��ded 7 ���Wfg
�W 
cha f m  ���V�V g m  ���U�U e o  ���T�T 0 date_last_email  c m  ���S
�S 
TEXTa o      �R�R 0 year_last_email  _ hih r  ��jkj c  ��lml n  ��non 7 ���Qpq
�Q 
cha p m  ���P�P q m  ���O�O o o  ���N�N 0 date_last_email  m m  ���M
�M 
TEXTk o      �L�L 0 month_last_email  i rsr r  �tut c  �vwv n  �xyx 7 �Kz{
�K 
cha z m  �J�J 	{ m  �I�I 
y o  ��H�H 0 date_last_email  w m  �G
�G 
TEXTu o      �F�F 0 day_last_email  s |}| r  &~~ c  "��� m  ��  	undefined   � m  !�E
�E 
TEXT o      �D�D 0 word_month_last_email  } ��� l ''�C�B�C  �B  � ��� Z '<���A�@� = '.��� o  '*�?�? 0 month_last_email  � m  *-��  01   � r  18��� m  14��  January   � o      �>�> 0 word_month_last_email  �A  �@  � ��� Z =R���=�<� = =D��� o  =@�;�; 0 month_last_email  � m  @C��  02   � r  GN��� m  GJ��  Febuary   � o      �:�: 0 word_month_last_email  �=  �<  � ��� Z Sh���9�8� = SZ��� o  SV�7�7 0 month_last_email  � m  VY��  03   � r  ]d��� m  ]`��  March   � o      �6�6 0 word_month_last_email  �9  �8  � ��� Z i~���5�4� = ip��� o  il�3�3 0 month_last_email  � m  lo��  04   � r  sz��� m  sv��  April   � o      �2�2 0 word_month_last_email  �5  �4  � ��� Z ����1�0� = ���� o  ��/�/ 0 month_last_email  � m  ����  05   � r  ����� m  ���� 	 May   � o      �.�. 0 word_month_last_email  �1  �0  � ��� Z �����-�,� = ����� o  ���+�+ 0 month_last_email  � m  ����  06   � r  ����� m  ���� 
 June   � o      �*�* 0 word_month_last_email  �-  �,  � ��� Z �����)�(� = ����� o  ���'�' 0 month_last_email  � m  ����  07   � r  ����� m  ���� 
 July   � o      �&�& 0 word_month_last_email  �)  �(  � ��� Z �����%�$� = ����� o  ���#�# 0 month_last_email  � m  ����  08   � r  ����� m  ����  August   � o      �"�" 0 word_month_last_email  �%  �$  � ��� Z �����!� � = ����� o  ���� 0 month_last_email  � m  ����  09   � r  ����� m  ����  	September   � o      �� 0 word_month_last_email  �!  �   � ��� Z ������ = ����� o  ���� 0 month_last_email  � m  ����  10   � r  ����� m  ����  October   � o      �� 0 word_month_last_email  �  �  � ��� Z ����� = 
��� o  �� 0 month_last_email  � m  	��  11   � r  ��� m  ��  November   � o      �� 0 word_month_last_email  �  �  � ��� Z .����� =  ��� o  �� 0 month_last_email  � m  ��  12   � r  #*��� m  #&��  December   � o      �� 0 word_month_last_email  �  �  �  [ R      ���
� .ascrerr ****      � ****�  �  \ k  6E�� ��� r  6=� � m  69        o      �� 0 path_last_email  � � r  >E m  >A  No email found    o      �� 0 title_last_email  �  Y  l FF�
�	�
  �	   	 r  Fa

 c  F] b  FY b  FU b  FQ b  FM o  FI�� 0 word_month_last_email   m  IL       o  MP�� 0 day_last_email   m  QT  ,     o  UX�� 0 year_last_email   m  Y\�
� 
TEXT o      �� "0 human_readable_date_last_email  	  l bb���  �    l bb�� �  �     l bb����    report code      Q  b�!"��! k  e�## $%$ I e���&��
�� .sysoexecTEXT���     TEXT& b  e�'(' b  e�)*) b  e�+,+ b  e�-.- b  e�/0/ b  e|121 b  ex343 b  et565 b  ep787 b  el9:9 m  eh;;  echo "<TR><TD>   : o  hk���� "0 human_readable_date_last_email  8 m  lo<<  <TD><a href="mailto:   6 o  ps���� 0 address_book_email1  4 m  tw==  ">   2 o  x{���� 0 address_book_entry_name  0 m  |>>  </a><TD><a href="file://   . o  ������ 0 path_last_email  , m  ��??  ">   * o  ������ 0 title_last_email  ( m  ��@@ % </a>" | cat >> /tmp/report.html   ��  % A��A l ��������  ��  ��  " R      ������
�� .ascrerr ****      � ****��  ��  ��    BCB l ��������  ��  C DED l ����F��  F  update the open document   E GHG I ����I��
�� .sysoexecTEXT���     TEXTI m  ��JJ  open -e /tmp/report.html   ��  H KLK l ��������  ��  L MNM l ��������  ��  N OPO l ����Q��  Q $ check if the date is not empty   P R��R Z  ��ST����S > ��UVU o  ������ 0 date_last_email  V m  ��WW      T k  ��XX YZY l ��������  ��  Z [\[ l  ����]��  ]��	
				tell application "Mail"
					activate
					
					--open the email
					do shell script "open \"" & path_last_email & "\""
					
					--display  dialog
					display dialog address_book_entry_name & " last sent you email on:" & return & "   " & human_readable_date_last_email & return & return & "entitled:" & return & "   " & title_last_email buttons {"Quit", "Reply", "Next"} default button 3 with icon 1
					
					if the button returned of the result is "Next" then
						
						try
							close window 1
						end try
						
						--and keep going onto next address book entry
						
					else if the button returned of the result is "Reply" then
						
						--this is a shit-tay way to do this:
						tell application "System Events"
							
							key code 15 using command down
							delay 1
							key code 46 using command down
							
						end tell
						
					else
						--quit
						return
					end if
									
				end tell
				   \ ^��^ l ��������  ��  ��  ��  ��  ��  �A  �@  �B  �� 0 this_person   � 2   � ���
�� 
azf4��   u m   N Q__�null     � ��  ^Address Book.app��H?���ٰ��ؠ       )       ��(�Gk����adrb   alis    \  	powerbook                  ��9�H+    ^Address Book.app                                                ��l�b        ����  	                Applications    ���      �m=�      ^  'powerbook:Applications:Address Book.app   "  A d d r e s s   B o o k . a p p   	 p o w e r b o o k  Applications/Address Book.app   / ��  ��   r `a` l     ������  ��  a bcb l ��d��d r  ��efe l ��g��g I ����h��
�� .sysoexecTEXT���     TEXTh m  ��ii $ date "+REPORT ENDED: %H:%M:%S"   ��  ��  f o      ���� 0 
time_ended  ��  c jkj l ��l��l I ����m��
�� .sysoexecTEXT���     TEXTm b  ��non b  ��pqp m  ��rr  echo "</table>   q o  ������ 0 
time_ended  o m  ��ss ! " | cat >> /tmp/report.html   ��  ��  k tut l ��v��v I ����w��
�� .sysoexecTEXT���     TEXTw m  ��xx  open -e /tmp/report.html   ��  ��  u yzy l     ������  ��  z {��{ l ��|��| L  ������  ��  ��       ��}~��  } ��
�� .aevtoappnull  �   � ****~ ����������
�� .aevtoappnull  �   � **** k    ���  ��   ��  *��  2��  :��  I��  Q��  `��  j��  q�� b�� j�� t�� {����  ��  ��  � ������ 0 this_person  �� 0 email_address_count  � � ������ $ . 9�� B C P�� Y Z d n_������������ ��������������� ��� ��� ��� ��� ��� �����������������J��kl��~���������������  89:;abcde���������������������� !���������������������������������������������������;<=>?@JWi��rsx
�� .sysoexecTEXT���     TEXT��  ��  �� 0 report_date  �� 0 
time_start  
�� 
az54
�� 
azf7
�� 
TEXT�� 0 first_user_name  
�� 
azf8�� 0 last_user_name  �� 0 	user_name  
�� 
azf4
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 
first_name  �� 0 	last_name  �� 0 address_book_entry_name  �� 0 address_book_email1  �� 0 address_book_email2  �� 0 address_book_email3  �� 0 address_book_email4  �� 0 address_book_email5  �� 0 address_book_has_email  
�� 
az21��  0 address_book_email_addresses  
�� .coredoexbool        obj 
�� 
az17�� �� 
�� 
bool�� 0 date_last_email  �� 0 title_last_email  �� 0 path_last_email  
�� 
cha �� �� �� �� 0 year_last_email  �� �� �� 0 month_last_email  �� 	�� 
�� 0 day_last_email  �� 0 word_month_last_email  �� "0 human_readable_date_last_email  �� 0 
time_ended  ��� 
�j W X  hO�j O�j O�j E�O��%�%j O�j E�O��%�%j O�j O�j Oa n*a ,a ,a &E` O*a ,a ,a &E` O_ a %_ %E` O7*a -[a a l kh  �a ,a &E` O�a ,a &E` O_ a %_ %E`  Oa !E` "Oa #E` $Oa %E` &Oa 'E` (Oa )E` *OeE` +O�a ,-j E` -O�a ,,j . � �k�a ,-j kh �k  �a ,�/a /,E` "Y hO�l  �a ,�/a /,E` $Y hO�m  �a ,�/a /,E` &Y hO�a 0  �a ,�/a /,E` (Y hO�a 1  �a ,�/a /,E` *Y hOP[OY�xY fE` +O_  a 2	 _ +fa 3&	 _ +_ a 3&�_ -k  Ja 4_ "%a 5%j a &E` 6Oa 7_ "%a 8%j a &E` 9Oa :_ "%a ;%j E` <OPY7_ -l  ba =_ "%a >%_ $%a ?%j a &E` 6Oa @_ "%a A%_ $%a B%j a &E` 9Oa C_ "%a D%_ $%a E%j E` <OPY�_ -m  za F_ "%a G%_ $%a H%_ &%a I%j a &E` 6Oa J_ "%a K%_ $%a L%_ &%a M%j a &E` 9Oa N_ "%a O%_ $%a P%_ &%a Q%j E` <OPYO_ -a 0  �a R_ "%a S%_ $%a T%_ &%a U%_ (%a V%j a &E` 6Oa W_ "%a X%_ $%a Y%_ &%a Z%_ (%a [%j a &E` 9Oa \_ "%a ]%_ $%a ^%_ &%a _%_ (%a `%j E` <OPY �_ -a 1  �a a_ "%a b%_ $%a c%_ &%a d%_ (%a e%_ *%a f%j a &E` 6Oa g_ "%a h%_ $%a i%_ &%a j%_ (%a k%_ *%a l%j a &E` 9Oa m_ "%a n%_ $%a o%_ &%a p%_ (%a q%_ *%a r%j E` <OPY hO _ 9[a s\[Za t\Zi2a &E` 9W X  hO 8_ 6[a s\[Za u\Zi2a &E` 6O_ 6[a s\[Zk\Za v2a &E` 6W X  hOj_ 6[a s\[Zk\Za 02a &E` wO_ 6[a s\[Za x\Za y2a &E` zO_ 6[a s\[Za {\Za |2a &E` }Oa ~a &E` O_ za �  a �E` Y hO_ za �  a �E` Y hO_ za �  a �E` Y hO_ za �  a �E` Y hO_ za �  a �E` Y hO_ za �  a �E` Y hO_ za �  a �E` Y hO_ za �  a �E` Y hO_ za �  a �E` Y hO_ za �  a �E` Y hO_ za �  a �E` Y hO_ za �  a �E` Y hW X  a �E` <Oa �E` 9O_ a �%_ }%a �%_ w%a &E` �O 6a �_ �%a �%_ "%a �%_  %a �%_ <%a �%_ 9%a �%j OPW X  hOa �j O_ 6a � hY hY h[OY��UOa �j E` �Oa �_ �%a �%j Oa �j Ohascr  ��ޭ