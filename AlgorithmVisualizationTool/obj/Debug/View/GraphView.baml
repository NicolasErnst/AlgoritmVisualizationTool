   M S B A M L   `   `   `  ����U  QAlgorithmVisualizationTool, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullk:clr-namespace:AlgorithmVisualizationTool.Model.Validations,AlgorithmVisualizationTool.Model.Validations  5      ]3clr-namespace:AlgorithmVisualizationTool.Model.MVVM%AlgorithmVisualizationTool.Model.MVVM  5      O KWPFExtensions, Version=1.0.3437.34043, Culture=neutral, PublicKeyToken=nullV;clr-namespace:WPFExtensions.Controls;assembly=WPFExtensionsWPFExtensions.Controls 5      Q-clr-namespace:AlgorithmVisualizationTool.ViewAlgorithmVisualizationTool.View  5	      _4clr-namespace:AlgorithmVisualizationTool.Model.Graph&AlgorithmVisualizationTool.Model.Graph  5
      /    )AlgorithmVisualizationTool.View.GraphView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Q
validation:clr-namespace:AlgorithmVisualizationTool.Model.Validations     5      I	mvvmmodel3clr-namespace:AlgorithmVisualizationTool.Model.MVVM     5      Lzoom;clr-namespace:WPFExtensions.Controls;assembly=WPFExtensions     5      ?local-clr-namespace:AlgorithmVisualizationTool.View     5	      K
graphmodel4clr-namespace:AlgorithmVisualizationTool.Model.Graph     5
      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      .��5      ]� ��. .+�5   
   o� $	��Top=�6   $��0,0,0,10q�6$   $��14(�66   .@�5      m� $
��File��6   .@�5      m� $��New project...��6     m� InputGestureText$  Ctrl+N��63    m� Command 6M   �� *NewClickedCommand+m� 5      $��Open project...��6   $  Ctrl+O��64    6N   �� *OpenClickedCommand+�� 5      m� 5      $  Ctrl+S��6    65   �� *SaveClickedCommand+��5      �� 5      ��5      `� 5   "    �� StringFormat$ Save {0}.graph��6/   .1�5   &   ��  �� Path$ 	GraphName�6.   5   #   5      5      m� 5        6   �� *SaveAsClickedCommand+��5!      �� 5"      ��5#      `� 5$   "   $ Save {0}.graph As...��6/   .1�5%   &   �� $ 	GraphName�6.   5&   #   5(      5*      �� 5+      m� 5,      $��Import��6    6+   �� *ImportClickedCommand+m� 5-      $��Export��6    6+   �� *ExportClickedCommand+�� 5.      m� 5/      $
��Exit��6   $  Alt+F4��6)    6C   �� *ExitClickedCommand+50      m� 51      $
��Info��6    6%   �� *InfoClickedCommand+52      � 54   
    � ColumnDefinitions 55      �� 56      $��1* �6#   �� 57      $
��Auto �6#   �� 58      $��2* �6#   .+�5;      �� $��14(�6   .@�5<      �� $��Overview��6   .��5=      � .+�5>      �� $��14(�6"   $��
10,44,10,0q�60   $	��Top=�6D   .��6\   ��5?      �� 5@   "   $ 	GraphName�6*    �� UpdateSourceTrigger$ PropertyChanged=�6;    �� Mode$ TwoWay=�6a    �� ValidationRules 5A   &   E  ?AlgorithmVisualizationTool.Model.Validations.NameValidationRule  5B   *      	MinLength$ 1��6H   5D   #   .��5E   ,   ��5F      �� 5G   "   	 �� 
TargetType"	 ��6(   
 �� Triggers
 5H   &   P� 5I   *    P� Property �@=�HasError P� Value . . �5J   .   ��  �� Property �@�ToolTip �� Value 6H   ��  �� Self �� RelativeSource# Z $&  (Validation.Errors)/ErrorContent�5K   +   5M   #   .��5N   -   5O      �� 5P      $
