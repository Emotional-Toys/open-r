
[W3AIBO �̃r���h�Ǝ��s]

1. libjpeg �̏���

   jpegsrc.v6b.tar.gz �����
   
   $ ls
   MS        README_E.txt  W3AIBO              makefile.aibo
   Makefile  README_J.txt  jpegsrc.v6b.tar.gz   

2. �r���h

   $ make install

3. ��� AIBO �v���O���~���O�������X�e�B�b�N�ɁA�܂��ȉ��� OPEN-R 
   �f�B���N�g�����R�s�[���܂��B

   ${OPENRSDK_ROOT}/OPEN_R/MS/WCONSOLE/nomemprot/OPEN-R

   ���ɁA�ȉ��� OPEN-R �f�B���N�g����ǉ��㏑�����܂��B

   MS/OPEN-R

4. AIBO �v���O���~���O�������X�e�B�b�N�� AIBO �ɑ}�����AAIBO ���N��
   ���܂��B
   ���̌�̑���i�����R���\�[���AAIBO�̃V���b�g�_�E�����@�j�́A�]��
   �Ɠ����ł��B

5. Web �u���E�U�� AIBO �ɃA�N�Z�X���܂��B

   Layer H �摜
     http://<AIBO's IP address>:60080/        
     http://<AIBO's IP address>:60080/layerh
     http://<AIBO's IP address>:60080/layerhr (�č\���摜)

   Layer M �摜
     http://<AIBO's IP address>:60080/layerm
     http://<AIBO's IP address>:60080/layermr (�č\���摜)

   Layer L �摜
     http://<AIBO's IP address>:60080/layerl
     http://<AIBO's IP address>:60080/layerlr (�č\���摜)
