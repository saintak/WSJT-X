FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l     �� 	 
��   	 #   WSJTAppDelegate.applescript    
 �   :     W S J T A p p D e l e g a t e . a p p l e s c r i p t      l     ��  ��       KVASD-installer     �   "     K V A S D - i n s t a l l e r      l     ��������  ��  ��        l     ��  ��    V P    This script is a drag and drop target that expects a WSJT-X app bundle path.     �   �         T h i s   s c r i p t   i s   a   d r a g   a n d   d r o p   t a r g e t   t h a t   e x p e c t s   a   W S J T - X   a p p   b u n d l e   p a t h .      l     ��  ��    U O    It can also be opened with a file list or by dropping a suitable WSJT-X app     �   �         I t   c a n   a l s o   b e   o p e n e d   w i t h   a   f i l e   l i s t   o r   b y   d r o p p i n g   a   s u i t a b l e   W S J T - X   a p p      l     ��   ��    Q K    bundle onto it. Alternatively a target WSJT-X application bundle may be      � ! ! �         b u n d l e   o n t o   i t .   A l t e r n a t i v e l y   a   t a r g e t   W S J T - X   a p p l i c a t i o n   b u n d l e   m a y   b e   " # " l     �� $ %��   $ > 8    selected by clicking the "Choose target ..." button.    % � & & p         s e l e c t e d   b y   c l i c k i n g   t h e   " C h o o s e   t a r g e t   . . . "   b u t t o n . #  ' ( ' l     ��������  ��  ��   (  ) * ) l     �� + ,��   + U O    It fetches the KVASD EULA text and displays it in a dialog which the reader    , � - - �         I t   f e t c h e s   t h e   K V A S D   E U L A   t e x t   a n d   d i s p l a y s   i t   i n   a   d i a l o g   w h i c h   t h e   r e a d e r *  . / . l     �� 0 1��   0 U O    must at least scroll to the end before clicking the Agree button which then    1 � 2 2 �         m u s t   a t   l e a s t   s c r o l l   t o   t h e   e n d   b e f o r e   c l i c k i n g   t h e   A g r e e   b u t t o n   w h i c h   t h e n /  3 4 3 l     �� 5 6��   5 V P    downloads the appropriate KVASD executable. The MD5 hash checksum is checked    6 � 7 7 �         d o w n l o a d s   t h e   a p p r o p r i a t e   K V A S D   e x e c u t a b l e .   T h e   M D 5   h a s h   c h e c k s u m   i s   c h e c k e d 4  8 9 8 l     �� : ;��   : "     on the KVASD executable.    ; � < < 8         o n   t h e   K V A S D   e x e c u t a b l e . 9  = > = l     ��������  ��  ��   >  ? @ ? l     �� A B��   A T N    Once the EULA has been accepted the "Install" button is enabled to install    B � C C �         O n c e   t h e   E U L A   h a s   b e e n   a c c e p t e d   t h e   " I n s t a l l "   b u t t o n   i s   e n a b l e d   t o   i n s t a l l @  D E D l     �� F G��   F S M    the KVASD executable into the target WSJT-X application bundle(s) and the    G � H H �         t h e   K V A S D   e x e c u t a b l e   i n t o   t h e   t a r g e t   W S J T - X   a p p l i c a t i o n   b u n d l e ( s )   a n d   t h e E  I J I l     �� K L��   K R L    RPATHs are modified to reference the libgcc support libraries inside the    L � M M �         R P A T H s   a r e   m o d i f i e d   t o   r e f e r e n c e   t h e   l i b g c c   s u p p o r t   l i b r a r i e s   i n s i d e   t h e J  N O N l     �� P Q��   P $     WSJT-X application bundle.    Q � R R <         W S J T - X   a p p l i c a t i o n   b u n d l e . O  S T S l     ��������  ��  ��   T  U V U l     �� W X��   W 9 3  Created by Bill Somerville (G4WJS) on 12/11/2014.    X � Y Y f     C r e a t e d   b y   B i l l   S o m e r v i l l e   ( G 4 W J S )   o n   1 2 / 1 1 / 2 0 1 4 . V  Z [ Z l     ��������  ��  ��   [  \ ] \ l     �� ^ _��   ^ Y S  The author of this work hereby waives all claim of copyright (economic and moral)    _ � ` ` �     T h e   a u t h o r   o f   t h i s   w o r k   h e r e b y   w a i v e s   a l l   c l a i m   o f   c o p y r i g h t   ( e c o n o m i c   a n d   m o r a l ) ]  a b a l     �� c d��   c ^ X  in this work and immediately places it in the public domain; it may be used, distorted    d � e e �     i n   t h i s   w o r k   a n d   i m m e d i a t e l y   p l a c e s   i t   i n   t h e   p u b l i c   d o m a i n ;   i t   m a y   b e   u s e d ,   d i s t o r t e d b  f g f l     �� h i��   h c ]  or destroyed in any manner whatsoever without further attribution or notice to the creator.    i � j j �     o r   d e s t r o y e d   i n   a n y   m a n n e r   w h a t s o e v e r   w i t h o u t   f u r t h e r   a t t r i b u t i o n   o r   n o t i c e   t o   t h e   c r e a t o r . g  k l k l     ��������  ��  ��   l  m n m l     ��������  ��  ��   n  o p o l     �� q r��   q ( " curl wraps cURL to download files    r � s s D   c u r l   w r a p s   c U R L   t o   d o w n l o a d   f i l e s p  t u t h     �� v�� 0 curl   v k       w w  x y x i      z { z I      �� |���� 0 download   |  } ~ } o      ���� 0 url   ~   �  o      ���� 0 filename fileName �  ��� � o      ���� 0 destination  ��  ��   { k     3 � �  � � � r      � � � b      � � � o     ���� 0 destination   � o    ���� 0 filename fileName � o      ���� 0 file   �  � � � Q    . � � � � I  	 �� ���
�� .sysoexecTEXT���     TEXT � b   	  � � � b   	  � � � b   	  � � � b   	  � � � m   	 
 � � � � � j c u r l   - - f a i l   - - r e t r y   5   - - s i l e n t   - - s h o w - e r r o r   - - o u t p u t   � o   
 ���� 0 file   � m     � � � � �    � o    ���� 0 url   � o    ���� 0 filename fileName��   � R      �� ���
�� .ascrerr ****      � **** � o      ���� 0 errorstring errorString��   � R    .�� ���
�� .ascrerr ****      � **** � b     - � � � b     + � � � b     ) � � � b     ' � � � b     % � � � b     # � � � m     ! � � � � � < A n   e r r o r   o c c u r r e d   d o w n l o a d i n g : � o   ! "��
�� 
ret  � o   # $���� 0 url   � o   % &���� 0 filename fileName � o   ' (��
�� 
ret  � o   ) *��
�� 
ret  � o   + ,���� 0 errorstring errorString��   �  ��� � L   / 3 � � c   / 2 � � � o   / 0���� 0 file   � m   0 1��
�� 
psxf��   y  � � � l     ��������  ��  ��   �  ��� � i     � � � I      �� ����� 0 downloadmd5 downloadMD5 �  � � � o      ���� 0 url   �  ��� � o      ���� 0 filename fileName��  ��   � k     / � �  � � � r      � � � m      � � � � �  . m d 5 � o      ���� 0 md5ext md5Ext �  ��� � Q    / � � � � L     � � I   �� ���
�� .sysoexecTEXT���     TEXT � b     � � � b     � � � b     � � � b    
 � � � m     � � � � � > c u r l   - - f a i l   - - r e t r y   5   - - s i l e n t   � o    	���� 0 url   � o   
 ���� 0 filename fileName � l 
   ����� � o    ���� 0 md5ext md5Ext��  ��   � m     � � � � � �   |   a w k   ' { m a t c h ( $ 0 , " [ [ : x d i g i t : ] ] { 3 2 } " ) ;   p r i n t   s u b s t r ( $ 0 , R S T A R T , R L E N G T H ) } '��   � R      �� ���
