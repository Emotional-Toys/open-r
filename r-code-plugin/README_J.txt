"R-CODE Plug-In for the OPEN-R SDK" �� 
OPEN-R SDK �\�t�g�E�F�A�g�p�����_�񏑂ɑ���܂��B

===============================
[Development kit]
�Ĕz�z�s�ȃt�@�C��
===============================
   +--OPEN_R_SDK
      +--OPEN-R
         +--MS_ERS7
         |  +--RCODE
         |     +--Jpn
         |     |  +--OPEN-R  (MS �C���[�W for R-CODE Plug-In ���{���)
         |     |
         |     +--Eng
         |        +--OPEN-R  (MS �C���[�W for R-CODE Plug-In �p���)
         |
         +--include
            +--OPENR         (header files for RMain & RPlugIn)

===============================
[Sample program]
�Ĕz�z�\�ȃt�@�C��
===============================
   +--sample
      +--RMain
      |  +--src
      |
      +--RPlugIn
         |  Makefile
         |  README.txt
         |
         +--MS
         +--RPlugIn
         +--echo_client 
           
Note 1:
 Sample �f�B���N�g���ɂ� RMain (R-CODE ���C���p�[�g) �̃\�[�X�R�[�h���܂�
 ��܂����AOPEN-R SDK ���g���ăR���p�C�����邱�Ƃ͂ł��܂���BRMain ��
 �\�[�X�R�[�h�́AR-CODE Plug-In �J���Q�l�̂��ߌ��J�������܂����B

Note 2:
 �\�j�[(��)�� "R-CODE Plug-In for the OPEN-R SDK" �Ɋւ��āA�����Ȃ鎿���
 ���������������܂���B


====================================================================
  "R-CODE Plug-In for the OPEN-R SDK" �T���v�� MS �C���[�W�̎g����
====================================================================

  Step1. OPEN_R_SDK/OPEN_R/MS_ERS7/RCODE/{Jpn,Eng}/OPEN-R ��
         AIBO �v���O���~���O�������[�X�e�B�b�N�ɃR�s�[���Ă��������B

  Step2. Step1 �� AIBO �v���O���~���O�������[�X�e�B�b�N��
         sample/RPlugIn/MS/OPEN-R ���㏑�����Ă��������B

  Step3. Step2 �� AIBO �v���O���~���O�������[�X�e�B�b�N���g����
         �A�C�{���N�����܂��B

  (�@�\�Ȃǂ̏ڍׂɂ��Ă� sample/RPlugIn/README.TXT ���Q�Ƃ��Ă��������B)
