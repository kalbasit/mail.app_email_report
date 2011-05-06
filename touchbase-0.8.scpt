FasdUAS 1.101.10   ��   ��    k             l     ������  ��        l     �� 	��   	  TouchBase 0.8.1      
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
�� .sysoexecTEXT���     TEXT c m   B C d d E ?echo "<TABLE border="2" width="600">" | cat >> /tmp/report.html   ��  ��   a  e f e l  H M g�� g I  H M�� h��
�� .sysoexecTEXT���     TEXT h m   H I i i T Necho "   <COLGROUP span="3" width="200"></COLGROUP>" | cat >> /tmp/report.html   ��  ��   f  j k j l     ������  ��   k  l m l l  N U n�� n I  N U�� o��
�� .sysoexecTEXT���     TEXT o m   N Q p p ] Wecho "<THEAD><TR><TH>Date Received<TH>From<TH>Subject<TBODY>" | cat >> /tmp/report.html   ��  ��   m  q r q l     ������  ��   r  s t s l  V� u�� u O   V� v w v k   \� x x  y z y l  \ \������  ��   z  { | { l  \ \�� }��   }  get user name    |  ~  ~ r   \ m � � � c   \ i � � � n   \ e � � � 1   a e��
�� 
azf7 � 1   \ a��
�� 
az54 � m   e h��
�� 
TEXT � o      ���� 0 first_user_name     � � � r   n  � � � c   n { � � � n   n w � � � 1   s w��
�� 
azf8 � 1   n s��
�� 
az54 � m   w z��
�� 
TEXT � o      ���� 0 last_user_name   �  � � � r   � � � � � b   � � � � � b   � � � � � o   � ����� 0 first_user_name   � m   � � � �       � o   � ����� 0 last_user_name   � o      ���� 0 	user_name   �  � � � l  � �������  ��   �  ��� � X   �� ��� � � k   �� � �  � � � l  � �������  ��   �  � � � l  � ��� ���   � 4 .get name and email addresses from address book    �  � � � r   � � � � � c   � � � � � n   � � � � � 1   � ���
�� 
azf7 � o   � ����� 0 this_person   � m   � ���
�� 
TEXT � o      ���� 0 
first_name   �  � � � r   � � � � � c   � � � � � n   � � � � � 1   � ���
�� 
azf8 � o   � ����� 0 this_person   � m   � ���
�� 
TEXT � o      ���� 0 	last_name   �  � � � r   � � � � � b   � � � � � b   � � � � � o   � ����� 0 
first_name   � m   � � � �       � o   � ����� 0 	last_name   � o      ���� 0 address_book_entry_name   �  � � � l  � �������  ��   �  � � � r   � � � � � m   � � � �       � o      ���� 0 address_book_email1   �  � � � r   � � � � � m   � � � �       � o      ���� 0 address_book_email2   �  � � � r   � � � � � m   � � � �       � o      ���� 0 address_book_email3   �  � � � r   � � � � � m   � � � �       � o      ���� 0 address_book_email4   �  � � � r   � � � � � m   � � � �       � o      ���� 0 address_book_email5   �  � � � l  � �������  ��   �  � � � r   � � � � m   � ���
�� boovtrue � o      ���� 0 address_book_has_email   �  � � � r   � � � I �� ���
�� .corecnte****       **** � n   � � � 2 ��
�� 
az21 � o  ���� 0 this_person  ��   � o      ����  0 address_book_email_addresses   �  � � � l ������  ��   �  � � � Z  � � ��� � � l  ��� � I �� ���
�� .coredoexbool        obj  � n   � � � m  ��
�� 
az21 � o  ���� 0 this_person  ��  ��   � Y  � ��� � ��� � k  .� � �  � � � Z  .F � ����� � =  .1 � � � o  ./�� 0 email_address_count   � m  /0�~�~  � r  4B � � � n  4> � � � 1  :>�}
�} 
az17 � n  4: � � � 4  5:�| �
�| 
az21 � o  89�{�{ 0 email_address_count   � o  45�z�z 0 this_person   � o      �y�y 0 address_book_email1  ��  ��   �  �  � l GG�x�w�x  �w     Z  G_�v�u =  GJ o  GH�t�t 0 email_address_count   m  HI�s�s  r  M[ n  MW	
	 1  SW�r
�r 
az17
 n  MS 4  NS�q
�q 
az21 o  QR�p�p 0 email_address_count   o  MN�o�o 0 this_person   o      �n�n 0 address_book_email2  �v  �u    l ``�m�l�m  �l    Z  `x�k�j =  `c o  `a�i�i 0 email_address_count   m  ab�h�h  r  ft n  fp 1  lp�g
�g 
az17 n  fl 4  gl�f
�f 
az21 o  jk�e�e 0 email_address_count   o  fg�d�d 0 this_person   o      �c�c 0 address_book_email3  �k  �j    l yy�b�a�b  �a     Z  y�!"�`�_! =  y~#$# o  yz�^�^ 0 email_address_count  $ m  z}�]�] " r  ��%&% n  ��'(' 1  ���\
�\ 
az17( n  ��)*) 4  ���[+
�[ 
az21+ o  ���Z�Z 0 email_address_count  * o  ���Y�Y 0 this_person  & o      �X�X 0 address_book_email4  �`  �_    ,-, l ���W�V�W  �V  - ./. Z  ��01�U�T0 =  ��232 o  ���S�S 0 email_address_count  3 m  ���R�R 1 r  ��454 n  ��676 1  ���Q
�Q 
az177 n  ��898 4  ���P:
�P 
az21: o  ���O�O 0 email_address_count  9 o  ���N�N 0 this_person  5 o      �M�M 0 address_book_email5  �U  �T  / ;�L; l ���K�J�K  �J  �L  �� 0 email_address_count   � m   �I�I  � I  )�H<�G
�H .corecnte****       ****< n   %=>= 2 !%�F
�F 
az21> o   !�E�E 0 this_person  �G  ��  ��   � r  ��?@? m  ���D
�D boovfals@ o      �C�C 0 address_book_has_email   � ABA l ���B�A�B  �A  B C�@C Z  ��DE�?�>D F  ��FGF F  ��HIH > ��JKJ o  ���=�= 0 address_book_entry_name  K m  ��LL ! missing value missing value   I > ��MNM o  ���<�< 0 address_book_has_email  N m  ���;
�; boovfalsG > ��OPO o  ���:�: 0 address_book_has_email  P o  ���9�9 0 	user_name  E k  ��QQ RSR l ���8�7�8  �7  S TUT Z  �gVWX�6V = ��YZY o  ���5�5  0 address_book_email_addresses  Z m  ���4�4 W k  �/[[ \]\ l ���3�2�3  �2  ] ^_^ l ���1`�1  ` $ get the date of the last email   _ aba r  �cdc c  ��efe l ��g�0g I ���/h�.
�/ .sysoexecTEXT���     TEXTh b  ��iji b  ��klk m  ��mm � �mdls -name kMDItemContentCreationDate `mdfind "(kMDItemAuthors == "*first_name*" && kMDItemAuthors == "*last_name*") || (kMDItemAuthorEmailAddresses == "   l o  ���-�- 0 address_book_email1  j m  ��nn A ;" ) && (kMDItemKind == "emlx")" | sort | tail -1` | tail -1   �.  �0  f m  ���,
�, 
TEXTd o      �+�+ 0 date_last_email  b opo l �*�)�*  �)  p qrq l �(s�(  s - 'get the message title of the last email   r tut r  vwv c  xyx l z�'z I �&{�%
�& .sysoexecTEXT���     TEXT{ b  |}| b  	~~ m  �� � �mdls -name kMDItemTitle `mdfind "(kMDItemAuthors == "*first_name*" && kMDItemAuthors == "*last_name*") || (kMDItemAuthorEmailAddresses == "    o  �$�$ 0 address_book_email1  } m  	�� A ;" ) && (kMDItemKind == "emlx")" | sort | tail -1` | tail -1   �%  �'  y m  �#
�# 
TEXTw o      �"�" 0 title_last_email  u ��� l �!� �!  �   � ��� l ���  � $ get the path of the last email   � ��� r  -��� l )��� I )���
� .sysoexecTEXT���     TEXT� b  %��� b  !��� m  �� x rmdfind "(kMDItemAuthors == "*first_name*" && kMDItemAuthors == "*last_name*") || (kMDItemAuthorEmailAddresses == "   � o   �� 0 address_book_email1  � m  !$�� 6 0" ) && (kMDItemKind == "emlx")" | sort | tail -1   �  �  � o      �� 0 path_last_email  � ��� l ..���  �  �  X ��� = 27��� o  25��  0 address_book_email_addresses  � m  56�� � ��� k  :��� ��� l ::���  �  � ��� l ::���  � $ get the date of the last email   � ��� r  :Y��� c  :U��� l :Q��� I :Q���
� .sysoexecTEXT���     TEXT� b  :M��� b  :I��� b  :E��� b  :A��� m  :=�� � �mdls -name kMDItemContentCreationDate `mdfind "(kMDItemAuthors == "*first_name*" && kMDItemAuthors == "*last_name*") || (kMDItemAuthorEmailAddresses == "   � o  =@�� 0 address_book_email1  � m  AD�� . (" ) || (kMDItemAuthorEmailAddresses == "   � o  EH�� 0 address_book_email2  � m  IL�� A ;" ) && (kMDItemKind == "emlx")" | sort | tail -1` | tail -1   �  �  � m  QT�
� 
TEXT� o      �� 0 date_last_email  � ��� l ZZ�
�	�
  �	  � ��� l ZZ���  � - 'get the message title of the last email   � ��� r  Zy��� c  Zu��� l Zq��� I Zq���
� .sysoexecTEXT���     TEXT� b  Zm��� b  Zi��� b  Ze��� b  Za��� m  Z]�� � �mdls -name kMDItemTitle `mdfind "(kMDItemAuthors == "*first_name*" && kMDItemAuthors == "*last_name*") || (kMDItemAuthorEmailAddresses == "   � o  ]`�� 0 address_book_email1  � m  ad�� . (" ) || (kMDItemAuthorEmailAddresses == "   � o  eh�� 0 address_book_email2  � m  il�� A ;" ) && (kMDItemKind == "emlx")" | sort | tail -1` | tail -1   �  �  � m  qt�
� 
TEXT� o      �� 0 title_last_email  � ��� l zz� ���   ��  � ��� l zz�����  � $ get the path of the last email   � ��� r  z���� l z����� I z������
�� .sysoexecTEXT���     TEXT� b  z���� b  z���� b  z���� b  z���� m  z}�� x rmdfind "(kMDItemAuthors == "*first_name*" && kMDItemAuthors == "*last_name*") || (kMDItemAuthorEmailAddresses == "   � o  }����� 0 address_book_email1  � m  ���� . (" ) || (kMDItemAuthorEmailAddresses == "   � o  ������ 0 address_book_email2  � m  ���� 6 0" ) && (kMDItemKind == "emlx")" | sort | tail -1   ��  ��  � o      ���� 0 path_last_email  � ���� l ��������  ��  ��  � ��� = ����� o  ������  0 address_book_email_addresses  � m  ������ � ��� k  ��� ��� l ��������  ��  � ��� l �������  � $ get the date of the last email   � ��� r  ����� c  ����� l ������ I �������
�� .sysoexecTEXT���     TEXT� b  ����� b  ����� b  ����� b  ����� b  ����� b  ��   m  �� � �mdls -name kMDItemContentCreationDate `mdfind "(kMDItemAuthors == "*first_name*" && kMDItemAuthors == "*last_name*") || (kMDItemAuthorEmailAddresses == "    o  ������ 0 address_book_email1  � m  �� . (" ) || (kMDItemAuthorEmailAddresses == "   � o  ������ 0 address_book_email2  � m  �� . (" ) || (kMDItemAuthorEmailAddresses == "   � o  ������ 0 address_book_email3  � m  �� A ;" ) && (kMDItemKind == "emlx")" | sort | tail -1` | tail -1   ��  ��  � m  ����
�� 
TEXT� o      ���� 0 date_last_email  �  l ��������  ��   	 l ����
��  
 - 'get the message title of the last email   	  r  �� c  �� l ���� I ������
�� .sysoexecTEXT���     TEXT b  �� b  �� b  �� b  �� b  �� b  �� m  �� � �mdls -name kMDItemTitle `mdfind "(kMDItemAuthors == "*first_name*" && kMDItemAuthors == "*last_name*") || (kMDItemAuthorEmailAddresses == "    o  ������ 0 address_book_email1   m  ��   . (" ) || (kMDItemAuthorEmailAddresses == "    o  ������ 0 address_book_email2   m  ��!! / )" ) || (kMDItemAuthorEmailAddresses == "*    o  ������ 0 address_book_email3   m  ��"" A ;" ) && (kMDItemKind == "emlx")" | sort | tail -1` | tail -1   ��  ��   m  ����
�� 
TEXT o      ���� 0 title_last_email   #$# l ��������  ��  $ %&% l ����'��  ' $ get the path of the last email   & ()( r  �*+* l �,��, I ���-��
�� .sysoexecTEXT���     TEXT- b  �./. b  �	010 b  �232 b  �454 b  ��676 b  ��898 m  ��:: x rmdfind "(kMDItemAuthors == "*first_name*" && kMDItemAuthors == "*last_name*") || (kMDItemAuthorEmailAddresses == "   9 o  ������ 0 address_book_email1  7 m  ��;; . (" ) || (kMDItemAuthorEmailAddresses == "   5 o  � ���� 0 address_book_email2  3 m  << . (" ) || (kMDItemAuthorEmailAddresses == "   1 o  ���� 0 address_book_email3  / m  	== 6 0" ) && (kMDItemKind == "emlx")" | sort | tail -1   ��  ��  + o      ���� 0 path_last_email  ) >��> l ������  ��  ��  � ?@? = !ABA o  ����  0 address_book_email_addresses  B m   ���� @ CDC k  $�EE FGF l $$������  ��  G HIH l $$��J��  J $ get the date of the last email   I KLK r  $SMNM c  $OOPO l $KQ��Q I $K��R��
�� .sysoexecTEXT���     TEXTR b  $GSTS b  $CUVU b  $?WXW b  $;YZY b  $7[\[ b  $3]^] b  $/_`_ b  $+aba m  $'cc � �mdls -name kMDItemContentCreationDate `mdfind "(kMDItemAuthors == "*first_name*" && kMDItemAuthors == "*last_name*") || (kMDItemAuthorEmailAddresses == "   b o  '*���� 0 address_book_email1  ` m  +.dd . (" ) || (kMDItemAuthorEmailAddresses == "   ^ o  /2���� 0 address_book_email2  \ m  36ee . (" ) || (kMDItemAuthorEmailAddresses == "   Z o  7:���� 0 address_book_email3  X m  ;>ff . (" ) || (kMDItemAuthorEmailAddresses == "   V o  ?B���� 0 address_book_email4  T m  CFgg A ;" ) && (kMDItemKind == "emlx")" | sort | tail -1` | tail -1   ��  ��  P m  KN��
�� 
TEXTN o      ���� 0 date_last_email  L hih l TT������  ��  i jkj l TT��l��  l - 'get the message title of the last email   k mnm r  T�opo c  Tqrq l T{s��s I T{��t��
�� .sysoexecTEXT���     TEXTt b  Twuvu b  Tswxw b  Toyzy b  Tk{|{ b  Tg}~} b  Tc� b  T_��� b  T[��� m  TW�� � �mdls -name kMDItemTitle `mdfind "(kMDItemAuthors == "*first_name*" && kMDItemAuthors == "*last_name*") || (kMDItemAuthorEmailAddresses == "   � o  WZ���� 0 address_book_email1  � m  [^�� . (" ) || (kMDItemAuthorEmailAddresses == "   � o  _b���� 0 address_book_email2  ~ m  cf�� / )" ) || (kMDItemAuthorEmailAddresses == "*   | o  gj���� 0 address_book_email3  z m  kn�� . (" ) || (kMDItemAuthorEmailAddresses == "   x o  or���� 0 address_book_email4  v m  sv�� A ;" ) && (kMDItemKind == "emlx")" | sort | tail -1` | tail -1   ��  ��  r m  {~��
�� 
TEXTp o      ���� 0 title_last_email  n ��� l ��������  ��  � ��� l �������  � $ get the path of the last email   � ��� r  ����� l ������ I �������
�� .sysoexecTEXT���     TEXT� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� x rmdfind "(kMDItemAuthors == "*first_name*" && kMDItemAuthors == "*last_name*") || (kMDItemAuthorEmailAddresses == "   � o  ������ 0 address_book_email1  � m  ���� . (" ) || (kMDItemAuthorEmailAddresses == "   � o  ������ 0 address_book_email2  � m  ���� . (" ) || (kMDItemAuthorEmailAddresses == "   � o  ������ 0 address_book_email3  � m  ���� . (" ) || (kMDItemAuthorEmailAddresses == "   � o  ������ 0 address_book_email4  � m  ���� 6 0" ) && (kMDItemKind == "emlx")" | sort | tail -1   ��  ��  � o      ���� 0 path_last_email  � ���� l ��������  ��  ��  D ��� = ����� o  ������  0 address_book_email_addresses  � m  ������ � ���� k  �c�� ��� l ��������  ��  � ��� l �������  � $ get the date of the last email   � ��� r  ����� c  ����� l ������ I �������
�� .sysoexecTEXT���     TEXT� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� � �mdls -name kMDItemContentCreationDate `mdfind "(kMDItemAuthors == "*first_name*" && kMDItemAuthors == "*last_name*") || (kMDItemAuthorEmailAddresses == "   � o  ������ 0 address_book_email1  � m  ���� . (" ) || (kMDItemAuthorEmailAddresses == "   � o  ������ 0 address_book_email2  � m  ���� . (" ) || (kMDItemAuthorEmailAddresses == "   � o  ������ 0 address_book_email3  � m  ���� . (" ) || (kMDItemAuthorEmailAddresses == "   � o  ������ 0 address_book_email4  � m  ���� . (" ) || (kMDItemAuthorEmailAddresses == "   � o  ������ 0 address_book_email5  � m  ���� A ;" ) && (kMDItemKind == "emlx")" | sort | tail -1` | tail -1   ��  ��  � m  ����
�� 
TEXT� o      ���� 0 date_last_email  � ��� l ��������  ��  � ��� l �������  � - 'get the message title of the last email   � ��� r  �-��� c  �)��� l �%���� I �%�����
�� .sysoexecTEXT���     TEXT� b  �!��� b  ���� b  ���� b  ���� b  ���� b  ���� b  �	��� b  ���� b  ���� b  ����� m  ���� � �mdls -name kMDItemTitle `mdfind "(kMDItemAuthors == "*first_name*" && kMDItemAuthors == "*last_name*") || (kMDItemAuthorEmailAddresses == "   � o  ������ 0 address_book_email1  � m  � �� . (" ) || (kMDItemAuthorEmailAddresses == "   � o  ���� 0 address_book_email2  � m  �� / )" ) || (kMDItemAuthorEmailAddresses == "*   � o  	���� 0 address_book_email3  � m  �� . (" ) || (kMDItemAuthorEmailAddresses == "   � o  ���� 0 address_book_email4  � m  �� . (" ) || (kMDItemAuthorEmailAddresses == "   � o  ���� 0 address_book_email5  � m   �� A ;" ) && (kMDItemKind == "emlx")" | sort | tail -1` | tail -1   ��  ��  � m  %(��
�� 
TEXT� o      ���� 0 title_last_email  � � � l ..������  ��     l ..����   $ get the path of the last email     r  .a l .]�� I .]��	��
�� .sysoexecTEXT���     TEXT	 b  .Y

 b  .U b  .Q b  .M b  .I b  .E b  .A b  .= b  .9 b  .5 m  .1 x rmdfind "(kMDItemAuthors == "*first_name*" && kMDItemAuthors == "*last_name*") || (kMDItemAuthorEmailAddresses == "    o  14���� 0 address_book_email1   m  58 . (" ) || (kMDItemAuthorEmailAddresses == "    o  9<���� 0 address_book_email2   m  =@   . (" ) || (kMDItemAuthorEmailAddresses == "    o  AD���� 0 address_book_email3   m  EH!! . (" ) || (kMDItemAuthorEmailAddresses == "    o  IL���� 0 address_book_email4   m  MP"" . (" ) || (kMDItemAuthorEmailAddresses == "    o  QT���� 0 address_book_email5   m  UX## 6 0" ) && (kMDItemKind == "emlx")" | sort | tail -1   ��  ��   o      �� 0 path_last_email   $�~$ l bb�}�|�}  �|  �~  ��  �6  U %&% l hh�{�z�{  �z  & '(' l hh�y)�y  ) , &trim the title of the email down a bit   ( *+* Q  h�,-�x, r  k�./. c  k�010 n  k|232 7 n|�w45
�w 
cha 4 m  tx�v�v 5 m  y{�u�u��3 o  kn�t�t 0 title_last_email  1 m  |�s
�s 
TEXT/ o      �r�r 0 title_last_email  - R      �q�p�o
�q .ascrerr ****      � ****�p  �o  �x  + 676 l ���n�m�n  �m  7 898 l ���l:�l  : + %trim the date of the email down a bit   9 ;<; Q  ��=>�k= k  ��?? @A@ r  ��BCB c  ��DED n  ��FGF 7 ���jHI
�j 
cha H m  ���i�i I m  ���h�h��G o  ���g�g 0 date_last_email  E m  ���f
�f 
TEXTC o      �e�e 0 date_last_email  A J�dJ r  ��KLK c  ��MNM n  ��OPO 7 ���cQR
�c 
cha Q m  ���b�b R m  ���a�a P o  ���`�` 0 date_last_email  N m  ���_
�_ 
TEXTL o      �^�^ 0 date_last_email  �d  > R      �]�\�[
�] .ascrerr ****      � ****�\  �[  �k  < STS l ���Z�Y�Z  �Y  T UVU l ���XW�X  W 6 0parse the date string to a human readable format   V XYX l ���W�V�W  �V  Y Z[Z Q  �\]^\ k  �6__ `a` r  ��bcb c  ��ded n  ��fgf 7 ���Uhi
�U 
cha h m  ���T�T i m  ���S�S g o  ���R�R 0 date_last_email  e m  ���Q
�Q 
TEXTc o      �P�P 0 year_last_email  a jkj r  �lml c  �non n  ��pqp 7 ���Ors
�O 
cha r m  ���N�N s m  ���M�M q o  ���L�L 0 date_last_email  o m  ��K
�K 
TEXTm o      �J�J 0 month_last_email  k tut r  "vwv c  xyx n  z{z 7 
�I|}
�I 
cha | m  �H�H 	} m  �G�G 
{ o  
�F�F 0 date_last_email  y m  �E
�E 
TEXTw o      �D�D 0 day_last_email  u ~~ r  #.��� c  #*��� m  #&��  	undefined   � m  &)�C
�C 
TEXT� o      �B�B 0 word_month_last_email   ��� l //�A�@�A  �@  � ��� Z /D���?�>� = /6��� o  /2�=�= 0 month_last_email  � m  25��  01   � r  9@��� m  9<��  January   � o      �<�< 0 word_month_last_email  �?  �>  � ��� Z EZ���;�:� = EL��� o  EH�9�9 0 month_last_email  � m  HK��  02   � r  OV��� m  OR��  Febuary   � o      �8�8 0 word_month_last_email  �;  �:  � ��� Z [p���7�6� = [b��� o  [^�5�5 0 month_last_email  � m  ^a��  03   � r  el��� m  eh��  March   � o      �4�4 0 word_month_last_email  �7  �6  � ��� Z q����3�2� = qx��� o  qt�1�1 0 month_last_email  � m  tw��  04   � r  {���� m  {~��  April   � o      �0�0 0 word_month_last_email  �3  �2  � ��� Z �����/�.� = ����� o  ���-�- 0 month_last_email  � m  ����  05   � r  ����� m  ���� 	 May   � o      �,�, 0 word_month_last_email  �/  �.  � ��� Z �����+�*� = ����� o  ���)�) 0 month_last_email  � m  ����  06   � r  ����� m  ���� 
 June   � o      �(�( 0 word_month_last_email  �+  �*  � ��� Z �����'�&� = ����� o  ���%�% 0 month_last_email  � m  ����  07   � r  ����� m  ���� 
 July   � o      �$�$ 0 word_month_last_email  �'  �&  � ��� Z �����#�"� = ����� o  ���!�! 0 month_last_email  � m  ����  08   � r  ����� m  ����  August   � o      � �  0 word_month_last_email  �#  �"  � ��� Z ������� = ����� o  ���� 0 month_last_email  � m  ����  09   � r  ����� m  ����  	September   � o      �� 0 word_month_last_email  �  �  � ��� Z �
����� = ����� o  ���� 0 month_last_email  � m  ����  10   � r  ���� m  ���  October   � o      �� 0 word_month_last_email  �  �  � ��� Z  ����� = ��� o  �� 0 month_last_email  � m  ��  11   � r  ��� m  ��  November   � o      �� 0 word_month_last_email  �  �  � ��� Z !6����� = !(��� o  !$�� 0 month_last_email  � m  $'��  12   � r  +2��� m  +.��  December   � o      �� 0 word_month_last_email  �  �  �  ] R      ���
� .ascrerr ****      � ****�  �  ^ k  >�� � � l >>��   u odo shell script "echo \"No emails in database for: " & address_book_entry_name & "\" | cat >> /tmp/report.html"      l >>�
�
   0 *do shell script "open -e /tmp/report.html"     l >>�	��	  �    l >>�	�  	 0 *fall back by seaching on Address Book name    

 l >>��   R Lthis is not as good as searching by email address, but sometimes it works...     r  >] c  >Y l >U� I >U��
� .sysoexecTEXT���     TEXT b  >Q b  >M b  >I b  >E m  >A J Dmdls -name kMDItemContentCreationDate `mdfind "(kMDItemAuthors == "*    o  AD�� 0 
first_name   m  EH # *" ) && (kMDItemAuthors == "*    o  IL�� 0 	last_name   m  MP B <*" ) && (kMDItemKind == "emlx")" | sort | tail -1` | tail -1   �  �   m  UX� 
�  
TEXT o      ���� 0 date_last_email    !  r  ^}"#" c  ^y$%$ l ^u&��& I ^u��'��
�� .sysoexecTEXT���     TEXT' b  ^q()( b  ^m*+* b  ^i,-, b  ^e./. m  ^a00 < 6mdls -name kMDItemTitle `mdfind "(kMDItemAuthors == "*   / o  ad���� 0 
first_name  - m  eh11 # *" ) && (kMDItemAuthors == "*   + o  il���� 0 	last_name  ) m  mp22 B <*" ) && (kMDItemKind == "emlx")" | sort | tail -1` | tail -1   ��  ��  % m  ux��
�� 
TEXT# o      ���� 0 title_last_email  ! 343 r  ~�565 l ~�7��7 I ~���8��
�� .sysoexecTEXT���     TEXT8 b  ~�9:9 b  ~�;<; b  ~�=>= b  ~�?@? m  ~�AA # mdfind "(kMDItemAuthors == "*   @ o  ������ 0 
first_name  > m  ��BB # *" ) && (kMDItemAuthors == "*   < o  ������ 0 	last_name  : m  ��CC 7 1*" ) && (kMDItemKind == "emlx")" | sort | tail -1   ��  ��  6 o      ���� 0 path_last_email  4 DED l ��������  ��  E FGF l ����H��  H , &trim the title of the email down a bit   G IJI Q  ��KL��K r  ��MNM c  ��OPO n  ��QRQ 7 ����ST
�� 
cha S m  ������ T m  ��������R o  ������ 0 title_last_email  P m  ����
�� 
TEXTN o      ���� 0 title_last_email  L R      ������
�� .ascrerr ****      � ****��  ��  ��  J UVU l ��������  ��  V WXW l ����Y��  Y + %trim the date of the email down a bit   X Z[Z Q  ��\]��\ k  ��^^ _`_ r  ��aba c  ��cdc n  ��efe 7 ����gh
�� 
cha g m  ������ h m  ��������f o  ������ 0 date_last_email  d m  ����
�� 
TEXTb o      ���� 0 date_last_email  ` i��i r  ��jkj c  ��lml n  ��non 7 ����pq
�� 
cha p m  ������ q m  ������ o o  ������ 0 date_last_email  m m  ����
�� 
TEXTk o      ���� 0 date_last_email  ��  ] R      ������
�� .ascrerr ****      � ****��  ��  ��  [ rsr l   ������  ��  s t��t Q   uvwu k  hxx yzy r  {|{ c  }~} n  � 7 ����
�� 
cha � m  ���� � m  ���� � o  ���� 0 date_last_email  ~ m  ��
�� 
TEXT| o      ���� 0 year_last_email  z ��� r  8��� c  4��� n  0��� 7  0����
�� 
cha � m  &*���� � m  +/���� � o   ���� 0 date_last_email  � m  03��
�� 
TEXT� o      ���� 0 month_last_email  � ��� r  9T��� c  9P��� n  9L��� 7 <L����
�� 
cha � m  BF���� 	� m  GK���� 
� o  9<���� 0 date_last_email  � m  LO��
�� 
TEXT� o      ���� 0 day_last_email  � ��� r  U`��� c  U\��� m  UX�� 	 N/A   � m  X[��
�� 
TEXT� o      ���� 0 word_month_last_email  � ��� l aa������  ��  � ��� Z av������� = ah��� o  ad���� 0 month_last_email  � m  dg��  01   � r  kr��� m  kn��  January   � o      ���� 0 word_month_last_email  ��  ��  � ��� Z w�������� = w~��� o  wz���� 0 month_last_email  � m  z}��  02   � r  ����� m  ����  Febuary   � o      ���� 0 word_month_last_email  ��  ��  � ��� Z ��������� = ����� o  ������ 0 month_last_email  � m  ����  03   � r  ����� m  ����  March   � o      ���� 0 word_month_last_email  ��  ��  � ��� Z ��������� = ����� o  ������ 0 month_last_email  � m  ����  04   � r  ����� m  ����  April   � o      ���� 0 word_month_last_email  ��  ��  � ��� Z ��������� = ����� o  ������ 0 month_last_email  � m  ����  05   � r  ����� m  ���� 	 May   � o      ���� 0 word_month_last_email  ��  ��  � ��� Z ��������� = ����� o  ������ 0 month_last_email  � m  ����  06   � r  ����� m  ���� 
 June   � o      ���� 0 word_month_last_email  ��  ��  � ��� Z ��������� = ����� o  ������ 0 month_last_email  � m  ����  07   � r  ����� m  ���� 
 July   � o      ���� 0 word_month_last_email  ��  ��  � ��� Z �������� = ���� o  ������ 0 month_last_email  � m  ���  08   � r  ��� m  ��  August   � o      ���� 0 word_month_last_email  ��  ��  � ��� Z &������� = ��� o  ���� 0 month_last_email  � m  ��  09   � r  "��� m  ��  	September   � o      ���� 0 word_month_last_email  ��  ��  � ��� Z '<������� = '.��� o  '*���� 0 month_last_email  � m  *-    10   � r  18 m  14  October    o      ���� 0 word_month_last_email  ��  ��  �  Z =R���� = =D	 o  =@���� 0 month_last_email  	 m  @C

  11    r  GN m  GJ  November    o      ���� 0 word_month_last_email  ��  ��   �� Z Sh���� = SZ o  SV���� 0 month_last_email   m  VY  12    r  ]d m  ]`  December    o      ���� 0 word_month_last_email  ��  ��  ��  v R      ������
�� .ascrerr ****      � ****��  ��  w k  p  r  pw m  ps       o      ���� 0 path_last_email   �� r  x m  x{    No email found    o      ���� 0 title_last_email  ��  ��  [ !"! l �������  �  " #$# r  ��%&% c  ��'(' b  ��)*) b  ��+,+ b  ��-.- b  ��/0/ o  ���~�~ 0 word_month_last_email  0 m  ��11      . o  ���}�} 0 day_last_email  , m  ��22  ,    * o  ���|�| 0 year_last_email  ( m  ���{
�{ 
TEXT& o      �z�z "0 human_readable_date_last_email  $ 343 l ���y�x�y  �x  4 565 l ���w�v�w  �v  6 787 l ���u9�u  9  report code   8 :;: Q  ��<=�t< k  ��>> ?@? I ���sA�r
�s .sysoexecTEXT���     TEXTA b  ��BCB b  ��DED b  ��FGF b  ��HIH b  ��JKJ b  ��LML b  ��NON b  ��PQP b  ��RSR b  ��TUT m  ��VV  echo "<TR><TD>   U o  ���q�q "0 human_readable_date_last_email  S m  ��WW  <TD><a href="mailto:   Q o  ���p�p 0 address_book_email1  O m  ��XX  ">   M o  ���o�o 0 address_book_entry_name  K m  ��YY  </a><TD><a href="file://   I o  ���n�n 0 path_last_email  G m  ��ZZ  ">   E o  ���m�m 0 title_last_email  C m  ��[[ % </a>" | cat >> /tmp/report.html   �r  @ \�l\ l ���k�j�k  �j  �l  = R      �i�h�g
�i .ascrerr ****      � ****�h  �g  �t  ; ]^] l ���f�e�f  �e  ^ _`_ l ���da�d  a  update the open document   ` bcb I ���cd�b
�c .sysoexecTEXT���     TEXTd m  ��ee  open -e /tmp/report.html   �b  c fgf l ���a�`�a  �`  g hih l ���_�^�_  �^  i jkj l ���]l�]  l $ check if the date is not empty   k m�\m Z  ��no�[�Zn > ��pqp o  ���Y�Y 0 date_last_email  q m  ��rr      o k  ��ss tut l ���X�W�X  �W  u vwv l  ���Vx�V  x��	
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
				   w y�Uy l ���T�S�T  �S  �U  �[  �Z  �\  �?  �>  �@  �� 0 this_person   � 2   � ��R
�R 
azf4��   w m   V Yzz�null     � ��  ^Address Book.app��H?���ٰ��ؠ       )       ��(�Gk����adrb   alis    \  	powerbook                  ��9�H+    ^Address Book.app                                                ��l�b        ����  	                Applications    ���      �m=�      ^  'powerbook:Applications:Address Book.app   "  A d d r e s s   B o o k . a p p   	 p o w e r b o o k  Applications/Address Book.app   / ��  ��   t {|{ l     �Q�P�Q  �P  | }~} l �	�O r  �	��� l �	��N� I �	�M��L
�M .sysoexecTEXT���     TEXT� m  ���� $ date "+REPORT ENDED: %H:%M:%S"   �L  �N  � o      �K�K 0 
time_ended  �O  ~ ��� l 		��J� I 		�I��H
�I .sysoexecTEXT���     TEXT� b  		��� b  		��� m  		��  echo "</table>   � o  		�G�G 0 
time_ended  � m  		�� ! " | cat >> /tmp/report.html   �H  �J  � ��� l 		��F� I 		�E��D
�E .sysoexecTEXT���     TEXT� m  		��  open -e /tmp/report.html   �D  �F  � ��� l     �C�B�C  �B  � ��A� l 	 	"��@� L  	 	"�?�?  �@  �A       "�>���������� � � � � ��=�<� ������;�:�9�8�7�6�5�4�>  �  �3�2�1�0�/�.�-�,�+�*�)�(�'�&�%�$�#�"�!� ������������
�3 .aevtoappnull  �   � ****�2 0 report_date  �1 0 
time_start  �0 0 first_user_name  �/ 0 last_user_name  �. 0 	user_name  �- 0 
first_name  �, 0 	last_name  �+ 0 address_book_entry_name  �* 0 address_book_email1  �) 0 address_book_email2  �( 0 address_book_email3  �' 0 address_book_email4  �& 0 address_book_email5  �% 0 address_book_has_email  �$  0 address_book_email_addresses  �# 0 date_last_email  �" 0 title_last_email  �! 0 path_last_email  �  0 year_last_email  � 0 month_last_email  � 0 day_last_email  � 0 word_month_last_email  � "0 human_readable_date_last_email  �  �  �  �  �  �  �  �  � �������
� .aevtoappnull  �   � ****� k    	"��  ��   ��  *��  2��  :��  I��  Q��  `��  e��  l��  s�� }�� ��� ��� ���  �  �  � ��� 0 this_person  � 0 email_address_count  � � ���
 $ . 9�	 B C P� Y Z d i pz������ ��� ���������� ��� ��� ��� ��� ��� �����������������L��mn������������������� !":;<=cdefg���������������������� !"#�������������������������������������������������012ABC������������������� 
 12��VWXYZ[er������
� .sysoexecTEXT���     TEXT�  �
  �	 0 report_date  � 0 
time_start  
� 
az54
� 
azf7
� 
TEXT� 0 first_user_name  
� 
azf8� 0 last_user_name  � 0 	user_name  
�  
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
time_ended  �	# 
�j W X  hO�j O�j O�j E�O��%�%j O�j E�O��%�%j O�j O�j Oa j Oa �*a ,a ,a &E` O*a ,a ,a &E` O_ a %_ %E` Oi*a -[a a l kh  �a ,a &E` O�a ,a &E` O_ a  %_ %E` !Oa "E` #Oa $E` %Oa &E` 'Oa (E` )Oa *E` +OeE` ,O�a --j E` .O�a -,j / � �k�a --j kh �k  �a -�/a 0,E` #Y hO�l  �a -�/a 0,E` %Y hO�m  �a -�/a 0,E` 'Y hO�a 1  �a -�/a 0,E` )Y hO�a 2  �a -�/a 0,E` +Y hOP[OY�xY fE` ,O_ !a 3	 _ ,fa 4&	 _ ,_ a 4&_ .k  Ja 5_ #%a 6%j a &E` 7Oa 8_ #%a 9%j a &E` :Oa ;_ #%a <%j E` =OPY7_ .l  ba >_ #%a ?%_ %%a @%j a &E` 7Oa A_ #%a B%_ %%a C%j a &E` :Oa D_ #%a E%_ %%a F%j E` =OPY�_ .m  za G_ #%a H%_ %%a I%_ '%a J%j a &E` 7Oa K_ #%a L%_ %%a M%_ '%a N%j a &E` :Oa O_ #%a P%_ %%a Q%_ '%a R%j E` =OPYO_ .a 1  �a S_ #%a T%_ %%a U%_ '%a V%_ )%a W%j a &E` 7Oa X_ #%a Y%_ %%a Z%_ '%a [%_ )%a \%j a &E` :Oa ]_ #%a ^%_ %%a _%_ '%a `%_ )%a a%j E` =OPY �_ .a 2  �a b_ #%a c%_ %%a d%_ '%a e%_ )%a f%_ +%a g%j a &E` 7Oa h_ #%a i%_ %%a j%_ '%a k%_ )%a l%_ +%a m%j a &E` :Oa n_ #%a o%_ %%a p%_ '%a q%_ )%a r%_ +%a s%j E` =OPY hO _ :[a t\[Za u\Zi2a &E` :W X  hO 8_ 7[a t\[Za v\Zi2a &E` 7O_ 7[a t\[Zk\Za w2a &E` 7W X  hOj_ 7[a t\[Zk\Za 12a &E` xO_ 7[a t\[Za y\Za z2a &E` {O_ 7[a t\[Za |\Za }2a &E` ~Oa a &E` �O_ {a �  a �E` �Y hO_ {a �  a �E` �Y hO_ {a �  a �E` �Y hO_ {a �  a �E` �Y hO_ {a �  a �E` �Y hO_ {a �  a �E` �Y hO_ {a �  a �E` �Y hO_ {a �  a �E` �Y hO_ {a �  a �E` �Y hO_ {a �  a �E` �Y hO_ {a �  a �E` �Y hO_ {a �  a �E` �Y hWHX  a �_ %a �%_ %a �%j a &E` 7Oa �_ %a �%_ %a �%j a &E` :Oa �_ %a �%_ %a �%j E` =O _ :[a t\[Za u\Zi2a &E` :W X  hO 8_ 7[a t\[Za v\Zi2a &E` 7O_ 7[a t\[Zk\Za w2a &E` 7W X  hOj_ 7[a t\[Zk\Za 12a &E` xO_ 7[a t\[Za y\Za z2a &E` {O_ 7[a t\[Za |\Za }2a &E` ~Oa �a &E` �O_ {a �  a �E` �Y hO_ {a �  a �E` �Y hO_ {a �  a �E` �Y hO_ {a �  a �E` �Y hO_ {a �  a �E` �Y hO_ {a �  a �E` �Y hO_ {a �  a �E` �Y hO_ {a �  a �E` �Y hO_ {a �  a �E` �Y hO_ {a �  a �E` �Y hO_ {a �  a �E` �Y hO_ {a �  a �E` �Y hW X  a �E` =Oa �E` :O_ �a �%_ ~%a �%_ x%a &E` �O 6a �_ �%a �%_ #%a �%_ !%a �%_ =%a �%_ :%a �%j OPW X  hOa �j O_ 7a � hY hY h[OY��UOa �j E` �Oa �_ �%a �%j Oa �j Oh� ���  1 1 / 2 4 / 0 5� ��� 0 R E P O R T   S T A R T E D :   1 3 : 2 3 : 0 1�  Jeff                  �  Hobbs                  � $ 
Jeff Hobbs                  � " Jonathan                  �  Land                  � ' Jonathan Land                  
�= boovtrue�<  � - 2005-10-16 01:25:00                  �  2005                  �  10                  �  16                  � & N/A 16, 2005                  �;  �:  �9  �8  �7  �6  �5  �4  ascr  ��ޭ