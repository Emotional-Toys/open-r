R-Code Plug-In sample for the OPEN-R SDK

[�ڎ�]
  ��������t�@�C���E�f�B���N�g���̊T�v
  MS �C���[�W�̍쐬���@
  RPlugIn �T���v���̋@�\


[��������t�@�C���E�f�B���N�g���̊T�v]
  R_CODE_plugin_r1/sample/RPlugIn/README.TXT
    ���̃t�@�C��

  R_CODE_plugin_r1/sample/RPlugIn/RPlugIn
    RPlugIn �\�[�X�R�[�h�t�@�C�����܂ރf�B���N�g��
  
  R_CODE_plugin_r1/sample/RPlugIn/MS/OPEN-R/APP/PC/AMS/PLUGIN.CFG
    RMain �� RPlugIn �̐ݒ�t�@�C���B

  R_CODE_plugin_r1/sample/RPlugIn/MS/OPEN-R/APP/PC/AMS/RPlugIn.cfg
    RPlugIn ���񋟂���R�}���h��ϐ���o�^����t�@�C���B

  R_CODE_plugin_r1/sample/RPlugIn/MS/OPEN-R/APP/PC/AMS/R-Code.R
    R-CODE �T���v���X�N���v�g�BRPlugIn �T���v���̃R�}���h�g�p��B

  R_CODE_plugin_r1/sample/RPlugIn/MS/OPEN-R/APP/PC/AMS/NTP.CFG
    NTP �T�[�o���ݒ�t�@�C���BRPlugin �T���v���̃R�}���h SEND:NTP ���Q�Ƃ���B

  R_CODE_plugin_r1/sample/RPlugIn/MS/OPEN-R/APP/PC/INDEX.HTM
    �T���v�� html �t�@�C���B
    RPlugin �T���v���̃R�}���h���s���ʂ��u���E�U�Ŋm�F����B

  R_CODE_plugin_r1/sample/RPlugIn/MS/OPEN-R/APP/DATA/P/RCODE/
    RPLUGIN.BIN ��z�u���邽�߂̃f�B���N�g��


[MS �C���[�W�̍���]
  0. OPEN-R SDK ���Z�b�g�A�b�v���Ă��������B

  1. RPLUGIN.BIN �̍쐬
      RPLUGIN.BIN �̍쐬�ɂ� "R_CODE_plugin_r1/OPEN_R_SDK" ���K�v�ł��B
      "R_CODE_plugin_r1/OPEN_R_SDK" �� R_CODE_plugin_r1.tar.gz �Ɋ܂�
      ��܂��B

      % make
      % make install

  2. MS�C���[�W�̍쐬

      Step1. "R-CODE Plug-In for the OPEN-R SDK" �̃x�[�X MS �C���[�W
             OPEN_R_SDK/OPEN_R/MS_ERS7/RCODE/{Jpn,Eng}/OPEN-R ��
             AIBO �v���O���~���O�������[�X�e�B�b�N�ɃR�s�[���Ă��������B
      
      Step2. sample/RPlugIn/MS/OPEN-R �� Step1 �ō���� MS ��
             �R�s�[���Ă��������B
             

[RPlugIn �T���v���̋@�\]
  1. �摜�� BMP �t�@�C���ɕۑ�
  2. ������ WAV �t�@�C���ɕۑ�
  3. NTP �ɂ�鎞���₢���킹

  ----------
  1. �摜�� BMP �t�@�C���ɕۑ�

   RPlugIn �T���v���� SAVE:IMAGE ���󂯎���, �󂯎�蒼���
   OccImageData �� BMP �t�@�C���ŕۑ����܂��B

   [����]
   SAVE:IMAGE:(�t�@�C����)
     �t�@�C���� = �ۑ�����t�@�C���̖��O
                  DOS�`��(8.3����)�Ŏw�肷�邱�� (��. IMAGE1.BMP)

   [�o�͐�]
   /OPEN-R/APP/PC/AMS/(�t�@�C����)

  ----------
  2. ������ WAV �t�@�C���ɕۑ�

   RPlugIn �T���v���� SAVE:AUDIO ���󂯎��ƁA�󂯎��ォ���W�b�Ԃ�
   �����f�[�^(OccAudioData) �𒙑����AWAV �t�@�C���ŕۑ����܂��B

   [����]
   SAVE:AUDIO:(�t�@�C����)
     �t�@�C���� = �ۑ�����t�@�C���̖��O
                  DOS�`��(8.3����)�Ŏw�肷�邱�� (��. AUDIO1.BMP)

   [�o�͐�]
   /OPEN-R/APP/PC/AMS/(�t�@�C����)

  ----------
  3. NTP �ɂ�鎞���₢���킹

   RPlugIn �T���v���� SEND::NTP ���󂯎���, �w�肳�ꂽ NTP �T�[�o�[��
   ������₢���킹�܂��B
   NTP �T�[�o�[�� /MS/OPEN-R/APP/PC/AMS/NTP.CFG �Ŏw�肵�܂��B
   ���̋@�\�𗘗p����ɂ͖��� LAN �̐ݒ肪�K�v�ł��B

   [����]
   SEND:NTP

   [�o��]
   �R�}���h�����������ꍇ�A������ echo_client (RPlugIn/echo_client) ��
   �g���Č���(���t�\��)���m�F���ł��܂��B

   echo_client �̎g���� (AIBO �� IP �A�h���X�� 192.168.XX.XX �̏ꍇ)
   % cd .../RPlugIn/echo_client/
   % make
   % ./echo_client.exe 192.168.XX.XX

