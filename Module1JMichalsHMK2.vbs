'THIS REPRESENTS THE LOOP THROUGH ALL DATA AS WELL AS PART ONE SUB, START ON TAB YEAR 2014

Sub loop_workbooks_for_loop()

Dim i As Integer
Dim ws_num As Integer

Dim starting_ws As Worksheet
Set starting_ws = ActiveSheet
ws_num = ThisWorkbook.Worksheets.Count

For i = 1 To ws_num

    ThisWorkbook.Worksheets(i).Activate
    
    Call Partone
    Call Parttwo
    Call Partthree
    
    ThisWorkbook.Worksheets(i).Cells(1, 1) = 1
    
Next

starting_ws.Activate


End Sub



 Sub Partone()
 
 Dim Ticker As String
 Dim Volume As Double
 
    Volume = 0
 
 Dim Summary_Table_Row As Long
 
 Summary_Table_Row = 2
 
 Dim lastrow As Long
    lastrow = Cells(Rows.Count, 1).End(xlUp).Row
    'MsgBox (lastrow)

 
 For i = 2 To lastrow
 
    If Cells(i + 1, 1).Value <> Cells(i, 1).Value And Cells(i, 7).Value > 0 Then
    
        Ticker = Cells(i, 1).Value
        
        Volume = Volume + Cells(i, 7).Value
        
        Range("J" & Summary_Table_Row).Value = Ticker
        
        Range("K" & Summary_Table_Row).Value = Volume
        
        Summary_Table_Row = Summary_Table_Row + 1
        
        Volume = 0
        
    ElseIf Cells(i, 7).Value > 0 Then
        
        Volume = Volume + Cells(i, 7).Value
        
    End If

Next i



 Dim lastrow2 As Long
 
   lastrow2 = Cells(Rows.Count, 10).End(xlUp).Row
   'MsgBox (lastrow2)
   
Range("J2:K" & lastrow2).Interior.ColorIndex = 15
Range("J2:K" & lastrow2).Borders(xlEdgeTop).LineStyle = xlContinuous
Range("J2:K" & lastrow2).Borders(xlEdgeTop).Weight = xlThin
Range("J2:K" & lastrow2).Borders(xlEdgeTop).ColorIndex = 1
Range("J2:K" & lastrow2).Borders(xlEdgeLeft).LineStyle = xlContinuous
Range("J2:K" & lastrow2).Borders(xlEdgeLeft).Weight = xlThin
Range("J2:K" & lastrow2).Borders(xlEdgeLeft).ColorIndex = 1
Range("J2:K" & lastrow2).Borders(xlEdgeRight).LineStyle = xlContinuous
Range("J2:K" & lastrow2).Borders(xlEdgeRight).Weight = xlThin
Range("J2:K" & lastrow2).Borders(xlEdgeRight).ColorIndex = 1
Range("J2:K" & lastrow2).Borders(xlEdgeBottom).LineStyle = xlContinuous
Range("J2:K" & lastrow2).Borders(xlEdgeBottom).Weight = xlThin
Range("J2:K" & lastrow2).Borders(xlEdgeBottom).ColorIndex = 1
Range("J21:K21").Borders(xlEdgeBottom).LineStyle = xlNone


 'code for customization of the output column
 Cells(1, 10).Value = "Ticker"
 Cells(1, 11).Value = "Total Stock Volume"
 Range("J1:K1").Font.Bold = True
 Range("J1:K1").Interior.Color = RGB(0, 225, 0)
 Range("J1:K1").HorizontalAlignment = xlCenter
 Range("J1:K1").Font.Underline = xlUnderlineStyleSingle
 
 'Autofits the column
 Range("J:K").Columns.AutoFit


End Sub


'THIS IS THE LOOP THAT RESETS ALL CELLS, THE LOOP SUB FOLLOWED BY THE CLEAR SUB ITSELF
        
Sub loop_workbooks_for_loop2()

Dim i As Integer
Dim ws_num As Integer

Dim starting_ws As Worksheet
Set starting_ws = ActiveSheet
ws_num = ThisWorkbook.Worksheets.Count

For i = 1 To ws_num

    ThisWorkbook.Worksheets(i).Activate
    
    Call reset
    
    ThisWorkbook.Worksheets(i).Cells(1, 1) = 1
    
Next

starting_ws.Activate


End Sub

Sub reset()
   
Dim lastrow3 As Long
Dim lastrow4 As Long

   
    lastrow3 = Cells(Rows.Count, 10).End(xlUp).Row
    'MsgBox (lastrow3)
    
    lastrow4 = Cells(Rows.Count, 16).End(xlUp).Row
    'MsgBox (lastrow4)
    
    
Range("J1:O" & lastrow3).ClearContents
Range("J1:O" & lastrow3).Interior.ColorIndex = xlNone
Range("J1:O" & lastrow3).Borders(xlEdgeTop).LineStyle = xlNone
Range("J1:O" & lastrow3).Borders(xlEdgeLeft).LineStyle = xlNone
Range("J1:O" & lastrow3).Borders(xlEdgeRight).LineStyle = xlNone
Range("J1:O" & lastrow3).Borders(xlInsideHorizontal).LineStyle = xlNone
Range("J1:O" & lastrow3).Borders(xlEdgeBottom).LineStyle = xlNone
Range("J2:O" & lastrow3).Borders(xlInsideVertical).LineStyle = xlNone
Range("J2:O" & lastrow3).Borders(xlDiagonalDown).LineStyle = xlNone
Range("J2:O" & lastrow3).Borders(xlDiagonalUp).LineStyle = xlNone
Range("J21:O21").Borders(xlEdgeBottom).LineStyle = xlNone
  
Range("P1:R" & lastrow4).ClearContents
Range("P1:R" & lastrow4).Interior.ColorIndex = xlNone
Range("P1:R" & lastrow4).Borders(xlEdgeTop).LineStyle = xlNone
Range("P1:R" & lastrow4).Borders(xlEdgeLeft).LineStyle = xlNone
Range("P1:R" & lastrow4).Borders(xlEdgeRight).LineStyle = xlNone
Range("P1:R" & lastrow4).Borders(xlInsideHorizontal).LineStyle = xlNone
Range("P1:R" & lastrow4).Borders(xlEdgeBottom).LineStyle = xlNone
Range("P1:R" & lastrow4).Borders(xlInsideVertical).LineStyle = xlNone
Range("P1:R" & lastrow4).Borders(xlDiagonalDown).LineStyle = xlNone
Range("P1:R" & lastrow4).Borders(xlDiagonalUp).LineStyle = xlNone


End Sub
  
  
  

   

