   M S B A M L   `   `   `  ����U  QProjektAplikacjaBazodanowa, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:ProjektAplikacjaBazodanowaProjektAplikacjaBazodanowa  5   	   +    %ProjektAplikacjaBazodanowa.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   :local(clr-namespace:ProjektAplikacjaBazodanowa     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   .��5	      �  � ColumnDefinitions 5
   
   �� 5      $
��133* �6   �� 5      $
��131* �6    � RowDefinitions 5   
   �� 5      $��56.696 �6   �� 5      $	��199 �6   �� 5      �� 5      $	��100 �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ 
mydatagird��5   }   $��2��6   $��5,5,5,4q�6'      
IsReadOnly .    CanUserAddRows .     AutoGenerateColumns .     SelectionMode$ Single=�6�      SelectionUnit$ FullRow=�6�   $��2��6�   	   Columns	 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn
   Header$
 Employee��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6Q   1  +System.Windows.Controls.DataGridBoundColumn   Binding 67   �� *ENAME+6Q     5      $	
 Job��6%   $ * 6J    62   �� *JOB+6J     5      $
 Department name��6%   $ * 6]    6>   �� *
DEPT.DNAME+6]     5      $
 Salary��6%   $ * 6N    65   �� *SAL+6N   5      �� 5   
   -   5        $��Zapisz zmiany��5      $��1��6)   $
��Left=�69   $��
243,64,0,0q�6T   $��3��6h   $	��Top=�6u   $	��105��6�   $��26��6�   6�   �� 5   
   -   5         ��Name$ 
labelilosc��5   p   $
��Left=�6   $��	40,15,0,0q�6,   $��3��6?   $	��Top=�6L   $	��152��6d   $��10��6�   �� 5   
   -   5         ��Name$ buutonszukaj��5   �   $��szukaj��6   $
��Left=�6"   $��	10,33,0,0q�6=   $��3��6P   $	��Top=�6]   $	��140��6u   $��25��6�   6�   �� 5    
   -   5         ��Name$ 	szukajbox��5    �   $
��Left=�6   $��23��6-   $��10,5,0,0q�69   $��3��6K    �� TextWrapping$
 Wrap=�6X   $	��Top=�6m   $	��313��6�   6�   �� 5!   
   -   5        $ JOBBOX��5!   �   $��1��6   $
��Left=�6"   $��23��6=   $��
145,33,0,0q�6I   $��3��6]   $
 Wrap=�6j   $	��Top=�6   $	��203��6�   6�   �� 5"   
   -   5        $ ENAMEBOX��5"   �   $��1��6   $
��Left=�6"   $��23��6=   $��	145,5,0,0q�6I   $��3��6\   $
 Wrap=�6i   $	��Top=�6}   $	��203��6�   �� 5#   
   $
��Name��6   $��1��6   $
��Left=�6/   $��27,6,0,0q�6J   $��3��6\   $	��Top=�6i   $	��103��6�   $��23��6�   �� 5$   
   $	��Job��6   $��1��6   $
��Left=�6.   $��	27,33,0,0q�6I   $��3��6\   $	��Top=�6i   $	��103��6�   $��25��6�   �� 5%   
   -   5        $��Pokaz Wszystkich��5%      $
��Left=�6,   $��
183,33,0,0q�6G   $��3��6[   $	��Top=�6h   $	��140��6�   $��25��6�   6�   5&      5'      