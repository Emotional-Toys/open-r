** BattChecker Sample program **

�����ł�2�̃T���v���v���O������񋟂��܂��B������̃T���v����
Windows �ł̂ݓ��삵�܂��B

1. BattChecker �́Awin32api �� Remote Processing OPEN-R ���g���T���v��
   �v���O�����ł��B�z�X�gPC��ŊȈՂ� Window ���J���AAIBO�̃o�b�e���[
   �c�ʂ�\�����܂��B

2. 2�̃v���O���������삵�܂��B1�� Remote Processing OPEN-R ���g����
   ���삷��z�X�gPC��̃v���O����(BattChecker)�ł��B����1�� MFC�ō쐬
   ���ꂽWindows �̃A�v���P�[�V����(BattViewer)�ł��B
   2�̃v���O�����́AWindows�̃v���Z�X�ԒʐM�i���L�������[�j�Ńf�[�^
   �����Ƃ肵�܂��B
   Remote Processing OPEN-R ���g���v���O����(BattChecker)�́AAIBO��
   �o�b�e���[�c�ʂ��擾���A���L�������[�ɏ������݂܂��BMFC�ō쐬���ꂽ
   Windows �̃A�v���P�[�V����(BattViewer)�́A���L�������[����o�b�e���[
   �c�ʂ�ǂݏo���āA�v���O���X�o�[�Ŏc�ʂ�\�����܂��B
   �\��������Windows �A�v���P�[�V����(BattViewer)��Visual C++ 6.0 ���g����
   �쐬����Ă��܂��B

���f�B���N�g���\��
BattChecker--+--BattChecker--+--host--+--MFC Makefile(host�p)
             |               |        |
             |               |        +--win32 Makefile(host�p)
             |               |
             |               +--robot Makefile(robot�p)
             |
             +--MS (RP OPEN-R ���g��Ȃ��ꍇ; robot�p)
             |
             +--RP--+--host--+--MFC--MS  (RP OPEN-R���g���ꍇ; host�p)
             |      |        |
             |      |        +--win32-MS (RP OPEN-R���g���ꍇ; host�p)
             |      |
             |      +--robot--MS (RP OPEN-R���g���ꍇ; robot�p)
             |
             +--BattViewer (MFC�A�v�� �\���p)

���쐬���@�E�g����
���̃T���v���ł�3�̕��@��񋟂��܂��B1�ڂ�AIBO�݂̂œ��삵�܂��B
2�ڂ� Win32API ���g���ȒP�ȃT���v���ł��B3�ڂ� Win32API ���g��
�T���v����MFC���g���v���O�����ł��B

1. make ���� OPENR_WIN32API �� OPENR_SHAREDMEM_FOR_MFCAPP ����`
    ����Ă��܂���B
  RP OPEN-R ���g��Ȃ��ꍇ(AIBO�ł̂ݓ���)
  $ cd sample/BattCheker
  $ make install
  $ cd MS
  $ cp -rf OPEN-R <Memory Stick Drive letter>:

2. make ���� OPENR_WIN32API ����`����Ă��܂��B
  RP OPEN-R ���g���Awin32api���g����Window ��\������ꍇ
  $ cd sample/BattCheker/RP/robot
  $ make install
  $ cd MS
  $ cp -rf OPEN-R <Memory Stick Drive letter>:
  $ cd ../../host/win32
  $ make install
  $ /usr/local/OPEN_R_SDK/RP_OPENR_R/bin/start-rp-openr
  
  start-rp-openr ���g���O�ɁAipc-deamon �𓮍삳���Ă����Ă��������B
  Remote Processing OPEN-R���Z�b�g�A�b�v���Ă����K�v������܂��B
  �Z�b�g�A�b�v�ɂ́AInstallation guide ���������������B

3. make ���� OPENR_WIN32API �� OPENR_SHAREDMEM_FOR_MFCAPP ����`����Ă��܂��B
  RP OPEN-R ���g���A�\����MFC�A�v���ōs���ꍇ
  �͂��߂� Visual C++ �� BattViewer ���r���h���Ă����B
  $ cd sample/BattCheker/RP/robot
  $ make install
  $ cd MS
  $ cp -rf OPEN-R <Memory Stick Drive letter>:
  �i���{�b�g�ɃR�s�[����I�u�W�F�N�g�A�ݒ�t�@�C���� win32�p�Ɠ����ł��j
  $ cd ../../host/MFC
  $ make install
  $ /usr/local/OPEN_R_SDK/RP_OPENR_R/bin/start-rp-openr
  
  start-rp-openr ���g���O�ɁAipc-deamon �𓮍삳���Ă����Ă��������B
  Remote Processing OPEN-R���Z�b�g�A�b�v���Ă����K�v������܂��B
  �Z�b�g�A�b�v�ɂ́AInstallation guide ���������������B

  BattViewer �� VC++���g���Ă������͒��ڎ��s����i���s�t�@�C����
  �_�u���N���b�N���铙�j

----
"Windows" is a registered trademark of Microsoft Corporation in the 
US and other countries.
