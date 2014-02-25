
Partial Class _default
    Inherits System.Web.UI.Page

    Protected Sub submitBTN_Click(sender As Object, e As EventArgs) Handles submitBTN.Click
        ' Declare variables for all entered amounts, tax rate, and gross pay
        Dim hourlyWage As Double = Val(wageTB.Text)
        Dim weeklyHours As Double = Val(hoursTB.Text)
        Dim preDeductions As Double = Val(preTB.Text)
        Dim afterDeductions As Double = Val(afterTB.Text)
        Dim taxRate As Double
        Dim grossPay As Double = (hourlyWage * weeklyHours)

        'if Gross < $500 set rate = 18%, otherwise set rate = 22%
        If grossPay < 500 Then
            taxRate = 0.18
        Else
            taxRate = 0.22
        End If

        'declare netPay variable, subtract pre-tax deductions, take taxes, then subtract after-tax deductions
        Dim netPay As Double = ((grossPay - preDeductions) * (1 - taxRate)) - afterDeductions

        netPayLBL.Text = String.Format("{0:C}", netPay)
    End Sub


    Protected Sub clearBTN_Click(sender As Object, e As EventArgs) Handles clearBTN.Click
        ' Clear all TextBoxes and Label
        wageTB.Text = String.Empty
        hoursTB.Text = String.Empty
        preTB.Text = String.Empty
        afterTB.Text = String.Empty
        netPayLBL.Text = String.Empty
    End Sub

    Protected Sub preTB_TextChanged(sender As Object, e As EventArgs) Handles preTB.TextChanged

    End Sub
End Class
