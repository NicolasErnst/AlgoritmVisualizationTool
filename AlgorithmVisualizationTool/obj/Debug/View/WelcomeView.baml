   M S B A M L   `   `   `  ����U  QAlgorithmVisualizationTool, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullQ-clr-namespace:AlgorithmVisualizationTool.ViewAlgorithmVisualizationTool.View  5      Y1clr-namespace:AlgorithmVisualizationTool.Controls#AlgorithmVisualizationTool.Controls  5      1    +AlgorithmVisualizationTool.View.WelcomeView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ?local-clr-namespace:AlgorithmVisualizationTool.View     5      Cctrls1clr-namespace:AlgorithmVisualizationTool.Controls     5      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      .��5      �   � RowDefinitions  5   
   �� 5      $��170px �6   �� 5      $	��1px �6   �� 5      $��1* �6   .+�5   
   � $��0��6   .+�5      ]� $��Center=�6   .+�5      �� $
��Left=�6   $	��150��63   $��Center=�6@   $	��150��6[   $��/Resources/nodes.png��6g   � 5      $
��Left=�6   $��Center=�62   $��20,0,0,0q�6M   .+�5      �� $��Algorithm Visualization��6   $��Center=�6>   $	��Top=�6[   $��48(�6s   $
��Bold"�6�   �� 5      $
��Tool��6   $��Center=�6+   $	��Top=�6H   $��48(�6`   $
��Bold"�6n   $��0,60,0,0q�6�   5      5      5      � 5   
   $��1��6   
���   �6   � 5   
   $��2��6    � ColumnDefinitions 5      �� 5       $��1* �6#   �� 5!      $	��1px �6#   �� 5"      $��1* �6#   .+�5%      � $��0��6   .+�5&      �� $��Graph templates:��6   $
��Left=�63   $��	10,10,0,0q�6N   $	��Top=�6a   $��20(�6y   �� 5'      $��
10,52,9,63q�6   $��Stretch=�6U   $��Disabled=�6z   ��6.   �� *GraphTemplates+ �� SelectedItem 6�   �� *SelectedGraphTemplate+��5(      �� 5)      .R�5*      �  � Orientation$ 
Horizontal=�6(    K� IsItemsHost . 6A   5+      ��5-      �� 5.      .R�5/      A�  A� Rows$ 2��6*   $	��100��63   $��5,5,5,5q�6?   .+�50   "   �� $	��100��6A   $��50��6M   $��Center=�6Y   ��6(   �� *Image+6Y   �� 51   "   $��Center=�6N   $��14(�6k   $��0,5,0,0q�6y   $��WrapWithOverflow=�6�    �� TextAlignment$ Center=�6�   ��6,   �� *ImageDescription+6�   52      53      .  (System.Windows.Interactivity.Interaction   Triggers 55      /  )System.Windows.Interactivity.EventTrigger  56         	EventName$ MouseDoubleClick��6)   .  (System.Windows.Interactivity.TriggerBase	   Actions.	 57      6  0System.Windows.Interactivity.InvokeCommandAction  
   Command
 64   �� *$"GraphTemplatesDoubleClickedCommand+58      5:      �� 5;      $��
10,0,10,10q�6   $��Bottom=�6-   $��1q�6H   
���   �
������ ��6�   �� *CreateGraphCommand+ � 	Resources 5<       �� 
TargetType �� Property �� Value��%`   '��       �� 5=      " ��6    .�5>      ��  �@��CornerRadius$	 7.5��6=   5?      5@      ��5A      �� 5B       �� Orientation$ 
Horizontal=�6%   $��
2, 2, 2, 2q�6>   .+�5C      �� $��/Resources/add-file.png��6$   $��40��6E   $��40��6P   �� 5D      $��Create graph��6(   $��Center=�6<   $��20(�6W   $��10,0,0,0q�6e   5E      5G      5H      � 5J      $��1��6   
���   �6#   � 5L      $��2��6   .+�5M      �� $��Recent graphs:��6   $
��Left=�61   $��	10,10,0,0q�6L   $	��Top=�6_   $��20(�6w   3   -AlgorithmVisualizationTool.Controls.SearchBar  5N         Placeholder$  Graph name, file path, ...��6"   $��30��6K   $	��Top=�6W   $��155,13,10,0q�6o   $��14(�6�   ��6�   �� *RecentGraphsSearchText+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=��� 5O      $��
10,52,9,63q�6   $��Stretch=�6[   ��6.   �� *FilteredRecentGraphs+ 6�   �� *SelectedRecentGraph+��5P      �� 5Q      .R�5R      �� .+�5S   "   �� $��14(�6A   $
��Bold"�6O   ��6(   �� *Name+6O   �� 5T   "   $��12(�6(   $��0,-5,0,0q�66   .��5U   &   �� ��5V   *   `� 5W   .    �� StringFormat$ Last Opened: {0}��6;   .1�5X   2   ��  �� Path$ LastOpenedToString�6:   5Y   /   5[   '   5\   #   �� 5]   "   $��12(�6(   $��0,-5,0,0q�66   .��5^   &   �� ��5_   *   `� 5`   .   $ Last Modified: {0} by {1}��6;   .1�5a   2   �� $ LastModifiedToString�6:   �� 5b   2   $ LastModifier�6:   5c   /   5e   '   5f   #   �� 5g   "   $��12(�6(   $��0,-5,0,0q�66   .��5h   &   �� ��5i   *   `� 5j   .   $ 	Path: {0}��6;   .1�5k   2   �� $ FilePath�6:   5l   /   5n   '   5o   #   �� 5p   "   5q      5r       5t        5u      $ MouseDoubleClick��6)   .	 5v        
 64   �� *" RecentGraphsDoubleClickedCommand+5w      5y      �� 5z      $��
10,0,10,10q�6   $��Bottom=�6-   $��1q�6H   
���   �
������ ��6�   �� *OpenGraphCommand+ 5{      ��%`   '��       �� 5|      " ��6    .�5}      ��  �@��CornerRadius$	 7.5��6=   5~      5      ��5�      �� 5�      $ 
Horizontal=�6%   $��
2, 2, 2, 2q�6>   .+�5�      �� $!��/Resources/file-storage.png��6$   $��40��6I   $��40��6T   �� 5�      $��Open graph...��6(   $��Center=�6=   $��20(�6X   $��10,0,0,0q�6f   5�      5�      5�      5�      5�      5�      