�� .ascrerr ****      � **** � o      ���� 0 errorstring errorString��   � R    /�� ���
�� .ascrerr ****      � **** � b    . � � � b    , � � � b    * � � � b    ( � � � b    & � � � b    $ � � � b    " � � � m      � � � � � : A n   e r r o r   o c c u r r e d   d o w n l o a d i n g � o     !��
�� 
ret  � o   " #��
�� 
ret  � o   $ %���� 0 filename fileName � o   & '���� 0 md5ext md5Ext � o   ( )��
�� 
ret  � o   * +��
�� 
ret  � o   , -���� 0 errorstring errorString��  ��  ��   u  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � A ; kvasd looks after fetching kvasd files from the web source    � � � � v   k v a s d   l o o k s   a f t e r   f e t c h i n g   k v a s d   f i l e s   f r o m   t h e   w e b   s o u r c e �  � � � h    �� ��� 	0 kvasd   � k       � �  � � � j     �� ��� 0 
serverpath 
serverPath � m      � � � � � n h t t p s : / / s v n . c o d e . s f . n e t / p / w s j t / w s j t / t r u n k / k v a s d - b i n a r y / �  � � � j    �� ��� 0 
targetname 
targetName � m     � � � � � 
 k v a s d �  � � � l     ��������  ��  ��   �  � � � i    	 � � � I      �������� 0 destination  ��  ��   � L      � � I    �� ��
�� .fndrgstl****    ��� ****  m      �  T M P D I R��   �  l     ��������  ��  ��    i   
  I      �������� 0 	fetcheula 	fetchEULA��  ��   L     		 n    

 I    ������ 0 download    o    
���� 0 
serverpath 
serverPath  b   
  o   
 ���� 0 
targetname 
targetName m     �  _ e u l a . t x t � n    I    �~�}�|�~ 0 destination  �}  �|    f    �  ��   o     �{�{ 0 curl    l     �z�y�x�z  �y  �x    i     I      �w�v�u�w 0 fetchbinary fetchBinary�v  �u   k     k   r     !"! b     #$# o     �t�t 0 
serverpath 
serverPath$ I   �s%�r
�s .sysoexecTEXT���     TEXT% b    &'& m    (( �)) 4 e c h o   ` u n a m e   - s ` - ` u n a m e   - m `' m    ** �++  /�r  " o      �q�q 0 url    ,-, r    !./. n   010 I    �p2�o�p 0 downloadmd5 downloadMD52 343 o    �n�n 0 url  4 5�m5 o    �l�l 0 
targetname 
targetName�m  �o  1 o    �k�k 0 curl  / o      �j�j 0 md5sum md5Sum- 676 r   " 8898 n  " 6:;: I   ' 6�i<�h�i 0 download  < =>= o   ' (�g�g 0 url  > ?@? o   ( -�f�f 0 
targetname 
targetName@ A�eA n  - 2BCB I   . 2�d�c�b�d 0 destination  �c  �b  C  f   - .�e  �h  ; o   " '�a�a 0 curl  9 o      �`�` 0 file  7 DED r   9 FFGF I  9 D�_H�^
�_ .sysoexecTEXT���     TEXTH b   9 @IJI b   9 >KLK m   9 :MM �NN  m d 5  L l  : =O�]�\O n   : =PQP 1   ; =�[
�[ 
psxpQ o   : ;�Z�Z 0 file  �]  �\  J m   > ?RR �SS     |   c u t   - d '   '   - f 4�^  G o      �Y�Y 0 md5calc md5CalcE T�XT Z   G kUV�W�VU >   G JWXW o   G H�U�U 0 md5calc md5CalcX o   H I�T�T 0 md5sum md5SumV R   M g�SYZ
�S .ascrerr ****      � ****Y b   Q f[\[ b   Q b]^] b   Q `_`_ b   Q ^aba b   Q \cdc b   Q Zefe b   Q Xghg b   Q Viji b   Q Tklk m   Q Rmm �nn J K V A S D   d o w n l o a d   c o r r u p t   M D 5   h a s h   c h e c kl o   R S�R
�R 
ret j l 
 T Uo�Q�Po o   T U�O
�O 
ret �Q  �P  h m   V Wpp �qq    e x p e c t e d   [f o   X Y�N�N 0 md5sum md5Sumd m   Z [rr �ss  ]b l 
 \ ]t�M�Lt o   \ ]�K
�K 
ret �M  �L  ` m   ^ _uu �vv        a c t u a l   [^ o   ` a�J�J 0 md5calc md5Calc\ l 	 b ew�I�Hw m   b exx �yy  ]�I  �H  Z �Gz�F
�G 
errnz m   O P�E�E��F  �W  �V  �X   {|{ l     �D�C�B�D  �C  �B  | }~} i    � I      �A�@�?�A 0 savelicense saveLicense�@  �?  � k     *�� ��� r     ��� l 	   ��>�=� I    �<�;�
�< .sysostflalis    ��� null�;  � �:��
�: 
prmp� l 	  ��9�8� m    �� ��� B S p e c i f y   f o l d e r   t o   s a v e   l i c e n s e   t o�9  �8  � �7��6
�7 
dflc� l   	��5�4� I   	�3��2
�3 .earsffdralis        afdr� m    �1
�1 afdrdocs�2  �5  �4  �6  �>  �=  � o      �0�0 0 dest  � ��/� O   *��� l 	  )��.�-� I   )�,��
�, .coreclon****      � ****� c    #��� l   !��+�*� b    !��� b    ��� n   ��� I    �)�(�'�) 0 destination  �(  �'  �  f    � o    �&�& 0 
targetname 
targetName� m     �� ���  _ e u l a . t x t�+  �*  � m   ! "�%
�% 
psxf� �$��#
�$ 
insh� o   $ %�"�" 0 dest  �#  �.  �-  � m    ���                                                                                  MACS  alis    l  	vbox-os-x                  Π�H+   ��
Finder.app                                                      ���\��        ����  	                CoreServices    Π�      �\�r     �� Hp Hn  3vbox-os-x:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 v b o x - o s - x  &System/Library/CoreServices/Finder.app  / ��  �/  ~ ��� l     �!� ��!  �   �  � ��� i    ��� I      ���� 0 printlicense printLicense�  �  � O    ��� l 	  ���� I   ���
� .aevtpdocnull���     obj � c    ��� l   ���� b    ��� b    ��� n   	��� I    	���� 0 destination  �  �  �  f    � o   	 �� 0 
targetname 
targetName� m    �� ���  _ e u l a . t x t�  �  � m    �
� 
psxf�  �  �  � m     ���                                                                                  MACS  alis    l  	vbox-os-x                  Π�H+   ��
Finder.app                                                      ���\��        ����  	                CoreServices    Π�      �\�r     �� Hp Hn  3vbox-os-x:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 v b o x - o s - x  &System/Library/CoreServices/Finder.app  / ��  � ��� l     ����  �  �  � ��� i    ��� I      ���
� 0 cleanup cleanUp�  �
  � O     \��� k    [�� ��� Z    1���	�� I   ���
� .coredoexbool        obj � c    ��� l   ���� b    ��� b    ��� n   	��� I    	���� 0 destination  �  �  �  f    � o   	 � �  0 
targetname 
targetName� m    �� ���  _ e u l a . t x t�  �  � m    ��
�� 
psxf�  � I   -�����
�� .coredeloobj        obj � c    )��� l   '������ b    '��� b    %��� n   ��� I    �������� 0 destination  ��  ��  �  f    � o    $���� 0 
targetname 
targetName� m   % &�� ���  _ e u l a . t x t��  ��  � m   ' (��
�� 
psxf��  �	  �  � ���� Z   2 [������� I  2 C�����
�� .coredoexbool        obj � c   2 ?��� l  2 =������ b   2 =��� n  2 7��� I   3 7�������� 0 destination  ��  ��  �  f   2 3� o   7 <���� 0 
targetname 
targetName��  ��  � m   = >��
�� 
psxf��  � I  F W�����
�� .coredeloobj        obj � c   F S��� l  F Q������ b   F Q��� n  F K��� I   G K�������� 0 destination  ��  ��  �  f   F G� o   K P���� 0 
targetname 
targetName��  ��  � m   Q R��
�� 
psxf��  ��  ��  ��  � m     ���                                                                                  MACS  alis    l  	vbox-os-x                  Π�H+   ��
Finder.app                                                      ���\��        ����  	                CoreServices    Π�      �\�r     �� Hp Hn  3vbox-os-x:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 v b o x - o s - x  &System/Library/CoreServices/Finder.app  / ��  �   � ��� l     ��������  ��  ��  � ��� h    ����� "0 wsjtappdelegate WSJTAppDelegate� k      �� ��� j     ���
�� 
pare� 4     ���
�� 
pcls� m    �� ���  N S O b j e c t� ��� l     ��������  ��  ��  � � � j   	 ���� 0 
mainwindow 
mainWindow m   	 
��
�� 
msng   j    ���� 0 eulatextview eulaTextView m    ��
�� 
msng  j    ���� 0 progressbar progressBar m    ��
�� 
msng 	 j    ��
�� 0 
savebutton 
saveButton
 m    ��
�� 
msng	  j    ���� 0 printbutton printButton m    ��
�� 
msng  j    ���� 0 agreecheckbox agreeCheckBox m    ��
�� 
msng  j    ���� (0 choosetargetbutton chooseTargetButton m    ��
�� 
msng  j     ���� 0 installbutton installButton m    ��
�� 
msng  l     ��������  ��  ��    j   ! $���� $0 bundlestoprocess bundlesToProcess J   ! #����    l     ��������  ��  ��    p   % %   ������ 60 defaultnotificationcentre defaultNotificationCentre��   !"! p   % %## ������ 0 licenceagreed licenceAgreed��  " $%$ l     ��������  ��  ��  % &'& i   % (()( I      ��*���� 	0 split  * +,+ o      ���� 0 thetext theText, -��- o      ���� 0 thedelimiters theDelimiters��  ��  ) k     .. /0/ r     121 n    343 1    ��
�� 
txdl4 1     ��
�� 
ascr2 o      ���� 0 olddelimiters oldDelimiters0 565 r    787 o    ���� 0 thedelimiters theDelimiters8 n     9:9 1    
��
�� 
txdl: 1    ��
�� 
ascr6 ;<; r    =>= l   ?����? n    @A@ 2   ��
�� 
citmA o    ���� 0 thetext theText��  ��  > o      ���� 0 	theresult 	theResult< BCB r    DED o    ���� 0 olddelimiters oldDelimitersE n     FGF 1    ��
�� 
txdlG 1    ��
�� 
ascrC H��H L    II o    ���� 0 	theresult 	theResult��  ' JKJ l     ��������  ��  ��  K LML l     ��NO��  N   do the install   O �PP    d o   t h e   i n s t a l lM QRQ i   ) ,STS I      �������� 0 process  ��  ��  T X    2U��VU Q   -WXYW k   
ZZ [\[ r    !]^] n   _`_ I    ��a���� "0 bundlewithpath_ bundleWithPath_a b��b o    ���� 0 
bundlepath 
bundlePath��  ��  ` n   cdc o    ���� 0 nsbundle NSBundled m    ��
�� misccura^ o      ���� 0 wsjtxbundle wsjtxBundle\ efe Z   " Hgh����g G   " 3iji =   " %klk o   " #���� 0 wsjtxbundle wsjtxBundlel m   # $��
�� 
msngj >   ( 1mnm c   ( /opo n  ( -qrq I   ) -�������� $0 bundleidentifier bundleIdentifier��  ��  r o   ( )���� 0 wsjtxbundle wsjtxBundlep m   - .��
�� 
ctxtn m   / 0ss �tt  o r g . k 1 j t . w s j t xh R   6 D��uv
�� .ascrerr ****      � ****u c   : Cwxw b   : Ayzy b   : ?{|{ b   : =}~} m   : ; ��� \ N o t   a n   a p p r o p r i a t e   W S J T - X   a p p l i c a t i o n   b u n d l e :  ~ o   ; <��
�� 
ret | l 
 = >������ o   = >��
�� 
ret ��  ��  z o   ? @���� 0 
bundlepath 
bundlePathx m   A B��
�� 
ctxtv �����
�� 
errn� m   8 9�������  ��  ��  f ��� r   I R��� c   I P��� n  I N��� I   J N������� 0 
bundlepath 
bundlePath��  �  � o   I J�~�~ 0 wsjtxbundle wsjtxBundle� m   N O�}
�} 
ctxt� o      �|�| 0 installroot installRoot� ��� I  S u�{��
�{ .sysodlogaskr        TEXT� b   S \��� b   S Z��� b   S X��� m   S V�� ��� H I n s t a l l   K V A S D   i n t o   A p l i c a t i o n   B u n d l e� o   V W�z
�z 
ret � l 
 X Y��y�x� o   X Y�w
�w 
ret �y  �x  � l 
 Z [��v�u� o   Z [�t�t 0 installroot installRoot�v  �u  � �s��
�s 
btns� J   _ g�� ��� m   _ b�� ���  O k� ��r� m   b e�� ���  S k i p�r  � �q��p
�q 
dflt� J   j o�� ��o� m   j m�� ���  O k�o  �p  � ��n� Z   v
���m�l� =   v ���� n   v }��� 1   y }�k
�k 
bhit� 1   v y�j
�j 
rslt� m   } ��� ���  O k� Q   ����� k   � ��� ��� r   � ���� b   � ���� b   � ���� o   � ��i�i 0 installroot installRoot� m   � ��� ���   / C o n t e n t s / M a c O S /� n  � ���� o   � ��h�h 0 
targetname 
targetName� o   � ��g�g 	0 kvasd  � o      �f�f 
0 target  � ��� I  � ��e��d
�e .sysoexecTEXT���     TEXT� b   � ���� b   � ���� b   � ���� b   � ���� m   � ��� ���  c p  � n  � ���� I   � ��c�b�a�c 0 destination  �b  �a  � o   � ��`�` 	0 kvasd  � n  � ���� o   � ��_�_ 0 
targetname 
targetName� o   � ��^�^ 	0 kvasd  � 1   � ��]
�] 
spac� o   � ��\�\ 
0 target  �d  � ��� I  � ��[��Z
�[ .sysoexecTEXT���     TEXT� b   � ���� m   � ��� ���  c h m o d   + x  � o   � ��Y�Y 
0 target  �Z  � ��X� I  � ��W��
�W .sysodisAaleR        TEXT� b   � ���� b   � ���� b   � ���� m   � ��� ��� P K V A S D   i n s t a l l e d   i n t o   a p p l i c a t i o n   b u n d l e :� o   � ��V
�V 
ret � o   � ��U
�U 
ret � l 
 � ���T�S� o   � ��R�R 0 installroot installRoot�T  �S  � �Q��
�Q 
btns� J   � ��� ��P� m   � ��� ���  O k�P  � �O��
�O 
dflt� l 	 � ���N�M� m   � ��� ���  O k�N  �M  � �L��K
�L 
givu� m   � ��J�J �K  �X  � R      �I��H
�I .ascrerr ****      � ****� o      �G�G 0 errorstring errorString�H  � R   ��F��E
�F .ascrerr ****      � ****� b   ���� b   ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � �� � m   � � � Z F a i l e d   t o   m o v e   K V A S D   i n t o   a p p l i c a t i o n   b u n d l e :  o   � ��D
�D 
ret � o   � ��C
�C 
ret � l 
 � ��B�A o   � ��@�@ 0 installroot installRoot�B  �A  � o   � ��?
�? 
ret � o   � ��>
�> 
ret � m   � �  E r r o r :  � o  �=�= 0 errorstring errorString�E  �m  �l  �n  X R      �<�;
�< .ascrerr ****      � **** o      �:�: 0 errorstring errorString�;  Y I -�9
�9 .sysodisAaleR        TEXT o  �8�8 0 errorstring errorString �7	

�7 
as A	 m  �6
�6 EAlTwarN
 �5
�5 
btns J  ! �4 m   �  O k�4   �3�2
�3 
dflt m  $' �  O k�2  �� 0 
bundlepath 
bundlePathV o    �1�1 $0 bundlestoprocess bundlesToProcessR  l     �0�/�.�0  �/  �.    l     �-�,�+�-  �,  �+    l     �*�*   %  NSApplicationDelegate Protocol    � >   N S A p p l i c a t i o n D e l e g a t e   P r o t o c o l  l     �)�(�'�)  �(  �'     i   - 0!"! I      �&#�%�& B0 applicationwillfinishlaunching_ applicationWillFinishLaunching_# $�$$ o      �#�# 0 anotification aNotification�$  �%  " Q     p%&'% k    b(( )*) l   �"+,�"  + L F            mainWindow's registerForDraggedTypes_({"public.file-url"})   , �-- �                         m a i n W i n d o w ' s   r e g i s t e r F o r D r a g g e d T y p e s _ ( { " p u b l i c . f i l e - u r l " } )* ./. l   �!� ��!  �   �  / 010 r    232 n   
454 I    
���� 0 defaultcenter defaultCenter�  �  5 n   676 o    �� ,0 nsnotificationcenter NSNotificationCenter7 m    �
� misccura3 o      �� 60 defaultnotificationcentre defaultNotificationCentre1 898 r    :;: m    �
� boovfals; o      �� 0 licenceagreed licenceAgreed9 <=< n   >?> I    �@�� 0 seteditable_ setEditable_@ A�A m    �
� boovfals�  �  ? o    �� 0 eulatextview eulaTextView= BCB l   ����  �  �  C DED h    #�F� 0 downloadeula downloadEulaF n    GHG I    �I�� 0 
setstring_ 
setString_I J�J I   �
K�	
�
 .rdwrread****        ****K n   LML I   
 ���� 0 	fetcheula 	fetchEULA�  �  M o    
�� 	0 kvasd  �	  �  �  H o     �� 0 eulatextview eulaTextViewE NON n  $ *PQP I   % *�R�� 0 dowithretry doWithRetryR S�S o   % &� �  0 downloadeula downloadEula�  �  Q  f   $ %O TUT n  + 5VWV I   0 5��X���� 0 setenabled_ setEnabled_X Y��Y m   0 1��
�� boovtrue��  ��  W o   + 0���� 0 
savebutton 
saveButtonU Z[Z n  6 @\]\ I   ; @��^���� 0 setenabled_ setEnabled_^ _��_ m   ; <��
�� boovtrue��  ��  ] o   6 ;���� 0 printbutton printButton[ `a` l  A A��������  ��  ��  a bcb l  A A��de��  d < 6 add observers for view port changes on EULA text view   e �ff l   a d d   o b s e r v e r s   f o r   v i e w   p o r t   c h a n g e s   o n   E U L A   t e x t   v i e wc ghg r   A Fiji n  A Dklk o   B D���� F0 !nsviewboundsdidchangenotification !NSViewBoundsDidChangeNotificationl m   A B��
�� misccuraj o      ���� (0 boundschangenotice boundsChangeNoticeh mnm r   G Lopo n  G Jqrq o   H J���� D0  nsviewframedidchangenotification  NSViewFrameDidChangeNotificationr m   G H��
�� misccurap o      ���� &0 framechangenotice frameChangeNoticen sts n  M Vuvu I   N V��w���� F0 !addobserver_selector_name_object_ !addObserver_selector_name_object_w xyx  f   N Oy z{z m   O P|| �}}  v i e w C h a n g e d :{ ~~ o   P Q���� (0 boundschangenotice boundsChangeNotice ���� m   Q R��
�� 
msng��  ��  v o   M N���� 60 defaultnotificationcentre defaultNotificationCentret ���� n  W b��� I   X b������� F0 !addobserver_selector_name_object_ !addObserver_selector_name_object_� ���  f   X Y� ��� m   Y \�� ���  v i e w C h a n g e d :� ��� o   \ ]���� &0 framechangenotice frameChangeNotice� ���� m   ] ^��
�� 
msng��  ��  � o   W X���� 60 defaultnotificationcentre defaultNotificationCentre��  & R      �����
�� .ascrerr ****      � ****� o      ���� 0 errorstring errorString��  ' I   j p������� 	0 abort  � ���� o   k l���� 0 errorstring errorString��  ��    ��� l     ��������  ��  ��  � ��� i   1 4��� I      ������� d0 0applicationshouldterminateafterlastwindowclosed_ 0applicationShouldTerminateAfterLastWindowClosed_� ���� o      ���� 
0 sender  ��  ��  � L     �� m     ��
�� boovtrue� ��� l     ��������  ��  ��  � ��� i   5 8��� I      ������� 60 applicationwillterminate_ applicationWillTerminate_� ���� o      ���� 
0 sender  ��  ��  � k     �� ��� n    ��� I    ������� "0 removeobserver_ removeObserver_� ����  f    ��  ��  � o     ���� 60 defaultnotificationcentre defaultNotificationCentre� ���� n   ��� I    �������� 0 cleanup cleanUp��  ��  � o    ���� 	0 kvasd  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � N H NSDraggingDestination (NSWindow Delgate) Protocol (Not working on 10.7)   � ��� �   N S D r a g g i n g D e s t i n a t i o n   ( N S W i n d o w   D e l g a t e )   P r o t o c o l   ( N o t   w o r k i n g   o n   1 0 . 7 )� ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � ' ! Accept Generic drag&drop sources   � ��� B   A c c e p t   G e n e r i c   d r a g & d r o p   s o u r c e s� ��� l     ������  � %     on draggingEntered_(sender)   � ��� >         o n   d r a g g i n g E n t e r e d _ ( s e n d e r )� ��� l     ������  � A ;        return current application's NSDragOperationGeneric   � ��� v                 r e t u r n   c u r r e n t   a p p l i c a t i o n ' s   N S D r a g O p e r a t i o n G e n e r i c� ��� l     ������  �      end draggingEntered_   � ��� 0         e n d   d r a g g i n g E n t e r e d _� ��� l     ��������  ��  ��  � ��� l     ������  � #  Process a drop on our window   � ��� :   P r o c e s s   a   d r o p   o n   o u r   w i n d o w� ��� l     ������  � * $    on performDragOperation_(sender)   � ��� H         o n   p e r f o r m D r a g O p e r a t i o n _ ( s e n d e r )� ��� l     ������  �          try   � ���                  t r y� ��� l     ������  � 9 3            set pb to sender's draggingPasteboard()   � ��� f                         s e t   p b   t o   s e n d e r ' s   d r a g g i n g P a s t e b o a r d ( )� ��� l     ������  � ] W            if pb's types() as list contains current application's NSURLPboardType then   � ��� �                         i f   p b ' s   t y p e s ( )   a s   l i s t   c o n t a i n s   c u r r e n t   a p p l i c a t i o n ' s   N S U R L P b o a r d T y p e   t h e n� ��� l     ������  � w q                set options to {NSPasteboardURLReadingContentsConformToTypesKey:{"com.apple.application-bundle"}}   � ��� �                                 s e t   o p t i o n s   t o   { N S P a s t e b o a r d U R L R e a d i n g C o n t e n t s C o n f o r m T o T y p e s K e y : { " c o m . a p p l e . a p p l i c a t i o n - b u n d l e " } }� ��� l     ������  � s m                repeat with u in pb's readObjectsForClasses_options_({current application's |NSURL|},options)   � ��� �                                 r e p e a t   w i t h   u   i n   p b ' s   r e a d O b j e c t s F o r C l a s s e s _ o p t i o n s _ ( { c u r r e n t   a p p l i c a t i o n ' s   | N S U R L | } , o p t i o n s )� ��� l     ������  � D >                    copy u's |path| to end of bundlesToProcess   � ��� |                                         c o p y   u ' s   | p a t h |   t o   e n d   o f   b u n d l e s T o P r o c e s s� ��� l     ������  �                   end repeat   � ��� 4                                 e n d   r e p e a t� ��� l     ������  � E ?                if bundlesToProcess � {} and licenceAgreed then   � �   ~                                 i f   b u n d l e s T o P r o c e s s  "`   { }   a n d   l i c e n c e A g r e e d   t h e n�  l     ����   ; 5                    installButton's setEnabled_(true)    � j                                         i n s t a l l B u t t o n ' s   s e t E n a b l e d _ ( t r u e )  l     ��	��                    end if   	 �

 ,                                 e n d   i f  l     ����   !                 return true    � 6                                 r e t u r n   t r u e  l     ����                end if    � $                         e n d   i f  l     ����   "         on error errorString    � 8                 o n   e r r o r   e r r o r S t r i n g  l     ����   $             abort(errorString)    � <                         a b o r t ( e r r o r S t r i n g )   l     ��!"��  !          end try   " �##                  e n d   t r y  $%$ l     ��&'��  &          return false   ' �(( (                 r e t u r n   f a l s e% )*) l     ��+,��  + #     end performDragOperation_   , �-- :         e n d   p e r f o r m D r a g O p e r a t i o n _* ./. l     ��������  ��  ��  / 010 l     ��������  ��  ��  1 232 l     ��45��  4   UI handlers   5 �66    U I   h a n d l e r s3 787 l     ��������  ��  ��  8 9:9 l     ��������  ��  ��  : ;<; l     ��=>��  =  
 Save EULA   > �??    S a v e   E U L A< @A@ i   9 <BCB I      ��D���� 0 dosave_ doSave_D E��E o      ���� 
0 sender  ��  ��  C Q     $FGHF n   IJI I    �������� 0 savelicense saveLicense��  ��  J o    ���� 	0 kvasd  G R      ��KL
�� .ascrerr ****      � ****K o      ���� 0 errorstring errorStringL ��M�
�� 
errnM o      �~�~ 0 errornumber errorNumber�  H Z    $NO�}PN =   QRQ o    �|�| 0 errornumber errorNumberR m    �{�{��O l   �zST�z  S   just ignore Cancel   T �UU &   j u s t   i g n o r e   C a n c e l�}  P I    $�yV�x�y 	0 abort  V W�wW o     �v�v 0 errorstring errorString�w  �x  A XYX l     �u�t�s�u  �t  �s  Y Z[Z l     �r\]�r  \  
 Save EULA   ] �^^    S a v e   E U L A[ _`_ i   = @aba I      �qc�p�q 0 doprint_ doPrint_c d�od o      �n�n 
0 sender  �o  �p  b Q     $efge n   hih I    �m�l�k�m 0 printlicense printLicense�l  �k  i o    �j�j 	0 kvasd  f R      �ijk
�i .ascrerr ****      � ****j o      �h�h 0 errorstring errorStringk �gl�f
�g 
errnl o      �e�e 0 errornumber errorNumber�f  g Z    $mn�dom =   pqp o    �c�c 0 errornumber errorNumberq m    �b�b��n l   �ars�a  r   just ignore Cancel   s �tt &   j u s t   i g n o r e   C a n c e l�d  o I    $�`u�_�` 	0 abort  u v�^v o     �]�] 0 errorstring errorString�^  �_  ` wxw l     �\�[�Z�\  �[  �Z  x yzy l     �Y{|�Y  {   Agree Button handler   | �}} *   A g r e e   B u t t o n   h a n d l e rz ~~ i   A D��� I      �X��W�X 0 doagree_ doAgree_� ��V� o      �U�U 
0 sender  �V  �W  � Z     Z���T�S� c     ��� n    	��� I    	�R�Q�P�R 	0 state  �Q  �P  � o     �O�O 0 agreecheckbox agreeCheckBox� m   	 
�N
�N 
bool� k    V�� ��� Q    -���� k    �� ��� h    �M��M 0 downloadkvasd downloadKvasd� n    	��� I    	�L�K�J�L 0 fetchbinary fetchBinary�K  �J  � o     �I�I 	0 kvasd  � ��H� n   ��� I    �G��F�G 0 dowithretry doWithRetry� ��E� o    �D�D 0 downloadkvasd downloadKvasd�E  �F  �  f    �H  � R      �C��B
�C .ascrerr ****      � ****� o      �A�A 0 errorstring errorString�B  � I   ' -�@��?�@ 	0 abort  � ��>� o   ( )�=�= 0 errorstring errorString�>  �?  � ��� n  . 8��� I   3 8�<��;�< 0 setenabled_ setEnabled_� ��:� m   3 4�9
�9 boovfals�:  �;  � o   . 3�8�8 0 agreecheckbox agreeCheckBox� ��� r   9 <��� m   9 :�7
�7 boovtrue� o      �6�6 0 licenceagreed licenceAgreed� ��5� Z   = V���4�3� >   = E��� o   = B�2�2 $0 bundlestoprocess bundlesToProcess� J   B D�1�1  � n  H R��� I   M R�0��/�0 0 setenabled_ setEnabled_� ��.� m   M N�-
�- boovtrue�.  �/  � o   H M�,�, 0 installbutton installButton�4  �3  �5  �T  �S   ��� l     �+�*�)�+  �*  �)  � ��� l     �(���(  � #  Choose target button handler   � ��� :   C h o o s e   t a r g e t   b u t t o n   h a n d l e r� ��� i   E H��� I      �'��&�' "0 dochoosetarget_ doChooseTarget_� ��%� o      �$�$ 
0 sender  �%  �&  � Q     a���� k    X�� ��� X    4��#�� s   % /��� n   % (��� 1   & (�"
�" 
psxp� o   % &�!�! 
0 target  � n      ���  ;   - .� o   ( -� �  $0 bundlestoprocess bundlesToProcess�# 
0 target  � l 	  ���� I   ���
� .sysostdfalis    ��� null�  � ���
� 
prmp� l 	  	���� m    	�� ��� � C h o o s e   t h e   W S J T - X   a p p l i c a t i o n   b u n d l e   y o u   w i s h   t o   i n s t a l l   K V A S D   i n t o�  �  � ���
� 
ftyp� l 	 
 ���� m   
 �� ��� 8 c o m . a p p l e . a p p l i c a t i o n - b u n d l e�  �  � ���
� 
dflc� l 
  ���� c    ��� c    ��� m    �� ���  / A p p l i c a t i o n s� m    �
� 
psxf� m    �
� 
alis�  �  � ���
� 
lfiv� l 
  ���� m    �
� boovfals�  �  � ���
� 
mlsl� m    �

�
 boovtrue�  �  �  � ��	� Z   5 X����� F   5 G��� >   5 =��� o   5 :�� $0 bundlestoprocess bundlesToProcess� J   : <��  � o   @ C�� 0 licenceagreed licenceAgreed� n  J T��� I   O T���� 0 setenabled_ setEnabled_� ��� m   O P� 
�  boovtrue�  �  � o   J O���� 0 installbutton installButton�  �  �	  � R      �����
�� .ascrerr ****      � ****��  � �����
�� 
errn� d      �� m      ���� ���  � l  ` `������  �   just ignore Cancel   � ��� &   j u s t   i g n o r e   C a n c e l� ��� l     ��������  ��  ��  � ��� l     ������  �   Install button handler   � ��� .   I n s t a l l   b u t t o n   h a n d l e r� ��� i   I L� � I      ������ 0 
doinstall_ 
doInstall_ �� o      ���� 
0 sender  ��  ��    Q     * k      I    �������� 0 process  ��  ��   	
	 r   	  J   	 ����   o      ���� $0 bundlestoprocess bundlesToProcess
 �� n    I    ������ 0 setenabled_ setEnabled_ �� m    ��
�� boovfals��  ��   o    ���� 0 installbutton installButton��   R      ����
�� .ascrerr ****      � **** o      ���� 0 errorstring errorString��   I   $ *������ 	0 abort   �� o   % &���� 0 errorstring errorString��  ��  �  l     ��������  ��  ��    l     ����   < 6 handler called on eulaTextView scroll or view changes    � l   h a n d l e r   c a l l e d   o n   e u l a T e x t V i e w   s c r o l l   o r   v i e w   c h a n g e s  l     ����   > 8 enables agree/install button once the bottom is reached    �   p   e n a b l e s   a g r e e / i n s t a l l   b u t t o n   o n c e   t h e   b o t t o m   i s   r e a c h e d !"! i   M P#$# I      ��%���� 0 viewchanged_ viewChanged_% &��& o      ���� 0 anotification aNotification��  ��  $ Q     T'()' k    F** +,+ r    -.- c    /0/ n   
121 o    
���� 
0 bounds  2 o    ���� 0 eulatextview eulaTextView0 m   
 ��
�� 
reco. o      ���� 0 dr  , 343 r    565 c    787 n   9:9 o    ���� 0 visiblerect visibleRect: o    ���� 0 eulatextview eulaTextView8 m    ��
�� 
reco6 o      ���� 0 vdr  4 ;��; Z    F<=����< F    5>?> B   .@A@ \    ,BCB n     DED o     ���� 
0 height  E n    FGF o    ���� 0 size  G o    ���� 0 dr  C l    +H����H [     +IJI n     %KLK o   # %���� 0 y  L n     #MNM o   ! #���� 
0 origin  N o     !���� 0 vdr  J n   % *OPO o   ( *���� 
0 height  P n   % (QRQ o   & (���� 0 size  R o   % &���� 0 vdr  ��  ��  A l 
 , -S����S m   , -����  ��  ��  ? H   1 3TT o   1 2���� 0 licenceagreed licenceAgreed= n  8 BUVU I   = B��W���� 0 setenabled_ setEnabled_W X��X m   = >��
�� boovtrue��  ��  V o   8 =���� 0 agreecheckbox agreeCheckBox��  ��  ��  ( R      ��Y��
�� .ascrerr ****      � ****Y o      ���� 0 errorstring errorString��  ) I   N T��Z���� 	0 abort  Z [��[ o   O P���� 0 errorstring errorString��  ��  " \]\ l     ��������  ��  ��  ] ^_^ l     ��`a��  `    Do something with retries   a �bb 4   D o   s o m e t h i n g   w i t h   r e t r i e s_ cdc i   Q Tefe I      ��g���� 0 dowithretry doWithRetryg h��h o      ���� 
0 action  ��  ��  f k     Wii jkj r     lml m     ��
�� boovfalsm o      ���� 0 done  k n��n W    Wopo Q   
 Rqrsq k    tt uvu n   wxw I    ��y����  0 progressaction progressActiony z��z o    ���� 
0 action  ��  ��  x  f    v {��{ r    |}| m    ��
�� boovtrue} o      ���� 0 done  ��  r R      ��~��
�� .ascrerr ****      � ****~ o      ���� 0 errorstring errorString��  s k    R ��� r    "��� m     ��
�� boovfals� o      ���� 0 usercanceled userCanceled� ��� Q   # C���� r   & 8��� I  & 6����
�� .sysodisAaleR        TEXT� o   & '���� 0 errorstring errorString� ����
�� 
as A� l 
 ( )������ m   ( )��
�� EAlTwarN��  ��  � ����
�� 
btns� J   * .�� ��� m   * +�� ���  C a n c e l� ���� m   + ,�� ��� 
 R e t r y��  � ����
�� 
dflt� m   / 0�� ��� 
 R e t r y� �����
�� 
cbtn� m   1 2�� ���  C a n c e l��  � o      ���� 0 dialogresult dialogResult� R      �����
�� .ascrerr ****      � ****��  � �����
�� 
errn� d      �� m      ���� ���  � r   @ C��� m   @ A��
�� boovtrue� o      ���� 0 usercanceled userCanceled� ���� Z   D R������� o   D E���� 0 usercanceled userCanceled� R   H N�����
�� .ascrerr ****      � ****� m   J M�� ��� . U s e r   c a n c e l e d   o p e r a t i o n��  ��  ��  ��  p o    	�� 0 done  ��  d ��� l     �~�}�|�~  �}  �|  � ��� l     �{���{  � H B execute around handler to display a progress bar during an action   � ��� �   e x e c u t e   a r o u n d   h a n d l e r   t o   d i s p l a y   a   p r o g r e s s   b a r   d u r i n g   a n   a c t i o n� ��� i   U X��� I      �z��y�z  0 progressaction progressAction� ��x� o      �w�w 
0 action  �x  �y  � k      �� ��� n    
��� I    
�v��u�v "0 startanimation_ startAnimation_� ��t�  f    �t  �u  � o     �s�s 0 progressbar progressBar� ��� O   ��� I   �r�q�p
�r .aevtoappnull  �   � ****�q  �p  � o    �o�o 
0 action  � ��n� n    ��� I     �m��l�m  0 stopanimation_ stopAnimation_� ��k�  f    �k  �l  � o    �j�j 0 progressbar progressBar�n  � ��� l     �i�h�g�i  �h  �g  � ��� l     �f���f  �   Abort handler   � ���    A b o r t   h a n d l e r� ��� i   Y \��� I      �e��d�e 	0 abort  � ��c� o      �b�b 0 errorstring errorString�c  �d  � k     �� ��� I    �a��
�a .sysodisAaleR        TEXT� o     �`�` 0 errorstring errorString� �_��
�_ 
as A� m    �^
�^ EAlTcriT� �]��
�] 
btns� J    �� ��\� m    �� ���  O k�\  � �[��Z
�[ 
dflt� m    	�� ���  O k�Z  � ��Y� I   �X�W�V
�X .aevtquitnull��� ��� null�W  �V  �Y  � ��� l     �U�T�S�U  �T  �S  � ��� l     �R���R  �   About menu item   � ���     A b o u t   m e n u   i t e m� ��Q� i   ] `��� I      �P��O�P 0 doabout_ doAbout_� ��N� o      �M�M 
0 sender  �N  �O  � I    �L��K
�L .sysodisAaleR        TEXT� m     �� ��� ( K V A S D - i n s t a l l e r   v 1 . 0�K  �Q  � ��J� l     �I�H�G�I  �H  �G  �J       �F�����F  � �E�D�C�E 0 curl  �D 	0 kvasd  �C "0 wsjtappdelegate WSJTAppDelegate� �B v  ��B 0 curl  �  ���� �A�@�A 0 download  �@ 0 downloadmd5 downloadMD5� �? {�>�=� �<�? 0 download  �> �;�;   �:�9�8�: 0 url  �9 0 filename fileName�8 0 destination  �=  � �7�6�5�4�3�7 0 url  �6 0 filename fileName�5 0 destination  �4 0 file  �3 0 errorstring errorString   � ��2�1�0 ��/�.
�2 .sysoexecTEXT���     TEXT�1 0 errorstring errorString�0  
�/ 
ret 
�. 
psxf�< 4��%E�O �%�%�%�%j W X  )j��%�%�%�%�%�%O��&� �- ��,�+�*�- 0 downloadmd5 downloadMD5�, �)�)   �(�'�( 0 url  �' 0 filename fileName�+   �&�%�$�#�& 0 url  �% 0 filename fileName�$ 0 md5ext md5Ext�# 0 errorstring errorString  � � ��"�!�  ��
�" .sysoexecTEXT���     TEXT�! 0 errorstring errorString�   
� 
ret �* 0�E�O �%�%�%�%j W X  )j��%�%�%�%�%�%�%� � �  � 	0 kvasd   
  � �	
 ��������� 0 
