   M S B A M L   `   `   `  ����U  QAlgorithmVisualizationTool, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:AlgorithmVisualizationToolAlgorithmVisualizationTool  5   	   [2clr-namespace:AlgorithmVisualizationTool.ViewModel$AlgorithmVisualizationTool.ViewModel  5   	   ]3clr-namespace:AlgorithmVisualizationTool.Model.MVVM%AlgorithmVisualizationTool.Model.MVVM  5   	   A    ;AlgorithmVisualizationTool.AlgorithmVisualizationToolWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   :local(clr-namespace:AlgorithmVisualizationTool     5   	   H	viewmodel2clr-namespace:AlgorithmVisualizationTool.ViewModel     5   	   I	modelmvvm3clr-namespace:AlgorithmVisualizationTool.Model.MVVM     5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5	   	   -   5        $	��750��5   !   $
��1000��6.     � Title  6	   �� *Title+.  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ Closing��6   .  (System.Windows.Interactivity.TriggerBase   Actions. 5      6  0System.Windows.Interactivity.InvokeCommandAction     Command 6$   �� *KeyExitCommand+5       � DataContext 5      G  AAlgorithmVisualizationTool.ViewModel.AlgorithmVisualizationToolVM  5   
    J� InputBindings 5      �� 5   
   
 �� Key$ F4��6    �� 	Modifiers$	 Altf�6   	 �� Command	 6.   �� *KeyExitCommand+�� 5   
   $ O��6   $
 Ctrlf�6   	 6.   �� *KeyOpenCommand+�� 5   
   $ S��6   $
 Ctrlf�6   	 6.   �� *KeySaveCommand+�� 5   
   $ N��6   $
 Ctrlf�6   	 6.   �� *KeyNewCommand+�� 5   
   $ C��6   $
 Ctrlf�6   	 6.   �� *KeyCopyCommand+�� 5   
   $ V��6   $
 Ctrlf�6   	 6.   �� *KeyPasteCommand+�� 5   
   $ Z��6   $
 Ctrlf�6   	 6.   �� *KeyUndoCommand+�� 5    
   $ Y��6   $
 Ctrlf�6   	 6.   �� *KeyRedoCommand+�� 5!   
   $ I��6   $
 Ctrlf�6   	 6.   �� *KeyInfoCommand+.��5$      � .+�5%   
   �� ��6   �� *ShowingView+5&      5'      