��Left=�6$   $��	10,20,0,0q�6?   $��Graph name:��6R   $
��Wrap=�6e   $	��Top=�6y   $
��Bold"�6�   �� 5Q      $
��Left=�6$   $��	10,94,0,0q�6?   $��Last modified / saved:��6R   $
��Wrap=�6p   $	��Top=�6�   $
��Bold"�6�   �� 5R      $
��Left=�6$   $��
10,118,0,0q�6?   $
��Wrap=�6S   $	��Top=�6g   ��6   �� *Graph.LastModifiedToString+�� 5S      $
��Left=�6$   $��
10,166,0,0q�6?   $��
File path:��6S   $
��Wrap=�6e   $	��Top=�6y   $
��Bold"�6�   �� 5T      $
��Left=�6$   $��
10,190,0,0q�6?   $
��Wrap=�6s   $	��Top=�6�   ��6S   �� *Graph.FilePath+6�   5U      5V      �� 5W      $��Graph Description��6   .��5X      � .+�5Y      �� $
��Left=�6$   $��	10,44,0,0q�6?   $��Graph description (DOT):��6R   $
��Wrap=�6r   $	��Top=�6�   $
��Bold"�6�   ��5Z      �� 5[   "   "	 ��6(   .�5\   &   ��  �@�ToolTip 6@   �� *DOTInputValidation+�� 5]   &    � ��
 �  ��6C   
 5^   &   �� 5_   *    �� Binding 66   �� *DOTInputValidation+ �� Value 6]   Z� .a�5`   .   ��  �@�ToolTip$  ��6H   �� 5a   .    � ��
 �   �6K   5b   +   5d   #   5f      �� 5g      $��14(�6"   $��10,68,10,10q�60    �� TextWrapping$
 Wrap=�6�    �� AcceptsReturn . " �� VerticalScrollBarVisibility$
 Auto=�6�   ��6E   �� *DOTDescription+$ PropertyChanged=�.��6�   ��5h      �� 5i   "   "	 ��6(   .�5j   &   ��  �@�ToolTip 6@   �� *DOTInputValidation+
 5k   &   �� 5l   *    66   �� *DOTInputValidation+ 6]   Z� .a�5m   .   ��  �@�ToolTip$  ��6H   5n   +   5p   #   .��5q   -   .  (System.Windows.Interactivity.Interaction   Triggers 5r      /  )System.Windows.Interactivity.EventTrigger  5s   "      	EventName$ 	LostFocus��61   .  (System.Windows.Interactivity.TriggerBase   Actions. 5t   &   6  0System.Windows.Interactivity.InvokeCommandAction     Command 6<   �� * DOTDescriptionFocusLostCommand+5u   #   .��5v   6   5w      � 5x      $��Bottom=�6    5y      �� 5z   "   $��1* �63   �� 5{   "   $��1* �63   5}      �� 5~      $
��Left=�6$   $��	10,10,0,0q�6?   $��Graph type:��6R   $
��Wrap=�6e   $	��Top=�6y   $
��Bold"�6�   �� 5      $
��Left=�6$   $��	92,10,0,0q�6?   $
��Wrap=�6v   $	��Top=�6�   ��6R   �� *GraphDirectionType+6�   5�      5�      �� 5�      $��Graph Algorithm��6   .��5�      �  � RowDefinitions 5�      �� 5�      $��* �6,   �� 5�      $
��Auto �6,   �� 5�      $��* �6,   .+�5�      � $��0��6   .+�5�      �� $
��Left=�6(   $��	10,20,0,0q�6C   $��Algorithms:��6V   $
��Wrap=�6i   $	��Top=�6}   $
��Bold"�6�   &   System.Windows.Controls.DataGrid  5�      $��14(�6'   $��10,44,10,10q�65      AutoGenerateColumns .     
IsReadOnly . ��6J   �� *,*AlgorithmExecutor.AvailableGraphAlgorithms+ �� SelectedItem 6�   �� **(AlgorithmExecutor.SelectedGraphAlgorithm+ � 	Resources 5�   "   O   IAlgorithmVisualizationTool.Model.MVVM.GraphDirectionTypeToStringConverter   DirectionConverter��%   &	          5�   &   6T   5�   #      Columns 5�   "   0  *System.Windows.Controls.DataGridTextColumn  5�   &   ,	  &System.Windows.Controls.DataGridColumn  	  Header$
  Name��69   ! 	  Width5
  /System.Windows.Controls.DataGridLengthConverter$
! Auto
 6i   1  +System.Windows.Controls.DataGridBoundColumn"   Binding" 6G   �� *AlgorithmName+6i     5�   &   $  Supported Directions��69   $! *
 6�   " 6W   �� *CompatibleGraphDirections+# �� 	Converter## [  6�   5�      �� 5�      $
��Left=�6(   $��	92,20,0,0q�6C   $
��Wrap=�6�   $	��Top=�6�   ��6V   �� *86AlgorithmExecutor.SelectedGraphAlgorithm.AlgorithmName+6�   5�      � 5�      $��1��6   .+�5�      �� $
��Left=�6(   $��	10,20,0,0q�6C   $��	Progress:��6V   $
��Wrap=�6g   $	��Top=�6{   $
��Bold"�6�   �� 5�      $
��Left=�6(   $��	76,20,0,0q�6C   $
��Wrap=�6V   $	��Top=�6j   ��5�   "   �� 5�   &   "	 ��6,   
 5�   *   �� 5�   .    6:   �� * AlgorithmExecutor.ProgressText+ 6m   Z� .a�5�   2   ��  � �� 6I   �� *AlgorithmExecutor.Progress+$ {0:N2}%��5�   /   �� 5�   .    6:   �� * AlgorithmExecutor.ProgressText+  6m   .a�5�   2   ��  � �� 6I   �� *AlgorithmExecutor.Progress+$ {0:N2}%��5�   /   .�5�   *   ��  � �� 5�   .   `� 5�   2   $ {0:N2}% - {1}��6?   .1�5�   6   �� $  AlgorithmExecutor.Progress�6>   �� 5�   6   $$ AlgorithmExecutor.ProgressText�6>   5�   3   5�   +   5�   '   5�      � 5�      $��10��6*   $��
