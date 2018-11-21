'THIS REPRESENTS PART TWO SUB

Sub Parttwo()

 Dim Ticker As String
 Dim Volume As Double
 Dim Percent_Change As Double
 Dim Yearly_Change As Double

 

 Volume = 0
 
 Dim Summary_Table_Row As Long
 Dim tickercount As Double
 Summary_Table_Row = 2
 
 
 Dim lastrow As Long
 lastrow = Cells(Rows.Count, 1).End(xlUp).Row
 tickercount = 0
 For j = 2 To lastrow
 

 
    If Cells(j + 1, 1).Value <> Cells(j, 1).Value And Cells(j, 7).Value > 0 Then
    
        Ticker = Cells(j, 1).Value
        
        Volume = Volume + Cells(j, 7).Value
        
        Yearly_Change = Cells(j, 6).Value - Cells(j - tickercount, 3).Value
        
        Percent_Change = (Cells(j, 6).Value - Cells(j - tickercount, 3).Value) / (Cells(j - tickercount, 3).Value)
        
        Range("L" & Summary_Table_Row).Value = Ticker
        
        Range("M" & Summary_Table_Row).Value = Yearly_Change
        
        Range("N" & Summary_Table_Row).Value = Percent_Change
        
        Range("O" & Summary_Table_Row).Value = Volume
        
        Summary_Table_Row = Summary_Table_Row + 1
        
        Volume = 0
        tickercount = 0
    
        
    ElseIf Cells(j, 7).Value > 0 Then
        
        Volume = Volume + Cells(j, 7).Value
        
        tickercount = tickercount + 1
        
    End If

Next j


'code for customization of the output column
 Cells(1, 12).Value = "Ticker"
 Cells(1, 13).Value = "Yearly Change"
 Cells(1, 14).Value = "% Change"
 Cells(1, 15).Value = "Total Stock Volume"
 Range("L1:O1").Font.Bold = True
 Range("L1:O1").Interior.Color = RGB(0, 225, 0)
 Range("L1:O1").HorizontalAlignment = xlCenter
 Range("L1:O1").Font.Underline = xlUnderlineStyleSingle

 
 'Autofits the column
 Range("L:O").Columns.AutoFit
 
 
 'borders for the output cells
 Dim lastrow2 As Long
   lastrow2 = Cells(Rows.Count, 12).End(xlUp).Row
   'MsgBox (lastrow2)
   
 'Dim Rng As Double
 'Rng = Range("L2:O" & lastrow2) did not use this, thought about it

Range("L2:O" & lastrow2).Interior.ColorIndex = 15
Range("L2:O" & lastrow2).Borders(xlEdgeBottom).LineStyle = xlContinuous
Range("L2:O" & lastrow2).Borders(xlEdgeBottom).Weight = xlThin
Range("L2:O" & lastrow2).Borders(xlEdgeBottom).ColorIndex = 1
Range("L2:O" & lastrow2).Borders(xlEdgeTop).LineStyle = xlContinuous
Range("L2:O" & lastrow2).Borders(xlEdgeTop).Weight = xlThin
Range("L2:O" & lastrow2).Borders(xlEdgeTop).ColorIndex = 1
Range("L2:O" & lastrow2).Borders(xlEdgeLeft).LineStyle = xlContinuous
Range("L2:O" & lastrow2).Borders(xlEdgeLeft).Weight = xlThin
Range("L2:O" & lastrow2).Borders(xlEdgeLeft).ColorIndex = 1
Range("L2:O" & lastrow2).Borders(xlEdgeRight).LineStyle = xlContinuous
Range("L2:O" & lastrow2).Borders(xlEdgeRight).Weight = xlThin
Range("L2:O" & lastrow2).Borders(xlEdgeRight).ColorIndex = 1
Range("L2:O" & lastrow2).Borders(xlEdgeBottom).LineStyle = xlContinuous
Range("L2:O" & lastrow2).Borders(xlEdgeBottom).Weight = xlThin
Range("L2:O" & lastrow2).Borders(xlEdgeBottom).ColorIndex = 1
Range("N:N").NumberFormat = "0.0000%"
Range("L21:O21").Borders(xlEdgeBottom).LineStyle = xlNone

For x = 2 To lastrow2

    If Cells(x, 14).Value > 0 Then
            
    Cells(x, 14).Interior.Color = RGB(0, 225, 0)
            
Else
            
    Cells(x, 14).Interior.Color = RGB(225, 0, 0)
            
End If
            
Next x

End Sub
        

  


