��    �      �              \	     ]	     v	     �	  "   �	     �	  �   �	  k   g
      �
  O  �
    D  V   U  y   �     &  #   F  �   j     �  �   	     �       ?   &  �   f  �         �  m   �     _  ,   z      �  /   �  '   �         ,  S   5  �   �  �   #     �  R       W  j   j  �   �  l   k    �  B   �  �   7  �   �  �   �  L   P  #   �    �  \   �  5   8  �   n  �  L      �!  ~   "  f   �"  :   �"     7#     F#     b#     |#  /   �#  5   �#  /   �#    *$  3   <%  U   p%  U   �%  W   &  Y  t&  �   �'  �  S(  R   *  �   p*  �   +  +   �+  -  �+  �   �,     �-     �-  
   �-     �-     �-  $   �-  (   	.  +   2.  "   ^.  *   �.     �.     �.     �.  &   �.     /  ~   8/  U   �/    0  c   #1  �   �1  �   :2  ,   �2  A   	3  9   K3  �   �3  j   4  u   �4  u   `5  �   �5  q  \6  �   �7  =   �8     �8  x   9     |9  i   �9  �   �9  O   }:    �:  �   �;  !   �<  /   �<  �    =  M   �=  I   )>  �   s>  {   ?  K   �?  �   �?  n   ~@  I   �@  N   7A  @   �A  �   �A  ;  `B  �  �C  6   IE  W   �E  �   �E  w   pF  �   �F  �   kG  `   �G  �   XH  r   �H  q   RI  %   �I  �   �I  ]   �J  e   �J  �  FK      M     9M     TM  $   mM     �M  �   �M  {   vN  6   �N  Y  )O    �P  g   �Q  �   
R  (   �R  1   �R  �   �R  *   �S  �   �S     �T  #   �T  [   �T  �   CU  �   V  -   �V  �   
W     �W  *   �W  *   �W  8   �W  0   8X     iX  !  �Y  f   �Z  �   [  �   �[     �\  h   �\  &  Z]  t   �^  �   �^  �   �_  B  [`  S   �a  �   �a  �   �b  �   �c  d   &d  ,   �d  �  �d  o   Of  7   �f  �   �f  �  �g  #   �i  �   �i  |   tj  H   �j     :k     Ik     ek     k  0   �k  5   �k  0   �k  <  /l  8   lm  n   �m  n   n  u   �n  ~  �n  �   xp    q  b   +s  �   �s  �   At  3   �t  {  u  �   �v     ?w     Zw     qw  	   ~w  ,   �w  (   �w  ,   �w  6   x  -   Bx  9   px  '   �x     �x     �x  .   y     7y  �   Wy  ]   z  N  dz  w   �{  �   +|  �   �|  9   �}  G   ~  H   a~  5  �~  {   �  y   \�  �   ր  �   \�  �  �  )  ��  H   ʄ  
   �  }   �     ��  �   ��  �   .�  Z   ن  s  4�    ��  +   ŉ  7   �  �   )�  _   ��  R   W�  �   ��  �   j�  f   �  �   h�  �   �  W   ��  Z   �  K   _�  �   ��  �  ?�    ˑ  H   ғ  ]   �  �   y�  }   6�  �   ��  �   W�  m   �  �   o�  w   ��  s   w�  "   �  �   �  e   ��  m   '�   (Nitrokey HSM 2 - Linux) (Nitrokey HSM 2 - Windows) (Nitrokey HSM 2 - macOS) Add the following line to the file Add the following text After changing both the user and the admin PIN, you are back in the Card Manager window. Select "Generate key" in the "Card" menu. Assuming that your key-certificate file reads ‘myprivate.p12’ the commands for Windows looks like this: Automatic Screen Lock at Removal Before you can use the Nitrokey in Outlook you have to activate S/MIME encryption. You can achieve this by clicking on to ‘Start’ -> ‘Options’ and clicking on ‘Trust Center’ in the options window. In section ‘Email Security’ you can choose your S/MIME identity. Your certificate should already be recognized by Outlook. Before you can use the Nitrokey in Thunderbird you have to activate S/MIME encryption in the account settings. You can achieve this by clicking on the menu and go to ‘Preferences’ -> ‘Account Settings’ and clicking on ‘Security’ in the account settings window. But, if you’re less paranoid that I am, you can safely choose the following options: By now you can log back to your session by entering your password, and (re)plug you Nitrokey if you did not do it before. Choose Cryptographic Algorithms Choose a Group Policy Object (GPO). Choose and enter your own PIN with a minimum length of six characters. This PIN is required for the daily usage of the Nitrokey. Choose your operating system: Click on “Security Devices” to import the right PCKS11 module. Click on “Load” on the right-hand side. Now give the Module a name (like “OpenSC Module”) and click on “Browse” to choose the location of the Module (see below). Configuration Confirm applying the mapping. Confirm this window and enter the admin PIN in the next window. Congratulations, your Nitrokey is now ready to use. Please see the `applications <https://www.nitrokey.com/documentation/applications>`_ section for further information of its usage. Create a CSR in the normal method for your application. Proper creation of your certificate, including SAN, for your particular application is outside the scope of this document. Create a certificate chain file: Create a config file to use the private key of the intermediate certificate to sign the CSRs of your servers. Create the ``.rules`` file Create the ``gnome-screensaver-lock`` script Creating a Certificate Authority Creating the Intermediate Certificate Authority Creating the Root Certificate Authority Define SO-PIN and PIN of your own choices. See `these instructions <https://github.com/OpenSC/OpenSC/wiki/SmartCardHSM#initialize-the-device>`__. Afterwards you can begin to `generate new keys <https://github.com/OpenSC/OpenSC/wiki/SmartCardHSM#generate-key-pair>`__. Depending on your certificate or the certificate of your partners you may have to import a so-called root certificate. This is the certificate of the party which issued the certificate you or your partner uses. You should usually got informed if this is necessary. Download and install the latest `OpenSC <https://github.com/OpenSC/OpenSC/wiki>`__. Enter a strong passphrase for your backup keys. We strongly recommend to store the backup file on a separate storage(e.g. CD-ROM) and on a safe location. Enter your name and e-mail address. You should keep "backup" enabled in order to create a backup file of your cryptographic keys. Optionally you might select an expiration date for your cryptographic keys. Execute the script Fill out the request information in <angle brackets> with information for your CA. First you need to install Gnu Privacy Assistant (GPA). For Windows you should download and install the `GPG4Win <http://gpg4win.org/>`_ package which contains GPA. For Linux you should install the GPA package of your distribution (e.g. on Ubuntu: sudo apt-get install gpa ). From now on, when logging on to your Windows computer you need to connect the Nitrokey and enter your PIN. Generate the certificate signing request for the intermediate CA from the intermediate CA’s private key. Use the private key ID value from earlier. Generate the self-signed public certificate from the private key. Use the private key id value from earlier. Go back to the Card Manager window in step three. This time you choose the third button Change PIN in order to change the admin PIN. The admin PIN is required to change the information on the Nitrokey and to change the cryptographic keys. Proceed as described in steps four and five. I used the following resources to help in compiling this document. If you are in doubt which one to choose, you should use OpenPGP, see `here <https://docs.nitrokey.com/pro/openpgp.html>`__. This page describes the usage of S/MIME email encryption. If you do not have a S/MIME key-certificate pair installed on your Nitrokey yet or if you did not installed OpenSC, please look at `this page <https://docs.nitrokey.com/pro/smime.html>`__ first. If you do not have a S/MIME key-certificate pair installed on your Nitrokey yet, please look at `this page <https://docs.nitrokey.com/pro/smime.html>`__ first. If you need the ID in the future, you can list the keys on the Nitrokey HSM: Import Existing Key and Certificate In the Card Manager window you might need to scroll down until you see the buttons to change the PINs. The term PIN is used interchangeable with "password". Press the first button "Change PIN" in order to change the user password. Read and confirm the following information window. In the first step, this script looks for the user-name of the gnome session, i.e. ``user``. In this instance, the fully qualified PKCS#11 URI is: Install `OpenSC <https://github.com/OpenSC/OpenSC/wiki>`__. Alternatively, install `this <https://www.cardcontact.de/download/sc-hsm-starterkit.zip>`__ driver (`source <https://github.com/CardContact/sc-hsm-embedded>`__). Install `OpenSC <https://github.com/OpenSC/OpenSC/wiki>`__. You need at least version 0.19. You can find recent builds for debian-based systems like Ubuntu `here <https://github.com/Nitrokey/opensc-build>`__ if your system does not have the newest version of OpenSC. Alternatively, install `this <https://www.cardcontact.de/download/sc-hsm-starterkit.zip>`__ driver (`source <https://github.com/CardContact/sc-hsm-embedded>`__). Install the necessary tools: I’m going to assume that you’re as paranoid as I am, so I will be using the following command for generating private keys: Likewise, I will be using the sha512 algorithm throughout this article, but sha256 can safely be used. Login to Windows Domain Computers With MS Active Directory Nitrokey HSM 2 Nitrokey HSM with GNU/Linux Nitrokey HSM with Windows Nitrokey HSM with macOS Nitrokey HSM: ``ENV{PRODUCT}=="20a0/4230/101"`` Nitrokey Pro 2, Nitrokey Storage 2, or Nitrokey HSM 2 Nitrokey Pro: ``ENV{PRODUCT}=="20a0/4108/101"`` Nitrokey Storage 2: You need to install OpenSC in version 0.18 or higher. You can find the files on the `OpenSC website <https://github.com/OpenSC/OpenSC/releases>`__ for Windows and macOS user or `here <https://github.com/Nitrokey/opensc-build>`__ for Debian/Ubuntu users. Nitrokey Storage: ``ENV{PRODUCT}=="20a0/4109/101"`` Note the ID number (bcb48fe9b566ae61891aabbfde6a23d4ff3ab639), we’ll need it later. Note the ID number (e0161cc8b6f5d66ac6835ecdecb623fc0506a675), we’ll need it later. Now that you have a certificate authority, you’d probably like to know how to use it. Now you can enroll Nitrokeys for your users managed in Microsoft Active Directory. You may either use Microsoft PKI, `gpgsm <https://www.gnupg.org/documentation/manuals/gnupg/Howto-Create-a-Server-Cert.html>`__, or `Smart Policy <http://www.mysmartlogon.com/products/smart-policy.html>`__. The following steps describe the usage of Smart Policy. Now, we need to create a config file to use the private key of the root certificate to sign the csr of the intermediate certificate. On Windows the right file lays under “C:\Windows\System32\opensc-pkcs11.dll”. On macOS and GNU/Linux the file should be in “/lib/pkcs11/opensc-pkcs11.so” or “/usr/lib/pkcs11/opensc-pkcs11.so” or alike. Press “OK” twice and you are back in security section of the account settings. Now you can actually choose a certificate on the upper part of the window. You should get asked for a PIN to unlock your Nitrokey. Please type in your User PIN. On Windows: Did you install **both**, the 32-bit and the 64-bit version of OpenSC? Once all set up, execute the script once, and it will lock the screen. It does not matter if the Nitrokey is plugged or not for this first execution. Open a command terminal and enter “regedit”. Use regedit to import `this file <https://www.nitrokey.com/sites/default/files/nk-hsm.reg>`__. OpenPGP/GnuPG is popular among individuals, Outlook will only encrypt message to mail addresses which are saved in your address book. So make sure, that the persons you want to write an encrypted mail to have an entry in Outlook’s contacts. You can ask the person to write you a signed mail, so that you can import the certificate information. Please note that there will be error messages that can be safely ignored (see output example above). You now have the key-certificate pair loaded on the Nitrokey. Preparing to Start Prerequisites References Requirements S/MIME Email Encryption S/MIME Email Encryption with Outlook S/MIME Email Encryption with Thunderbird S/MIME/X.509 is mostly used by enterprises. Save the file and quit the editor. Select the certificate, mapping, and user. Select “Read a smart card” Settings in Outlook Settings in Thunderbird Setup with Gnu Privacy Assistant (GPA) Sign a Server Certificate Start GPA and select the Card Manager; either by pressing the icon at the top or by choosing Card Manager in the Windows menu. The configuration requires the creation of two files under two different directories. The following instructions are based on the `wiki of OpenSC <https://github.com/OpenSC/OpenSC/wiki/OpenPGP-card>`__. We will assume, that you already got a key-certificate pair as a .p12 file. Please have a look at the wiki page, if you got a separate key and certificate file. The next time(s) you unplug your Nitrokey from the computer, it will automatically lock the screen. The two commands copy the key-certificate pair to the slot 2 (needed for decrypting emails) and slot 3 (needed for signing). The output looks on both systems something like this: The window of the Card Manager will appear. Enter your salutation, name and optional other information. While doing so you might be asked to enter the admin PIN. Then run openssl to sign the server’s CSR. Then sign the intermediate certificate with the root certificate. There are two widely used standards for email encryption. This article shows you how to setup your own private certificate authority backed by a Nitrokey HSM. This certificate authority has no automation and does not really scale. Other open source projects can be referenced for automation and scalability. This document describes how to use Gnu Privacy Assistant (GPA) to set up the Nitrokey for its first usage. This document was originally `written by lyntux <https://gist.github.com/lyntux/f02c6c3414ce48bc8ea8ab6dcdba1623>`__. This file sets up a new hardware rule that executes the ``gnome-screensaver-lock`` at removal of the Nitrokey device. This guide will walk you through the configuration of your computer, to automatically lock your session when you remove the Nitrokey. To make these commands as simple as possible, the .p12 file needs to be in your home folder. On Windows this is usually ‘C:\Users\yourusername’ and on macOS and GNU/Linux system it will be ‘/home/yourusername’. If you do not store the .p12 file there, you have to adapt the path in the commands below. Please plug in the Nitrokey before submitting the commands. To open the Windows command line please push the Windows-key and R-key. Now type ‘cmd.exe’ in the text field and hit enter. To open a Terminal on macOS or GNU/Linux please use the application search (e.g. spotlight on macOS). To start with, you need to pick a directory to store your CA. Troubleshooting Ubuntu 20.04 or Debian 10 (Buster), both with `Gnome Display Manager <https://wiki.gnome.org/Projects/GDM>`__ installed. Usage Use a text editor to add the following settings to *C:\Program Files:\OpenSC Project\OpenSC\opensc.conf*. Verify that the CSR was created correctly. Verify that your Subject is correct. Verify that your Public Key and Signature Algorithm are correct. Verify that the intermediate certificate verifies against the root certificate. Verify that the root certificate was generated correctly. Verify that Signature-Algorithm matches above and below. Verify that Issuer and Subject match, all root certificates are self signed. Verify that Key Usage matches what was in the v3_ca information in our config file. Verify that the root certificate was generated correctly. Verify that the Issuer and Subject are different, and correct. Verify that the Key Usage matches the config file. Verify that the signature algorithm are correct above and below. Verify the device status via CRL. Wait until the keys are generated successfully. We continue by generating the private key for the intermediate certificate authority directly on the Nitrokey HSM. This allows us to use the private key in the future, but not access it. We need to create a config file to generate a self-signed public certificate. We need to find out the fully qualified PKCS#11 URI for your private key: We start by generating the private key for the certificate authority directly on the Nitrokey HSM. This allows us to use the private key in the future, but not access it. When composing a mail you can now choose to encrypt and sign the message in the ‘Options’ ribbon of the compose window. When composing an email you can now choose to encrypt and sign the message. When it is called at Nitrokey removal, the script queries ``user``, switches to its session, and locks the screen by prompting the screen-saver screen. Windows users with 64-bit system (standard) need to install both, the 32-bit and the 64-bit version of OpenSC! With your favorite text editor create a file called ``85-nitrokey.rules`` With your favorite text editor create a file called ``gnome-screensaver-lock`` You can find further information about the usage on these pages: You need to have OpenSC installed on your System. Please have a look at the `wiki page of the OpenSC project <https://github.com/OpenSC/OpenSC/wiki>`__. You need to have `OpenSC installed <https://github.com/OpenSC/OpenSC/wiki>`__ on your System. While GNU/Linux users usually can install OpenSC over the package manager (e.g. ``sudo apt update && sudo apt install opensc`` on Ubuntu), macOS and Windows users can download the installation files from OpenSC directly. You need to purchase a S/MIME certificate or may already got one by your company. Furthermore, you need to install `OpenSC <https://github.com/OpenSC/OpenSC/wiki>`__ on your System. While GNU/Linux users usually can install OpenSC over the package manager (e.g. ``sudo apt install opensc`` on Ubuntu), macOS and Windows users can download the installation files from the `OpenSC <https://github.com/OpenSC/OpenSC/wiki>`__ page. You now have a certificate authority backed by an HSM. You should change the configuration according to the device you are using as following: Your Nitrokey is now ready to use. `Checkout <https://www.nitrokey.com/documentation/applications>`__ the various use cases and supported applications. `Download <http://download.mysmartlogon.com/SmartPolicyv2/SmartPolicy%20-%20Stage%203.exe>`__ and install Smart Policy. `How to create a root and intermediate CA <https://jamielinux.com/docs/openssl-certificate-authority/create-the-root-pair.html>`__ `How to ensure the serial numbers of your intermediate CA and server certs are up to spec <https://www.phildev.net/ssl/creating_ca.html>`__ `How to find the PCKS11 URI from your HSM <https://www.infradead.org/openconnect/pkcs11.html>`__ `How to generate ECC private keys <https://dev.to/benjaminblack/obtaining-an-elliptic-curve-dsa-certificate-with-lets-encrypt-51bc>`__ `How to initialize your Nitrokey HSM <https://github.com/OpenSC/OpenSC/wiki/SmartCardHSM#initialize-the-device>`__ `Troubleshooting (forum) <https://support.nitrokey.com/t/pki-ca-nitrokey-hsm-does-not-support-signing/2598/14>`__ and on macOS and GNU/Linux it will be for using `Evolution <https://help.gnome.org/users/evolution/stable/mail-encryption.html.en>`__, an email client for the Gnome Desktop on Linux systems for using `S/MIME encryption on Outlook <https://docs.nitrokey.com/pro/smime-outlook.html>`__ for using `S/MIME encryption on Thunderbird <https://docs.nitrokey.com/pro/smime-thunderbird.html>`__ Project-Id-Version: Nitrokey Documentation
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-06-15 17:00+0200
PO-Revision-Date: 2021-06-25 19:40+0000
Last-Translator: Anonymous <noreply@weblate.org>
Language: fr
Language-Team: French <https://translate.nitrokey.com/projects/nitrokey-documentation/documentation-hsm/fr/>
Plural-Forms: nplurals=2; plural=n > 1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 (Nitrokey HSM 2 - Linux) (Nitrokey HSM 2 - Windows) (Nitrokey HSM 2 - macOS) Ajoutez la ligne suivante au fichier Ajoutez le texte suivant Après avoir modifié le code PIN de l'utilisateur et celui de l'administrateur, vous êtes de retour dans la fenêtre du gestionnaire de cartes. Sélectionnez "Générer une clé" dans le menu "Carte". En supposant que votre fichier de certificat de clé soit 'myprivate.p12', les commandes pour Windows ressemblent à ceci : Verrouillage automatique de l'écran à la suppression Avant de pouvoir utiliser la Nitrokey dans Outlook, vous devez activer le cryptage S/MIME. Pour ce faire, cliquez sur 'Démarrer' -> 'Options' et cliquez sur 'Centre de confiance' dans la fenêtre des options. Dans la section 'Email Security' vous pouvez choisir votre identité S/MIME. Votre certificat devrait déjà être reconnu par Outlook. Avant de pouvoir utiliser Nitrokey dans Thunderbird, vous devez activer le cryptage S/MIME dans les paramètres du compte. Pour ce faire, cliquez sur le menu et allez dans 'Préférences' -> 'Paramètres du compte' et cliquez sur 'Sécurité' dans la fenêtre des paramètres du compte. Mais, si vous êtes moins paranoïaque que moi, vous pouvez choisir sans risque les options suivantes : Tu peux maintenant te reconnecter à ta session en entrant ton mot de passe, et (re)brancher ta Nitrokey si tu ne l'as pas fait avant. Choisir les algorithmes cryptographiques Choisissez un objet de politique de groupe (GPO). Choisissez et saisissez votre propre code PIN d'une longueur minimale de six caractères. Ce code PIN est nécessaire pour l'utilisation quotidienne de la Nitrokey. Choisissez votre système d'exploitation : Cliquez sur "Security Devices" pour importer le bon module PCKS11. Cliquez sur "Charger" sur le côté droit. Donnez maintenant un nom au module (comme "OpenSC Module") et cliquez sur "Browse" pour choisir l'emplacement du module (voir ci-dessous). Configuration Confirmez l'application du mappage. Confirmez cette fenêtre et saisissez le code PIN administrateur dans la fenêtre suivante. Félicitations, votre Nitrokey est maintenant prêt à être utilisé. Veuillez consulter la section `applications <https://www.nitrokey.com/documentation/applications>`_ pour plus d'informations sur son utilisation. Créez un CSR selon la méthode normale pour votre application. La création correcte de votre certificat, y compris le SAN, pour votre application particulière sort du cadre de ce document. Créez un fichier de chaîne de certificats : Créez un fichier de configuration pour utiliser la clé privée du certificat intermédiaire pour signer les CSRs de vos serveurs. Créer le fichier "rules". Créer le script "gnome-screensaver-lock". Création d'une autorité de certification Création de l'autorité de certification intermédiaire Création de l'autorité de certification racine Définissez SO-PIN et PIN de vos propres choix. Voir `ces instructions <https://github.com/OpenSC/OpenSC/wiki/SmartCardHSM#initialize-the-device>`__. Ensuite, vous pouvez commencer à `générer de nouvelles clés <https://github.com/OpenSC/OpenSC/wiki/SmartCardHSM#generate-key-pair>`__. En fonction de votre certificat ou de celui de vos partenaires, vous devrez peut-être importer un certificat dit racine. Il s'agit du certificat de la partie qui a émis le certificat que vous ou votre partenaire utilisez. Vous devez généralement être informé si cela est nécessaire. Téléchargez et installez la dernière version de `OpenSC <https://github.com/OpenSC/OpenSC/wiki>`__. Entrez une phrase de passe forte pour vos clés de sauvegarde. Nous vous recommandons vivement de stocker le fichier de sauvegarde sur un support distinct (par exemple un CD-ROM) et dans un endroit sûr. Entrez votre nom et votre adresse e-mail. Vous devez garder l'option "sauvegarde" activée afin de créer un fichier de sauvegarde de vos clés cryptographiques. En option, vous pouvez sélectionner une date d'expiration pour vos clés cryptographiques. Exécuter le script Remplissez la demande d'informations entre <angle brackets> avec les informations relatives à votre CA. Vous devez d'abord installer Gnu Privacy Assistant (GPA). Pour Windows, vous devez télécharger et installer le paquet `GPG4Win <http://gpg4win.org/>`_ qui contient GPA. Pour Linux, vous devez installer le paquet GPA de votre distribution (par exemple, sur Ubuntu : sudo apt-get install gpa ). Désormais, lorsque tu te connectes à ton ordinateur Windows, tu dois connecter la Nitrokey et saisir ton code PIN. Générez la demande de signature de certificat pour l'AC intermédiaire à partir de la clé privée de l'AC intermédiaire. Utilisez la valeur d'identification de la clé privée obtenue précédemment. Générez le certificat public auto-signé à partir de la clé privée. Utilisez la valeur d'identification de la clé privée obtenue précédemment. Revenez à la fenêtre Card Manager de l'étape 3. Cette fois, cliquez sur le troisième bouton Modifier le PIN pour modifier le PIN administrateur. Le PIN admin est nécessaire pour modifier les informations sur la Nitrokey et pour modifier les clés cryptographiques. Procédez comme indiqué aux étapes quatre et cinq. J'ai utilisé les ressources suivantes pour aider à la compilation de ce document. Si vous avez un doute sur celui à choisir, vous devriez utiliser OpenPGP, voir `here <https://docs.nitrokey.com/pro/openpgp.html>`__. Cette page décrit l'utilisation du chiffrement des e-mails S/MIME. Si vous n'avez pas encore de paire clé-certificat S/MIME installée sur votre Nitrokey ou si vous n'avez pas installé OpenSC, regardez d'abord `cette page <https://docs.nitrokey.com/pro/smime.html>`__. Si tu n'as pas encore de paire clé-certificat S/MIME installée sur ta Nitrokey, regarde d'abord `cette page <https://docs.nitrokey.com/pro/smime.html>`__. Si vous avez besoin de l'ID à l'avenir, vous pouvez répertorier les clés sur le HSM de Nitrokey : Importer une clé et un certificat existants Dans la fenêtre du gestionnaire de cartes, vous devrez peut-être faire défiler la liste jusqu'à ce que vous voyiez les boutons permettant de modifier les codes PIN. Le terme PIN est utilisé de manière interchangeable avec le terme "mot de passe". Appuyez sur le premier bouton "Modifier le PIN" afin de modifier le mot de passe de l'utilisateur. Lisez et confirmez la fenêtre d'information suivante. Dans la première étape, ce script recherche le nom d'utilisateur de la session gnome, c'est-à-dire ``user``. Dans ce cas, l'URI PKCS#11 entièrement qualifié est : Installez `OpenSC <https://github.com/OpenSC/OpenSC/wiki>`__. Alternativement, installez `cette <https://www.cardcontact.de/download/sc-hsm-starterkit.zip>`__ pilote (`source <https://github.com/CardContact/sc-hsm-embedded>`__). Installez `OpenSC <https://github.com/OpenSC/OpenSC/wiki>`__. Vous avez besoin d'au moins la version 0.19. Vous pouvez trouver des builds récents pour les systèmes basés sur debian comme Ubuntu `ici <https://github.com/Nitrokey/opensc-build>`__ si votre système ne dispose pas de la version la plus récente d'OpenSC. Alternativement, installez `cette <https://www.cardcontact.de/download/sc-hsm-starterkit.zip>`__ pilote (`source <https://github.com/CardContact/sc-hsm-embedded>`__). Installez les outils nécessaires : Je vais supposer que vous êtes aussi paranoïaque que moi, donc je vais utiliser la commande suivante pour générer des clés privées : De même, j'utiliserai l'algorithme sha512 tout au long de cet article, mais sha256 peut être utilisé en toute sécurité. Se connecter aux ordinateurs du domaine Windows avec MS Active Directory Nitrokey HSM 2 Nitrokey HSM avec GNU/Linux Nitrokey HSM avec Windows Nitrokey HSM avec macOS Nitrokey HSM : ``ENV{PRODUCT}=="20a0/4230/101"`` Nitrokey Pro 2, Nitrokey Storage 2, ou Nitrokey HSM 2 Nitrokey Pro : ``ENV{PRODUCT}=="20a0/4108/101"`` Nitrokey Storage 2 : Vous devez installer OpenSC en version 0.18 ou supérieure. Vous pouvez trouver les fichiers sur le site `OpenSC <https://github.com/OpenSC/OpenSC/releases>`__ pour les utilisateurs de Windows et macOS ou `ici <https://github.com/Nitrokey/opensc-build>`__ pour les utilisateurs de Debian/Ubuntu. Stockage de Nitrokey : ``ENV{PRODUCT}=="20a0/4109/101"`` Notez le numéro d'identification (bcb48fe9b566ae61891aabbfde6a23d4ff3ab639), nous en aurons besoin plus tard. Notez le numéro d'identification (e0161cc8b6f5d66ac6835ecdecb623fc0506a675), nous en aurons besoin plus tard. Maintenant que vous disposez d'une autorité de certification, vous souhaitez probablement savoir comment l'utiliser. Vous pouvez maintenant inscrire Nitrokeys pour vos utilisateurs gérés dans Microsoft Active Directory. Vous pouvez soit utiliser Microsoft PKI, `gpgsm <https://www.gnupg.org/documentation/manuals/gnupg/Howto-Create-a-Server-Cert.html>`__, ou `Smart Policy <http://www.mysmartlogon.com/products/smart-policy.html>`__. Les étapes suivantes décrivent l'utilisation de Smart Policy. Maintenant, nous devons créer un fichier de configuration pour utiliser la clé privée du certificat racine pour signer le csr du certificat intermédiaire. Sous Windows, le bon fichier se trouve dans "C:\Windows\System32\opensc-pkcs11.dll". Sous macOS et GNU/Linux, le fichier doit se trouver dans "/lib/pkcs11/opensc-pkcs11.so" ou "/usr/lib/pkcs11/opensc-pkcs11.so" ou similaire. Appuyez deux fois sur "OK" et vous êtes de retour dans la section sécurité des paramètres du compte. Vous pouvez maintenant choisir un certificat dans la partie supérieure de la fenêtre. Un code PIN devrait vous être demandé pour déverrouiller votre Nitrokey. Saisissez votre code PIN utilisateur. Sous Windows : Avez-vous installé **les deux**, la version 32-bit et la version 64-bit d'OpenSC ? Une fois que tout est configuré, exécutez le script une fois, et il verrouillera l'écran. Il importe peu que la Nitrokey soit branchée ou non pour cette première exécution. Ouvrez un terminal de commande et entrez "regedit". Utilisez regedit pour importer `ce fichier <https://www.nitrokey.com/sites/default/files/nk-hsm.reg>`__. OpenPGP/GnuPG est populaire parmi les particuliers, Outlook ne crypte que les messages destinés aux adresses électroniques enregistrées dans votre carnet d'adresses. Assurez-vous donc que les personnes à qui vous voulez écrire un message crypté ont une entrée dans les contacts d'Outlook. Vous pouvez demander à la personne de vous écrire un courrier signé, afin que vous puissiez importer les informations du certificat. Veuillez noter qu'il y aura des messages d'erreur qui peuvent être ignorés (voir l'exemple ci-dessus). Vous avez maintenant la paire clé-certificat chargée sur la Nitrokey. Préparation du démarrage Conditions préalables Références Exigences Chiffrement du courrier électronique S/MIME Cryptage des e-mails S/MIME avec Outlook Cryptage des e-mails S/MIME avec Thunderbird S/MIME/X.509 est surtout utilisé par les entreprises. Enregistrez le fichier et quittez l'éditeur. Sélectionnez le certificat, le mappage et l'utilisateur. Sélectionnez "Lire une carte à puce". Paramètres dans Outlook Paramètres dans Thunderbird Configuration avec Gnu Privacy Assistant (GPA) Signer un certificat de serveur Démarrez GPA et sélectionnez le Gestionnaire de cartes ; soit en appuyant sur l'icône en haut de l'écran, soit en choisissant Gestionnaire de cartes dans le menu Windows. La configuration nécessite la création de deux fichiers sous deux répertoires différents. Les instructions suivantes sont basées sur le `wiki de OpenSC <https://github.com/OpenSC/OpenSC/wiki/OpenPGP-card>`__. Nous supposerons que vous avez déjà obtenu une paire clé-certificat sous forme de fichier .p12. Veuillez jeter un coup d'œil à la page du wiki, si vous avez obtenu un fichier de clé et de certificat séparé. La ou les prochaines fois que tu débrancheras ta Nitrokey de l'ordinateur, elle verrouillera automatiquement l'écran. Les deux commandes copient la paire clé-certificat dans le slot 2 (nécessaire au décryptage des emails) et le slot 3 (nécessaire à la signature). Le résultat ressemble à ceci sur les deux systèmes : La fenêtre du gestionnaire de cartes apparaît. Saisissez votre salutation, votre nom et d'autres informations facultatives. Au cours de cette opération, il vous sera peut-être demandé de saisir le code PIN d'administration. Ensuite, exécutez openssl pour signer le CSR du serveur. Ensuite, signez le certificat intermédiaire avec le certificat racine. Il existe deux normes largement utilisées pour le cryptage des e-mails. Cet article vous montre comment configurer votre propre autorité de certification privée soutenue par un HSM Nitrokey. Cette autorité de certification n'est pas automatisée et n'est pas vraiment évolutive. D'autres projets open source peuvent être référencés pour l'automatisation et l'évolutivité. Ce document décrit comment utiliser Gnu Privacy Assistant (GPA) pour configurer la Nitrokey pour sa première utilisation. Ce document a été initialement `écrit par lyntux <https://gist.github.com/lyntux/f02c6c3414ce48bc8ea8ab6dcdba1623>`__. Ce fichier configure une nouvelle règle matérielle qui exécute le "gnome-screensaver-lock" lors du retrait du dispositif Nitrokey. Ce guide vous guidera dans la configuration de votre ordinateur, afin de verrouiller automatiquement votre session lorsque vous retirez la Nitrokey. Pour rendre ces commandes aussi simples que possible, le fichier .p12 doit se trouver dans votre dossier personnel. Sous Windows, il s'agit généralement de 'C:\Users\votre nom d'utilisateur' et sous macOS et GNU/Linux, de '/home/votre nom d'utilisateur'. Si tu ne stockes pas le fichier .p12 à cet endroit, tu dois adapter le chemin dans les commandes ci-dessous. Veuillez brancher la Nitrokey avant de soumettre les commandes. Pour ouvrir la ligne de commande de Windows, appuyez sur la touche Windows et sur la touche R. Tapez ensuite 'cmd.exe' dans le champ de texte et appuyez sur la touche Entrée. Pour ouvrir un terminal sous macOS ou GNU/Linux, utilisez la recherche d'applications (par exemple Spotlight sous macOS). Pour commencer, vous devez choisir un répertoire pour stocker votre AC. Dépannage Ubuntu 20.04 ou Debian 10 (Buster), tous deux avec `Gnome Display Manager <https://wiki.gnome.org/Projects/GDM>`__ installé. Utilisation Utilisez un éditeur de texte pour ajouter les paramètres suivants au fichier *C:\Program Files:\OpenSC Project\OpenSC\opensc.conf*. Vérifiez que le CSR a été créé correctement. Vérifiez que votre objet est correct. Vérifiez que votre clé publique et votre algorithme de signature sont corrects. Vérifiez que le certificat intermédiaire est vérifié par rapport au certificat racine. Vérifier que le certificat racine a été généré correctement. Vérifiez que l'algorithme de signature correspond à celui du haut et du bas. Vérifiez que Issuer et Subject correspondent, tous les certificats racine sont auto-signés. Vérifiez que l'utilisation de la clé correspond à ce qui était dans les informations v3_ca dans notre fichier de configuration. Vérifiez que le certificat racine a été généré correctement. Vérifiez que l'émetteur et le sujet sont différents et corrects. Vérifier que l'utilisation de la clé correspond au fichier de configuration. Vérifiez que l'algorithme de signature est correct en haut et en bas. Vérifier l'état du dispositif via la LCR. Attendez que les clés soient générées avec succès. Nous continuons en générant la clé privée de l'autorité de certification intermédiaire directement sur le Nitrokey HSM. Cela nous permet d'utiliser la clé privée à l'avenir, mais pas d'y accéder. Nous devons créer un fichier de configuration pour générer un certificat public auto-signé. Nous devons trouver l'URI PKCS#11 entièrement qualifié pour votre clé privée : Nous commençons par générer la clé privée de l'autorité de certification directement sur le Nitrokey HSM. Cela nous permet d'utiliser la clé privée à l'avenir, mais pas d'y accéder. Lorsque vous composez un message, vous pouvez désormais choisir de le chiffrer et de le signer dans le ruban "Options" de la fenêtre de composition. Lorsque vous composez un courriel, vous pouvez désormais choisir de chiffrer et de signer le message. Lorsqu'il est appelé au moment de la suppression de Nitrokey, le script interroge ``user``, passe à sa session et verrouille l'écran en faisant apparaître l'écran de veille. Les utilisateurs de Windows avec un système 64 bits (standard) doivent installer à la fois la version 32 bits et la version 64 bits d'OpenSC ! Avec votre éditeur de texte préféré, créez un fichier appelé "85-nitrokey.rules". Avec votre éditeur de texte favori, créez un fichier appelé ``gnome-screensaver-lock``. Vous trouverez de plus amples informations sur l'utilisation de ces pages : Vous devez avoir OpenSC installé sur votre système. Veuillez consulter la page `wiki du projet OpenSC <https://github.com/OpenSC/OpenSC/wiki>`__. Vous devez avoir `OpenSC installé <https://github.com/OpenSC/OpenSC/wiki>`__ sur votre Système. Alors que les utilisateurs de GNU/Linux peuvent généralement installer OpenSC via le gestionnaire de paquets (par exemple ``sudo apt update && sudo apt install opensc`` sur Ubuntu), les utilisateurs de macOS et Windows peuvent télécharger les fichiers d'installation directement depuis OpenSC. Vous devez acheter un certificat S/MIME ou peut-être en avez-vous déjà un par votre entreprise. De plus, vous devez installer `OpenSC <https://github.com/OpenSC/OpenSC/wiki>`__ sur votre système. Alors que les utilisateurs de GNU/Linux peuvent généralement installer OpenSC via le gestionnaire de paquets (par exemple ``sudo apt install opensc`` sur Ubuntu), les utilisateurs de macOS et Windows peuvent télécharger les fichiers d'installation depuis la page `OpenSC <https://github.com/OpenSC/OpenSC/wiki>`__. Vous avez maintenant une autorité de certification soutenue par un HSM. Vous devez modifier la configuration en fonction du dispositif que vous utilisez comme suit : Votre Nitrokey est maintenant prêt à être utilisé. `Checkout <https://www.nitrokey.com/documentation/applications>`__ les différents cas d'utilisation et les applications supportées. `Télécharger <http://download.mysmartlogon.com/SmartPolicyv2/SmartPolicy%20-%20Stage%203.exe>`__ et installer Smart Policy. `Comment créer une autorité de certification racine et intermédiaire <https://jamielinux.com/docs/openssl-certificate-authority/create-the-root-pair.html>`___. `Comment s'assurer que les numéros de série de votre CA intermédiaire et de vos certitudes de serveur sont à jour <https://www.phildev.net/ssl/creating_ca.html>`___. `Comment trouver l'URI PCKS11 à partir de votre HSM <https://www.infradead.org/openconnect/pkcs11.html>`___. Comment générer des clés privées ECC <https://dev.to/benjaminblack/obtaining-an-elliptic-curve-dsa-certificate-with-lets-encrypt-51bc>`___. `Comment initialiser votre HSM Nitrokey <https://github.com/OpenSC/OpenSC/wiki/SmartCardHSM#initialize-the-device>`___. `Troubleshooting (forum) <https://support.nitrokey.com/t/pki-ca-nitrokey-hsm-does-not-support-signing/2598/14>`___. et sur macOS et GNU/Linux, ce sera pour l'utilisation de `Evolution <https://help.gnome.org/users/evolution/stable/mail-encryption.html.en>`__, un client de messagerie pour le bureau Gnome sur les systèmes Linux. pour utiliser le cryptage `S/MIME sur Outlook <https://docs.nitrokey.com/pro/smime-outlook.html>`___. pour utiliser le cryptage `S/MIME sur Thunderbird <https://docs.nitrokey.com/pro/smime-thunderbird.html>`___. 