10,44,10,0q�66   $	��Top=�6J   $ � Minimum$$ 0Q�6b   % � Maximum$	% 100Q�6n   & � Value& 6|   �� *AlgorithmExecutor.Progress+�� 5�      $
��Left=�6(   $��	10,70,0,0q�6C   $��Delay:��6V   $
��Wrap=�6d   $	��Top=�6x   $
��Bold"�6�   �� 5�      $
��Left=�6(   $��	56,70,0,0q�6C   $
��Wrap=�6V   $	��Top=�6j   ' � ToolTip$' Double-click to edit��6�   ��6�   �� *AlgorithmExecutor.Delay+$ {0}ms��( J� InputBindings( 5�   "   d� 5�   &   ) d� MouseAction$) LeftDoubleClicke�63   * �� Command* 6Q   �� *$"AlgorithmDelayDoubleClickedCommand+5�      �� 5�      $��
10,94,10,0q�6%   $	��Top=�69   % 6Q   �� *AlgorithmMaxDelay+& 6w   �� *AlgorithmExecutor.Delay+�� 5�      $
��Left=�6(   $��
10,117,0,0q�6C   $��Min: 0ms��6W   $
��Wrap=�6g   $	��Top=�6{   �� 5�      $��Right=�6(   $��
0,117,10,0q�6D   $
��Wrap=�6X   $	��Top=�6l   $' Double-click to edit��6�   ��6�   �� *AlgorithmMaxDelay+$ 
Max: {0}ms��( 5�   "   d� 5�   &   $) LeftDoubleClicke�63   * 6Q   �� *'%AlgorithmMaxDelayDoubleClickedCommand+5�      �� 5�      $
��Left=�6(   $��
10,150,0,0q�6C   $��Start vertex:��6W   $
��Wrap=�6l   $	��Top=�6�   $
��Bold"�6�   �� 5�      $	��Top=�6'   $��10,174,10,0q�6?   ��6T   �� *$"AlgorithmExecutor.GraphVertexNames+ 6�   �� *+)AlgorithmExecutor.SelectedStartVertexName+$ PropertyChanged=��� 5�      $��	0,224,0,0q�6)   $	��Top=�6<   .+�5�   "   �� $��23��6)   $��	10,0,10,0q�6q   $	��Top=�6�   ��68   �� *&$AlgorithmExecutor.StartAlgorithmText+��6�   �� *StartAlgorithmClickedCommand+��5�   &   �� 5�   *   "	 ��60   
 5�   .   �� 5�   2    6>   �� **(AlgorithmExecutor.SelectedGraphAlgorithm+ 6{   Z� .a�5�   6   ��  � {� .  6R   5�   3   �� 5�   2    6>   �� *+)AlgorithmExecutor.SelectedStartVertexName+  6|   .a�5�   6   ��  � {� .  6R   5�   3   �� 5�   2    6>   �� *+)AlgorithmExecutor.SelectedStartVertexName+ 6|   Z� .a�5�   6   ��  � {� .  6R   5�   3   5�   +   5�   #   � 5�   "   $��10, 10, 10, 10q�6'    5�   &   �� 5�   *   $��* �6;   �� 5�   *   $��* �6;   .+�5�   &   �� $��Step Backward��6-   $��0��6E   $��0,0,5,0q�6U   $	��Top=�6f   ��6~   �� *StepBackwardClickedCommand+��5�   *   �� 5�   .   "	 ��64   
 5�   2   �� 5�   6    6B   �� **(AlgorithmExecutor.SelectedGraphAlgorithm+ 6   Z� .a�5�   :   ��  � {� .  6V   5�   7   �� 5�   6   @  :AlgorithmVisualizationTool.Model.Graph.GraphAlgorithmState+   Started# Z+ 6w    6B   �� *" AlgorithmExecutor.AlgorithmState+.a�5�   :   ��  � {� .  6V   5�   7   �� 5�   6   ,   Finished# Z, 6w    6B   �� *" AlgorithmExecutor.AlgorithmState+.a�5�   :   ��  � {� .  6V   5�   7   5�   /   5�   '   �� 5�   &   $��Step Forward��6-   $��1��6D   $��5,0,0,0q�6T   $	��Top=�6e   ��6}   �� *StepForwardClickedCommand+��5�   *   �� 5�   .   "	 ��64   
 5�   2   �� 5�   6    6B   �� **(AlgorithmExecutor.SelectedGraphAlgorithm+ 6   Z� .a�5�   >   ��  � {� .  6Z   5�   ;   �� 5�   :    6F   �� *+)AlgorithmExecutor.SelectedStartVertexName+ 6�   Z� .a�5�   >   ��  � {� .  6Z   5�   ;   �� 5�   :    6F   �� *+)AlgorithmExecutor.SelectedStartVertexName+  6�   .a�5�   >   ��  � {� .  6Z   5�   ;   �� 5�   :   # Z+ 6{    6F   �� *" AlgorithmExecutor.AlgorithmState+.a�5�   >   ��  � {� .  6Z   5�   ;   5�   /   5�   '   5�   #   �� 5�   "   $��Reset��6)   $	��Top=�69   $��	10,0,10,0q�6Q   ��6d   �� *ResetClickedCommand+��5�   &   �� 5�   *   "	 ��60   
 5   .   �� 5  2    6>   �� **(AlgorithmExecutor.SelectedGraphAlgorithm+ 6{   Z� .a�5  6   ��  � {� .  6R   5  3   �� 5  2   # Z+ 6s    6>   �� *" AlgorithmExecutor.AlgorithmState+.a�5  6   ��  � {� .  6R   5  3   5  +   5
  #   5     5     � 5     $��2��6   .+�5     �� $
��Left=�6(   $��	10,20,0,0q�6C   $��Exposed lists:��6V   $
��Wrap=�6l   $	��Top=�6�   $
��Bold"�6�     5     $��14(�6'   $��10,44,10,10q�65    .   . ��6J   �� *75AlgorithmExecutor.SelectedGraphAlgorithm.ExposedLists+ 5  "     5  &   $
  Name��69   $
! Auto
 6d   " 6G   �� *
ListName+6d     5  &   $  Items��69   $! *
 6l   " 6H   �� *JoinedListItems+6l   5     5     5     5     5     �� 5     $��1��6   $��Center=�6+   $��Stretch=�6H   $��4��6d   $��2,0,2,0q�6n   (  "WPFExtensions.Controls.ZoomControl  5*     $��2��6   $��1��60   -   Zoom$	- 0.2Q�6>   .   ZoomBoxOpacity$	. 0.5Q�6I   .��5+     �� $��10q�6S   ��6!   �� *AlgorithmExecutor.GraphLayout+6S   5,     5-     5.     5/     