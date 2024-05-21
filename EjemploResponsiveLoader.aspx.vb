
Partial Class EjemploResponsiveLoader
    Inherits System.Web.UI.Page
#Region "Métodos de la página"
    '--- Init
    Private Sub Page_Init(sender As Object, e As EventArgs) Handles Me.Init
        ' Cambio de formularios
        CambiarFormularios()
    End Sub
#End Region

#Region "ResponsiveLoader"
    Public Enum ViewType
        PC = 0
        Tablet = 1
        Mobile = 2
    End Enum

    '=======================================================================
    ' Métodos AJAX WEB, para saber si es versión móvil o pc (se llama desde el aspx)
    '=======================================================================

    <System.Web.Services.WebMethod()>
    Public Shared Sub OnResizePC() 'Si no es Public Shared Sub, no funciona.

        HttpContext.Current.Session("ViewType") = ViewType.PC
    End Sub


    <System.Web.Services.WebMethod()>
    Public Shared Sub OnResizeMobile() 'Si no es Public Shared Sub, no funciona.

        HttpContext.Current.Session("ViewType") = ViewType.Mobile
    End Sub

    <System.Web.Services.WebMethod()>
    Public Shared Sub OnResizeTablet() 'Si no es Public Shared Sub, no funciona.

        HttpContext.Current.Session("ViewType") = ViewType.Tablet
    End Sub

    '--- Cambiar formularios
    Private Sub CambiarFormularios() ' Cambia esta función a tu gusto, dependiendo de cuantos divs tengas

        Select Case Session("ViewType")
            Case ViewType.Mobile 'Para móvil
                FormMobile.Visible = True
                PCForm.Visible = False
                TabletForm.Visible = False
            Case ViewType.Tablet 'Para tablet
                FormMobile.Visible = False
                PCForm.Visible = False
                TabletForm.Visible = True
            Case ViewType.PC 'Para PC
                FormMobile.Visible = False
                PCForm.Visible = True
                TabletForm.Visible = False
        End Select
    End Sub
#End Region
End Class