serverpath 
serverPath� 0 
targetname 
targetName� 0 destination  � 0 	fetcheula 	fetchEULA� 0 fetchbinary fetchBinary� 0 savelicense saveLicense� 0 printlicense printLicense� 0 cleanup cleanUp � ����� 0 destination  �  �     �
� .fndrgstl****    ��� ****� �j  ����� 0 	fetcheula 	fetchEULA�  �     ��� 0 destination  � 0 download  � b   b   b  �%)j+ m+ 	 �
�	���
 0 fetchbinary fetchBinary�	  �   ����� 0 url  � 0 md5sum md5Sum� 0 file  � 0 md5calc md5Calc (*��� ��M��R����m��prux
� .sysoexecTEXT���     TEXT� 0 downloadmd5 downloadMD5�  0 destination  �� 0 download  
�� 
psxp
�� 
errn���
�� 
ret � lb   ��%j %E�Ob   �b  l+ E�Ob   �b  )j+ m+ E�O��,%�%j E�O�� )��l��%�%�%�%�%�%�%�%a %Y h
 ����������� 0 savelicense saveLicense��  ��   ���� 0 dest   �����������������������
�� 
prmp
�� 
dflc
�� afdrdocs
�� .earsffdralis        afdr�� 
�� .sysostflalis    ��� null�� 0 destination  
�� 
psxf
�� 
insh
�� .coreclon****      � ****�� +*����j � E�O� )j+ b  %�%�&�l U ����������� 0 printlicense printLicense��  ��     ���������� 0 destination  
�� 
psxf
�� .aevtpdocnull���     obj �� � )j+ b  %�%�&j U ����������� 0 cleanup cleanUp��  ��     ������������� 0 destination  
�� 
psxf
�� .coredoexbool        obj 
�� .coredeloobj        obj �� ]� Y)j+ b  %�%�&j  )j+ b  %�%�&j Y hO)j+ b  %�&j  )j+ b  %�&j Y hU� ����� "0 wsjtappdelegate WSJTAppDelegate  ����
�� misccura
�� 
pcls �  N S O b j e c t  ������������������ !"#$%&'()*+,-. ��������������������������������������������������
�� 
pare�� 0 
mainwindow 
mainWindow�� 0 eulatextview eulaTextView�� 0 progressbar progressBar�� 0 
savebutton 
saveButton�� 0 printbutton printButton�� 0 agreecheckbox agreeCheckBox�� (0 choosetargetbutton chooseTargetButton�� 0 installbutton installButton�� $0 bundlestoprocess bundlesToProcess�� 	0 split  �� 0 process  �� B0 applicationwillfinishlaunching_ applicationWillFinishLaunching_�� d0 0applicationshouldterminateafterlastwindowclosed_ 0applicationShouldTerminateAfterLastWindowClosed_�� 60 applicationwillterminate_ applicationWillTerminate_�� 0 dosave_ doSave_�� 0 doprint_ doPrint_�� 0 doagree_ doAgree_�� "0 dochoosetarget_ doChooseTarget_�� 0 
doinstall_ 
doInstall_�� 0 viewchanged_ viewChanged_�� 0 dowithretry doWithRetry��  0 progressaction progressAction�� 	0 abort  �� 0 doabout_ doAbout_��  
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng ������  ��    ��)����/0���� 	0 split  �� ��1�� 1  ������ 0 thetext theText�� 0 thedelimiters theDelimiters��  / ���������� 0 thetext theText�� 0 thedelimiters theDelimiters�� 0 olddelimiters oldDelimiters�� 0 	theresult 	theResult0 ������
�� 
ascr
�� 
txdl
�� 
citm�� ��,E�O���,FO��-E�O���,FO�! ��T����23���� 0 process  ��  ��  2 ������������ 0 
bundlepath 
bundlePath�� 0 wsjtxbundle wsjtxBundle�� 0 installroot installRoot�� 
0 target  �� 0 errorstring errorString3 1������������������s��������������������������������������������������������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� misccura�� 0 nsbundle NSBundle�� "0 bundlewithpath_ bundleWithPath_
�� 
msng�� $0 bundleidentifier bundleIdentifier
�� 
ctxt
�� 
bool
�� 
errn���
�� 
ret �� 0 
bundlepath 
bundlePath
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
bhit�� 0 
targetname 
targetName�� 0 destination  
�� 
spac
�� .sysoexecTEXT���     TEXT
�� 
givu�� �� 
�� .sysodisAaleR        TEXT�� 0 errorstring errorString��  
�� 
as A
� EAlTwarN��31b  	[��l kh   ���,�k+ E�O�� 
 �j+ �&��& )��l��%�%�%�&Y hO�j+ �&E�Oa �%�%�%a a a lva a kva  O_ a ,a   � f�a %b  a ,%E�Oa b  j+ %b  a ,%_ %�%j  Oa !�%j  Oa "�%�%�%a a #kva a $a %a &a ' (W X ) *)ja +�%�%�%�%�%a ,%�%Y hW "X ) *�a -a .a a /kva a 0a ' ([OY��" �~"�}�|45�{�~ B0 applicationwillfinishlaunching_ applicationWillFinishLaunching_�} �z6�z 6  �y�y 0 anotification aNotification�|  4 �x�w�v�u�t�x 0 anotification aNotification�w 0 downloadeula downloadEula�v (0 boundschangenotice boundsChangeNotice�u &0 framechangenotice frameChangeNotice�t 0 errorstring errorString5 �s�r�q�p�o�n�mF7�l�k�j�i|�h�g�f��e�d�c
