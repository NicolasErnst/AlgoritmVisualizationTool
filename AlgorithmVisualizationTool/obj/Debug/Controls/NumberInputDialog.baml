   M S B A M L   `   `   `  ����U  QAlgorithmVisualizationTool, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullY1clr-namespace:AlgorithmVisualizationTool.Controls#AlgorithmVisualizationTool.Controls  5   	   ;    5AlgorithmVisualizationTool.Controls.NumberInputDialog   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Clocal1clr-namespace:AlgorithmVisualizationTool.Controls     5   	     � Title$  NumberInputDialog��5   	   $	��120��6L   $	��205��6\   .��5	      � .+�5
   
   �� -   5         ��Name$ NumberInput��5
       �� 	MaxLength$ 11��6�   $	��Top=�6�   $��Center=�6�   $��16(�6�   $��32��6�   $��
10,10,10,0q�6�   ��6'   �� *Value+ �� ElementName$ 	ScrollBar�� �� StringFormat$ {0:F0}�� �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�6  �� 5   
   -   5         ��Name$ 	ScrollBar��5       �� Orientation$ Vertical=�6'   	 � SmallChange$	 1Q�6U   $��30��6e   $��	0,11,11,0q�6q   
 J� RenderTransformOrigin$
 0.5,0.5&�6�   $��Right=�6�   $	��Top=�6�   ��6>   Z� z�5      V� 5      .~�5      �� �� 5      �� 5       �� Angle$	 180Q�6&   T� 5      5      5      �� 5   
   -   5        $��OkButton��5      $��Ok��6   $��Right=�6   $��
0,57,10,10q�6:   $	��Top=�6N   $��14(�6f   $��75��6t   6�   �� 5   
   -   5        $��CancelButton��5   �   $��Cancel��6   $��Right=�6"   $��
0,57,90,10q�6>   $	��Top=�6R   $��14(�6j   $��75��6x   6�   5      5      