�s misccura�r ,0 nsnotificationcenter NSNotificationCenter�q 0 defaultcenter defaultCenter�p 60 defaultnotificationcentre defaultNotificationCentre�o 0 licenceagreed licenceAgreed�n 0 seteditable_ setEditable_�m 0 downloadeula downloadEula7 �b8�a�`9:�_
�b .ascrinit****      � ****8 k     ;; <�^< i     =>= I      �]�\�[
�] .aevtoappnull  �   � ****�\  �[  > k     ?? @�Z@ l    F�Y�X�Y  �X  �Z  �^  �a  �`  9 �W
�W .aevtoappnull  �   � ****: AA �V>�U�TBC�S
�V .aevtoappnull  �   � ****�U  �T  B  C �R�Q�P�R 0 	fetcheula 	fetchEULA
�Q .rdwrread****        ****�P 0 
setstring_ 
setString_�S b  b  j+  j k+ �_ L  �l 0 dowithretry doWithRetry�k 0 setenabled_ setEnabled_�j F0 !nsviewboundsdidchangenotification !NSViewBoundsDidChangeNotification�i D0  nsviewframedidchangenotification  NSViewFrameDidChangeNotification
�h 
msng�g �f F0 !addobserver_selector_name_object_ !addObserver_selector_name_object_�e 0 errorstring errorString�d  �c 	0 abort  �{ q d��,j+ E�OfE�Ob  fk+ O��K S�O)�k+ 	Ob  ek+ 
Ob  ek+ 
O��,E�O��,E�O�)����+ O�)a ���+ W X  *�k+ # �O��N�MDE�L�O d0 0applicationshouldterminateafterlastwindowclosed_ 0applicationShouldTerminateAfterLastWindowClosed_�N �KF�K F  �J�J 
0 sender  �M  D �I�I 
0 sender  E  �L e$ �H��G�FGH�E�H 60 applicationwillterminate_ applicationWillTerminate_�G �DI�D I  �C�C 
0 sender  �F  G �B�B 
0 sender  H �A�@�?�A 60 defaultnotificationcentre defaultNotificationCentre�@ "0 removeobserver_ removeObserver_�? 0 cleanup cleanUp�E �)k+ Ob  j+ % �>C�=�<JK�;�> 0 dosave_ doSave_�= �:L�: L  �9�9 
0 sender  �<  J �8�7�6�8 
0 sender  �7 0 errorstring errorString�6 0 errornumber errorNumberK �5�4M�3�2�5 0 savelicense saveLicense�4 0 errorstring errorStringM �1�0�/
�1 
errn�0 0 errornumber errorNumber�/  �3���2 	0 abort  �; % b  j+  W X  ��  hY *�k+ & �.b�-�,NO�+�. 0 doprint_ doPrint_�- �*P�* P  �)�) 
0 sender  �,  N �(�'�&�( 
0 sender  �' 0 errorstring errorString�& 0 errornumber errorNumberO �%�$Q�#�"�% 0 printlicense printLicense�$ 0 errorstring errorStringQ �!� �
�! 
errn�  0 errornumber errorNumber�  �#���" 	0 abort  �+ % b  j+  W X  ��  hY *�k+ ' ����RS�� 0 doagree_ doAgree_� �T� T  �� 
0 sender  �  R ���� 
0 sender  � 0 downloadkvasd downloadKvasd� 0 errorstring errorStringS ����U������� 	0 state  
� 
bool� 0 downloadkvasd downloadKvasdU �V��
WX�	
� .ascrinit****      � ****V k     YY Z�Z i     [\[ I      ���
� .aevtoappnull  �   � ****�  �  \ k     	]] ^�^ l    	����  �  �  �  �  �
  W �
� .aevtoappnull  �   � ****X __ � \����`a��
�  .aevtoappnull  �   � ****��  ��  `  a ���� 0 fetchbinary fetchBinary�� 
b  j+  �	 L  � 0 dowithretry doWithRetry� 0 errorstring errorString�  � 	0 abort  � 0 setenabled_ setEnabled_� 0 licenceagreed licenceAgreed� [b  j+  �& M ��K S�O)�k+ W X  *�k+ Ob  fk+ 	OeE�Ob  	jv b  ek+ 	Y hY h( �������bc���� "0 dochoosetarget_ doChooseTarget_�� ��d�� d  ���� 
0 sender  ��  b ������ 
0 sender  �� 
0 target  c �������������������������������������e
�� 
prmp
�� 
ftyp
�� 
dflc
�� 
psxf
�� 
alis
�� 
lfiv
�� 
mlsl�� 

�� .sysostdfalis    ��� null
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
psxp�� 0 licenceagreed licenceAgreed
�� 
bool�� 0 setenabled_ setEnabled_��  e ������
�� 
errn������  �� b Z 0*�������&�&�f�e� [��l kh ��,b  	6G[OY��Ob  	jv	 	_ a & b  ek+ Y hW X  h) �� ����fg���� 0 
doinstall_ 
doInstall_�� ��h�� h  ���� 
0 sender  ��  f ������ 
0 sender  �� 0 errorstring errorStringg ������������ 0 process  �� 0 setenabled_ setEnabled_�� 0 errorstring errorString��  �� 	0 abort  �� + *j+  OjvEc  	Ob  fk+ W X  *�k+ * ��$����ij���� 0 viewchanged_ viewChanged_�� ��k�� k  ���� 0 anotification aNotification��  i ���������� 0 anotification aNotification�� 0 dr  �� 0 vdr  �� 0 errorstring errorStringj ���������������������������� 
0 bounds  
�� 
reco�� 0 visiblerect visibleRect�� 0 size  �� 
0 height  �� 
0 origin  �� 0 y  �� 0 licenceagreed licenceAgreed
�� 
bool�� 0 setenabled_ setEnabled_�� 0 errorstring errorString��  �� 	0 abort  �� U Hb  �,�&E�Ob  �,�&E�O��,�,��,�,��,�,j	 ��& b  ek+ 	Y hW X 
 *�k+ + ��f����lm���� 0 dowithretry doWithRetry�� ��n�� n  ���� 
0 action  ��  l ������������ 
0 action  �� 0 done  �� 0 errorstring errorString�� 0 usercanceled userCanceled�� 0 dialogresult dialogResultm ��������������������������o���  0 progressaction progressAction�� 0 errorstring errorString��  
�� 
as A
�� EAlTwarN
�� 
btns
�� 
dflt
�� 
cbtn�� 
�� .sysodisAaleR        TEXT��  o ������
�� 
errn������  �� XfE�O Rh� )�k+  OeE�W :X  fE�O ������lv����� E�W 
X  eE�O� )ja Y h[OY��, �������pq����  0 progressaction progressAction�� ��r�� r  ���� 
0 action  ��  p ���� 
0 action  q �������� "0 startanimation_ startAnimation_
�� .aevtoappnull  �   � ****��  0 stopanimation_ stopAnimation_�� !b  )k+  O� *j UOb  )k+ - �������st���� 	0 abort  �� ��u�� u  ���� 0 errorstring errorString��  s ���� 0 errorstring errorStringt 	����������������
�� 
as A
�� EAlTcriT
�� 
btns
�� 
dflt�� 
�� .sysodisAaleR        TEXT
�� .aevtquitnull��� ��� null�� �����kv��� O*j . �������vw���� 0 doabout_ doAbout_�� ��x�� x  ���� 
0 sender  ��  v ���� 
0 sender  w ���
�� .sysodisAaleR        TEXT�� �j ascr  ��ޭ