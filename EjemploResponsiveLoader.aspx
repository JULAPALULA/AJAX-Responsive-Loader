<%@ Page Language="VB" AutoEventWireup="false" CodeFile="EjemploResponsiveLoader.aspx.vb" Inherits="EjemploResponsiveLoader" %>

<!DOCTYPE html>
<html>
<head runat="server" enableviewstate="false">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" />
    <title>Prueba Responive Loader</title>
    <meta name="viewport" content="width=device-width, user-scalable=no, maximum-scale=1.0, minimum-scale=1.0" />
</head>
<body>
    <form id="form2" runat="server" class="form ">

        <script type="text/javascript">
            var pcLimit = 1200;
            var tabletLimit = 800; //Puedes desactivar la versión de tablet con -1
            var mobileLimit = 600;
            var resizeListenerEnabled = false;
        </script>
        <script src="./Content/ResponsiveLoader.js" type="text/javascript"></script>

        <div style="margin: 0 10%">
            <!-- Maquetador para PC ======================================================-->
            <div visible="false" class="maquetador" id="PCForm" runat="server">
                <dx:ASPxFormLayout Width="100%" runat="server" ID="Form1" AlignItemCaptions="true" ClientInstanceName="FormLayout">
                    <Items>
                        <dx:LayoutGroup Width="100%" ColumnCount="3" Caption="Datos principales">
                            <Items>
                                <dx:LayoutItem FieldName="imagen" ColSpan="3" ShowCaption="False">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <div style="display: flex; justify-content: center;">
                                                <dx:ASPxBinaryImage Width="200px" Height="200px" runat="server" StoreContentBytesInViewState="True" ID="binImagen" EditingSettings-EmptyValueText="Sin imagen" EmptyImage-Url="../../../Content/Images/Grid/DefUserImage.jpg">
                                                    <EditingSettings Enabled="true">
                                                        <UploadSettings>
                                                            <UploadValidationSettings></UploadValidationSettings>
                                                        </UploadSettings>
                                                    </EditingSettings>
                                                </dx:ASPxBinaryImage>
                                            </div>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem HorizontalAlign="Center" Name="capTitulo" CssClass="registro" CaptionSettings-VerticalAlign="Middle" CaptionStyle-Font-Names="Bahnschrift" FieldName="titulo" Caption='<%$ Resources:eventos.language,RegPonenteTitulo %>' ColSpan="1">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxComboBox runat="server" Font-Names="Bahnschrift" Width="250px" ID="comboTitulo" TextField="titulo">
                                                <ValidationSettings ErrorTextPosition="Bottom"
                                                    ErrorDisplayMode="Text"
                                                    ErrorText="Este campo es obligatorio*"
                                                    CausesValidation="true"
                                                    Display="Dynamic"
                                                    RequiredField-IsRequired="true"
                                                    RequiredField-ErrorText="Este campo es obligatorio*">
                                                </ValidationSettings>
                                            </dx:ASPxComboBox>

                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem HorizontalAlign="Center" Name="capNombre" CssClass="registro" VerticalAlign="Middle" CaptionSettings-VerticalAlign="Middle" CaptionStyle-Font-Names="Bahnschrift" FieldName="nombre" Caption='<%$ Resources:eventos.language,RegPonenteNombre %>' ColSpan="1">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxTextBox runat="server" Font-Names="Bahnschrift" Width="250px" ID="txtNom">
                                                <ValidationSettings ErrorTextPosition="Bottom"
                                                    ErrorDisplayMode="Text"
                                                    ErrorText="Este campo es obligatorio*"
                                                    CausesValidation="true"
                                                    Display="Dynamic"
                                                    RequiredField-IsRequired="true"
                                                    RequiredField-ErrorText="Este campo es obligatorio*">
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem HorizontalAlign="Center" Name="capApellido" CssClass="registro" VerticalAlign="Middle" CaptionSettings-VerticalAlign="Middle" CaptionStyle-Font-Names="Bahnschrift" FieldName="apellidos" Caption='<%$ Resources:eventos.language,RegPonenteApellidos %>' ColSpan="1">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxTextBox runat="server" Font-Names="Bahnschrift" Width="250px" ID="txtApell">
                                                <ValidationSettings ErrorTextPosition="Bottom"
                                                    ErrorDisplayMode="Text"
                                                    ErrorText="Este campo es obligatorio*"
                                                    CausesValidation="true"
                                                    Display="Dynamic"
                                                    RequiredField-IsRequired="true"
                                                    RequiredField-ErrorText="Este campo es obligatorio*">
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem HorizontalAlign="Center" Name="capDNI" CssClass="registro" VerticalAlign="Middle" CaptionSettings-VerticalAlign="Middle" CaptionStyle-Font-Names="Bahnschrift" FieldName="DNI" Caption='<%$ Resources:eventos.language,RegPonenteDNI %>' ColSpan="1">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxTextBox runat="server" Font-Names="Bahnschrift" Width="250px" ID="txtDNI">
                                                <ValidationSettings ErrorTextPosition="Bottom"
                                                    ErrorDisplayMode="Text"
                                                    ErrorText="Este campo es obligatorio*"
                                                    CausesValidation="true"
                                                    Display="Dynamic"
                                                    RequiredField-IsRequired="true"
                                                    RequiredField-ErrorText="Este campo es obligatorio*">
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem HorizontalAlign="Center" Name="capTlf" CssClass="registro" VerticalAlign="Middle" CaptionSettings-VerticalAlign="Middle" CaptionStyle-Font-Names="Bahnschrift" FieldName="telefono" Caption='<%$ Resources:eventos.language,RegPonenteTlf %>' ColSpan="1">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxTextBox runat="server" Font-Names="Bahnschrift" Width="250px" ID="txtTlf">
                                                <ValidationSettings ErrorTextPosition="Bottom"
                                                    ErrorDisplayMode="Text"
                                                    ErrorText="Este campo es obligatorio*"
                                                    CausesValidation="true"
                                                    Display="Dynamic"
                                                    RequiredField-IsRequired="true"
                                                    RequiredField-ErrorText="Este campo es obligatorio*">
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem HorizontalAlign="Center" Name="capEmail" CssClass="registro" VerticalAlign="Middle" CaptionSettings-VerticalAlign="Middle" CaptionStyle-Font-Names="Bahnschrift" FieldName="email" Caption='<%$ Resources:eventos.language,RegPonenteEmail %>' ColSpan="1">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxTextBox runat="server" Font-Names="Bahnschrift" Width="250px" ID="txtEmail">
                                                <ValidationSettings ErrorTextPosition="Bottom"
                                                    ErrorDisplayMode="Text"
                                                    ErrorText="Este campo es obligatorio*"
                                                    CausesValidation="true"
                                                    Display="Dynamic"
                                                    RequiredField-IsRequired="true"
                                                    RequiredField-ErrorText="Este campo es obligatorio*">
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem HorizontalAlign="Center" Name="capEmpresa" CssClass="registro" VerticalAlign="Middle" CaptionSettings-HorizontalAlign="Left" CaptionSettings-VerticalAlign="Middle" CaptionStyle-Font-Names="Bahnschrift" FieldName="empresa" Caption='<%$ Resources:eventos.language,RegPonenteEmpresa %>' CaptionSettings-Location="Left" ColSpan="1">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxTextBox runat="server" Font-Names="Bahnschrift" Width="250px" ID="txtEmpresa">
                                                <ValidationSettings ErrorTextPosition="Bottom"
                                                    ErrorDisplayMode="Text"
                                                    ErrorText="Este campo es obligatorio*"
                                                    CausesValidation="false"
                                                    Display="Dynamic"
                                                    RequiredField-IsRequired="false"
                                                    RequiredField-ErrorText="Este campo es obligatorio*">
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem HorizontalAlign="Center" Name="capCargo" CssClass="registro" VerticalAlign="Middle" CaptionSettings-VerticalAlign="Middle" CaptionStyle-Font-Names="Bahnschrift" FieldName="cargo" Caption='<%$ Resources:eventos.language,RegPonenteCargo %>' ColSpan="1">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxTextBox runat="server" Font-Names="Bahnschrift" Width="250px" ID="txtCargo">
                                                <ValidationSettings ErrorTextPosition="Bottom"
                                                    ErrorDisplayMode="Text"
                                                    ErrorText="Este campo es obligatorio*"
                                                    CausesValidation="false"
                                                    Display="Dynamic"
                                                    RequiredField-IsRequired="false"
                                                    RequiredField-ErrorText="Este campo es obligatorio*">
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem HorizontalAlign="Center" Name="capDireccion" CssClass="registro" VerticalAlign="Middle" CaptionSettings-VerticalAlign="Middle" CaptionStyle-Font-Names="Bahnschrift" FieldName="direccion" Caption='<%$ Resources:eventos.language,RegPonenteDireccion %>' ColSpan="1">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxTextBox runat="server" Font-Names="Bahnschrift" Width="250px" ID="txtDireccion">
                                                <ValidationSettings ErrorTextPosition="Bottom"
                                                    ErrorDisplayMode="Text"
                                                    ErrorText="Este campo es obligatorio*"
                                                    CausesValidation="true"
                                                    Display="Dynamic"
                                                    RequiredField-IsRequired="true"
                                                    RequiredField-ErrorText="Este campo es obligatorio*">
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem HorizontalAlign="Center" Name="capCP" CssClass="registro" VerticalAlign="Middle" CaptionSettings-VerticalAlign="Middle" CaptionStyle-Font-Names="Bahnschrift" FieldName="cp" Caption='CP' ColSpan="1">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxTextBox runat="server" Font-Names="Bahnschrift" Width="250px" ID="txtCp">
                                                <ValidationSettings ErrorTextPosition="Bottom"
                                                    ErrorDisplayMode="Text"
                                                    ErrorText="Este campo es obligatorio*"
                                                    CausesValidation="true"
                                                    Display="Dynamic"
                                                    RequiredField-IsRequired="true"
                                                    RequiredField-ErrorText="Este campo es obligatorio*">
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem HorizontalAlign="Center" Name="capLocalidad" CssClass="registro" VerticalAlign="Middle" CaptionSettings-VerticalAlign="Middle" CaptionStyle-Font-Names="Bahnschrift" FieldName="localidad" Caption='<%$ Resources:eventos.language,RegPonenteLocalidad %>' ColSpan="1">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxTextBox runat="server" Font-Names="Bahnschrift" Width="250px" ID="txtLocalidad">
                                                <ValidationSettings ErrorTextPosition="Bottom"
                                                    ErrorDisplayMode="Text"
                                                    ErrorText="Este campo es obligatorio*"
                                                    CausesValidation="true"
                                                    Display="Dynamic"
                                                    RequiredField-IsRequired="true"
                                                    RequiredField-ErrorText="Este campo es obligatorio*">
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem HorizontalAlign="Center" Name="capProvincia" CssClass="registro" VerticalAlign="Middle" CaptionSettings-VerticalAlign="Middle" CaptionStyle-Font-Names="Bahnschrift" FieldName="provincia" Caption='<%$ Resources:eventos.language,RegPonenteProvincia %>' ColSpan="1">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxTextBox runat="server" Font-Names="Bahnschrift" Width="250px" ID="txtProvincia">
                                                <ValidationSettings ErrorTextPosition="Bottom"
                                                    ErrorDisplayMode="Text"
                                                    ErrorText="Este campo es obligatorio*"
                                                    CausesValidation="true"
                                                    Display="Dynamic"
                                                    RequiredField-IsRequired="true"
                                                    RequiredField-ErrorText="Este campo es obligatorio*">
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem HorizontalAlign="Center" Name="capPais" CssClass="registro" VerticalAlign="Middle" CaptionSettings-VerticalAlign="Middle" CaptionStyle-Font-Names="Bahnschrift" FieldName="pais" Caption='<%$ Resources:eventos.language,RegPonentePais %>' ColSpan="1">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxTextBox runat="server" Font-Names="Bahnschrift" Width="250px" ID="txtPais">
                                                <ValidationSettings ErrorTextPosition="Bottom"
                                                    ErrorDisplayMode="Text"
                                                    ErrorText="Este campo es obligatorio*"
                                                    CausesValidation="true"
                                                    Display="Dynamic"
                                                    RequiredField-IsRequired="true"
                                                    RequiredField-ErrorText="Este campo es obligatorio*">
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>

                            </Items>
                        </dx:LayoutGroup>
                    </Items>
                </dx:ASPxFormLayout>
            </div>
            <!-- Maquetador para Tablet ======================================================-->
            <div visible="true" class="maquetador" id="TabletForm" runat="server">
                <dx:ASPxFormLayout Width="100%" runat="server" ID="ASPxFormLayout1" AlignItemCaptions="true" ClientInstanceName="FormLayout">
                    <Items>
                        <dx:LayoutGroup Width="100%" ColumnCount="2" Caption="Datos principales">
                            <Items>
                                <dx:LayoutItem FieldName="imagen" ColSpan="2" ShowCaption="False">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <div style="display: flex; justify-content: center;">
                                                <dx:ASPxBinaryImage Width="200px" Height="200px" runat="server" StoreContentBytesInViewState="True" ID="ASPxBinaryImage1" EditingSettings-EmptyValueText="Sin imagen" EmptyImage-Url="../../../Content/Images/Grid/DefUserImage.jpg">
                                                    <EditingSettings Enabled="true">
                                                        <UploadSettings>
                                                            <UploadValidationSettings></UploadValidationSettings>
                                                        </UploadSettings>
                                                    </EditingSettings>
                                                </dx:ASPxBinaryImage>
                                            </div>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem HorizontalAlign="Center" Name="capTitulo" CssClass="registro" CaptionSettings-VerticalAlign="Middle" CaptionStyle-Font-Names="Bahnschrift" FieldName="titulo" Caption='<%$ Resources:eventos.language,RegPonenteTitulo %>' ColSpan="1">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxComboBox runat="server" Font-Names="Bahnschrift" Width="250px" ID="ASPxComboBox1" TextField="titulo">
                                                <ValidationSettings ErrorTextPosition="Bottom"
                                                    ErrorDisplayMode="Text"
                                                    ErrorText="Este campo es obligatorio*"
                                                    CausesValidation="true"
                                                    Display="Dynamic"
                                                    RequiredField-IsRequired="true"
                                                    RequiredField-ErrorText="Este campo es obligatorio*">
                                                </ValidationSettings>
                                            </dx:ASPxComboBox>

                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem HorizontalAlign="Center" Name="capNombre" CssClass="registro" VerticalAlign="Middle" CaptionSettings-VerticalAlign="Middle" CaptionStyle-Font-Names="Bahnschrift" FieldName="nombre" Caption='<%$ Resources:eventos.language,RegPonenteNombre %>' ColSpan="1">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxTextBox runat="server" Font-Names="Bahnschrift" Width="250px" ID="ASPxTextBox1">
                                                <ValidationSettings ErrorTextPosition="Bottom"
                                                    ErrorDisplayMode="Text"
                                                    ErrorText="Este campo es obligatorio*"
                                                    CausesValidation="true"
                                                    Display="Dynamic"
                                                    RequiredField-IsRequired="true"
                                                    RequiredField-ErrorText="Este campo es obligatorio*">
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem HorizontalAlign="Center" Name="capApellido" CssClass="registro" VerticalAlign="Middle" CaptionSettings-VerticalAlign="Middle" CaptionStyle-Font-Names="Bahnschrift" FieldName="apellidos" Caption='<%$ Resources:eventos.language,RegPonenteApellidos %>' ColSpan="1">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxTextBox runat="server" Font-Names="Bahnschrift" Width="250px" ID="ASPxTextBox2">
                                                <ValidationSettings ErrorTextPosition="Bottom"
                                                    ErrorDisplayMode="Text"
                                                    ErrorText="Este campo es obligatorio*"
                                                    CausesValidation="true"
                                                    Display="Dynamic"
                                                    RequiredField-IsRequired="true"
                                                    RequiredField-ErrorText="Este campo es obligatorio*">
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem HorizontalAlign="Center" Name="capDNI" CssClass="registro" VerticalAlign="Middle" CaptionSettings-VerticalAlign="Middle" CaptionStyle-Font-Names="Bahnschrift" FieldName="DNI" Caption='<%$ Resources:eventos.language,RegPonenteDNI %>' ColSpan="1">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxTextBox runat="server" Font-Names="Bahnschrift" Width="250px" ID="ASPxTextBox3">
                                                <ValidationSettings ErrorTextPosition="Bottom"
                                                    ErrorDisplayMode="Text"
                                                    ErrorText="Este campo es obligatorio*"
                                                    CausesValidation="true"
                                                    Display="Dynamic"
                                                    RequiredField-IsRequired="true"
                                                    RequiredField-ErrorText="Este campo es obligatorio*">
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem HorizontalAlign="Center" Name="capTlf" CssClass="registro" VerticalAlign="Middle" CaptionSettings-VerticalAlign="Middle" CaptionStyle-Font-Names="Bahnschrift" FieldName="telefono" Caption='<%$ Resources:eventos.language,RegPonenteTlf %>' ColSpan="1">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxTextBox runat="server" Font-Names="Bahnschrift" Width="250px" ID="ASPxTextBox4">
                                                <ValidationSettings ErrorTextPosition="Bottom"
                                                    ErrorDisplayMode="Text"
                                                    ErrorText="Este campo es obligatorio*"
                                                    CausesValidation="true"
                                                    Display="Dynamic"
                                                    RequiredField-IsRequired="true"
                                                    RequiredField-ErrorText="Este campo es obligatorio*">
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem HorizontalAlign="Center" Name="capEmail" CssClass="registro" VerticalAlign="Middle" CaptionSettings-VerticalAlign="Middle" CaptionStyle-Font-Names="Bahnschrift" FieldName="email" Caption='<%$ Resources:eventos.language,RegPonenteEmail %>' ColSpan="1">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxTextBox runat="server" Font-Names="Bahnschrift" Width="250px" ID="ASPxTextBox5">
                                                <ValidationSettings ErrorTextPosition="Bottom"
                                                    ErrorDisplayMode="Text"
                                                    ErrorText="Este campo es obligatorio*"
                                                    CausesValidation="true"
                                                    Display="Dynamic"
                                                    RequiredField-IsRequired="true"
                                                    RequiredField-ErrorText="Este campo es obligatorio*">
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem HorizontalAlign="Center" Name="capEmpresa" CssClass="registro" VerticalAlign="Middle" CaptionSettings-HorizontalAlign="Left" CaptionSettings-VerticalAlign="Middle" CaptionStyle-Font-Names="Bahnschrift" FieldName="empresa" Caption='<%$ Resources:eventos.language,RegPonenteEmpresa %>' CaptionSettings-Location="Left" ColSpan="1">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxTextBox runat="server" Font-Names="Bahnschrift" Width="250px" ID="ASPxTextBox6">
                                                <ValidationSettings ErrorTextPosition="Bottom"
                                                    ErrorDisplayMode="Text"
                                                    ErrorText="Este campo es obligatorio*"
                                                    CausesValidation="false"
                                                    Display="Dynamic"
                                                    RequiredField-IsRequired="false"
                                                    RequiredField-ErrorText="Este campo es obligatorio*">
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem HorizontalAlign="Center" Name="capCargo" CssClass="registro" VerticalAlign="Middle" CaptionSettings-VerticalAlign="Middle" CaptionStyle-Font-Names="Bahnschrift" FieldName="cargo" Caption='<%$ Resources:eventos.language,RegPonenteCargo %>' ColSpan="1">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxTextBox runat="server" Font-Names="Bahnschrift" Width="250px" ID="ASPxTextBox7">
                                                <ValidationSettings ErrorTextPosition="Bottom"
                                                    ErrorDisplayMode="Text"
                                                    ErrorText="Este campo es obligatorio*"
                                                    CausesValidation="false"
                                                    Display="Dynamic"
                                                    RequiredField-IsRequired="false"
                                                    RequiredField-ErrorText="Este campo es obligatorio*">
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem HorizontalAlign="Center" Name="capDireccion" CssClass="registro" VerticalAlign="Middle" CaptionSettings-VerticalAlign="Middle" CaptionStyle-Font-Names="Bahnschrift" FieldName="direccion" Caption='<%$ Resources:eventos.language,RegPonenteDireccion %>' ColSpan="1">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxTextBox runat="server" Font-Names="Bahnschrift" Width="250px" ID="ASPxTextBox8">
                                                <ValidationSettings ErrorTextPosition="Bottom"
                                                    ErrorDisplayMode="Text"
                                                    ErrorText="Este campo es obligatorio*"
                                                    CausesValidation="true"
                                                    Display="Dynamic"
                                                    RequiredField-IsRequired="true"
                                                    RequiredField-ErrorText="Este campo es obligatorio*">
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem HorizontalAlign="Center" Name="capCP" CssClass="registro" VerticalAlign="Middle" CaptionSettings-VerticalAlign="Middle" CaptionStyle-Font-Names="Bahnschrift" FieldName="cp" Caption='CP' ColSpan="1">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxTextBox runat="server" Font-Names="Bahnschrift" Width="250px" ID="ASPxTextBox9">
                                                <ValidationSettings ErrorTextPosition="Bottom"
                                                    ErrorDisplayMode="Text"
                                                    ErrorText="Este campo es obligatorio*"
                                                    CausesValidation="true"
                                                    Display="Dynamic"
                                                    RequiredField-IsRequired="true"
                                                    RequiredField-ErrorText="Este campo es obligatorio*">
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem HorizontalAlign="Center" Name="capLocalidad" CssClass="registro" VerticalAlign="Middle" CaptionSettings-VerticalAlign="Middle" CaptionStyle-Font-Names="Bahnschrift" FieldName="localidad" Caption='<%$ Resources:eventos.language,RegPonenteLocalidad %>' ColSpan="1">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxTextBox runat="server" Font-Names="Bahnschrift" Width="250px" ID="ASPxTextBox10">
                                                <ValidationSettings ErrorTextPosition="Bottom"
                                                    ErrorDisplayMode="Text"
                                                    ErrorText="Este campo es obligatorio*"
                                                    CausesValidation="true"
                                                    Display="Dynamic"
                                                    RequiredField-IsRequired="true"
                                                    RequiredField-ErrorText="Este campo es obligatorio*">
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem HorizontalAlign="Center" Name="capProvincia" CssClass="registro" VerticalAlign="Middle" CaptionSettings-VerticalAlign="Middle" CaptionStyle-Font-Names="Bahnschrift" FieldName="provincia" Caption='<%$ Resources:eventos.language,RegPonenteProvincia %>' ColSpan="1">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxTextBox runat="server" Font-Names="Bahnschrift" Width="250px" ID="ASPxTextBox11">
                                                <ValidationSettings ErrorTextPosition="Bottom"
                                                    ErrorDisplayMode="Text"
                                                    ErrorText="Este campo es obligatorio*"
                                                    CausesValidation="true"
                                                    Display="Dynamic"
                                                    RequiredField-IsRequired="true"
                                                    RequiredField-ErrorText="Este campo es obligatorio*">
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem HorizontalAlign="Center" Name="capPais" CssClass="registro" VerticalAlign="Middle" CaptionSettings-VerticalAlign="Middle" CaptionStyle-Font-Names="Bahnschrift" FieldName="pais" Caption='<%$ Resources:eventos.language,RegPonentePais %>' ColSpan="1">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxTextBox runat="server" Font-Names="Bahnschrift" Width="250px" ID="ASPxTextBox12">
                                                <ValidationSettings ErrorTextPosition="Bottom"
                                                    ErrorDisplayMode="Text"
                                                    ErrorText="Este campo es obligatorio*"
                                                    CausesValidation="true"
                                                    Display="Dynamic"
                                                    RequiredField-IsRequired="true"
                                                    RequiredField-ErrorText="Este campo es obligatorio*">
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>

                            </Items>
                        </dx:LayoutGroup>
                    </Items>
                </dx:ASPxFormLayout>
            </div>
            <!-- Maquetador para móvil ======================================================-->
            <div class="maquetador_mobile" id="FormMobile" runat="server" visible="false">
                <dx:ASPxFormLayout Width="100%" runat="server" ID="ASPxFormLayout2" ClientInstanceName="FormLayout">
                    <Items>
                        <dx:LayoutGroup Width="100%" Caption="Datos principales">

                            <Items>
                                <dx:LayoutItem FieldName="imagen" ShowCaption="False">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <div style="display: flex; justify-content: center;">
                                                <dx:ASPxBinaryImage Width="200px" Height="200px" runat="server" StoreContentBytesInViewState="True" ID="mobileBinaryContent" EditingSettings-EmptyValueText="Sin imagen" EmptyImage-Url="../../../Content/Images/Grid/DefUserImage.jpg">
                                                    <EditingSettings Enabled="true">
                                                        <UploadSettings>
                                                            <UploadValidationSettings NotAllowedFileExtensionErrorText='<%$ Resources:eventos.language,RegPonenteImgExtension %>'></UploadValidationSettings>

                                                        </UploadSettings>
                                                    </EditingSettings>
                                                </dx:ASPxBinaryImage>
                                            </div>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem HorizontalAlign="Center" Name="capTitulo" CssClass="registro" CaptionSettings-VerticalAlign="Top" CaptionSettings-Location="Top" CaptionStyle-Font-Names="Bahnschrift" FieldName="titulo" Caption='<%$ Resources:eventos.language,RegPonenteTitulo %>' ColSpan="1">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxComboBox runat="server" Font-Names="Bahnschrift" Width="250px" ID="mobileTitulo" TextField="titulo">
                                                <ValidationSettings ErrorTextPosition="Bottom"
                                                    ErrorDisplayMode="Text"
                                                    ErrorText="Este campo es obligatorio*"
                                                    CausesValidation="true"
                                                    Display="Dynamic"
                                                    RequiredField-IsRequired="true"
                                                    RequiredField-ErrorText="Este campo es obligatorio*">
                                                </ValidationSettings>
                                            </dx:ASPxComboBox>

                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem HorizontalAlign="Center" Name="capNombre" CssClass="registro" CaptionSettings-VerticalAlign="Top" CaptionSettings-Location="Top" CaptionStyle-Font-Names="Bahnschrift" FieldName="nombre" Caption='<%$ Resources:eventos.language,RegPonenteNombre %>' ColSpan="1">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxTextBox runat="server" Font-Names="Bahnschrift" Width="250px" ID="mobileNombre">
                                                <ValidationSettings ErrorTextPosition="Bottom"
                                                    ErrorDisplayMode="Text"
                                                    ErrorText="Este campo es obligatorio*"
                                                    CausesValidation="true"
                                                    Display="Dynamic"
                                                    RequiredField-IsRequired="true"
                                                    RequiredField-ErrorText="Este campo es obligatorio*">
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem HorizontalAlign="Center" Name="capApellido" CssClass="registro" VerticalAlign="Middle" CaptionSettings-VerticalAlign="Top" CaptionSettings-Location="Top" CaptionStyle-Font-Names="Bahnschrift" FieldName="apellidos" Caption='<%$ Resources:eventos.language,RegPonenteApellidos %>' ColSpan="1">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxTextBox runat="server" Font-Names="Bahnschrift" Width="250px" ID="mobileApellido">
                                                <ValidationSettings ErrorTextPosition="Bottom"
                                                    ErrorDisplayMode="Text"
                                                    ErrorText="Este campo es obligatorio*"
                                                    CausesValidation="true"
                                                    Display="Dynamic"
                                                    RequiredField-IsRequired="true"
                                                    RequiredField-ErrorText="Este campo es obligatorio*">
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem HorizontalAlign="Center" Name="capDNI" CssClass="registro" VerticalAlign="Middle" CaptionSettings-VerticalAlign="Top" CaptionSettings-Location="Top" CaptionStyle-Font-Names="Bahnschrift" FieldName="DNI" Caption='<%$ Resources:eventos.language,RegPonenteDNI %>' ColSpan="1">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxTextBox runat="server" Font-Names="Bahnschrift" Width="250px" ID="mobileDNI">
                                                <ValidationSettings ErrorTextPosition="Bottom"
                                                    ErrorDisplayMode="Text"
                                                    ErrorText="Este campo es obligatorio*"
                                                    CausesValidation="true"
                                                    Display="Dynamic"
                                                    RequiredField-IsRequired="true"
                                                    RequiredField-ErrorText="Este campo es obligatorio*">
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem HorizontalAlign="Center" Name="capTlf" CssClass="registro" VerticalAlign="Middle" CaptionSettings-VerticalAlign="Top" CaptionSettings-Location="Top" CaptionStyle-Font-Names="Bahnschrift" FieldName="telefono" Caption='<%$ Resources:eventos.language,RegPonenteTlf %>' ColSpan="1">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxTextBox runat="server" Font-Names="Bahnschrift" Width="250px" ID="mobileTlf">
                                                <ValidationSettings ErrorTextPosition="Bottom"
                                                    ErrorDisplayMode="Text"
                                                    ErrorText="Este campo es obligatorio*"
                                                    CausesValidation="true"
                                                    Display="Dynamic"
                                                    RequiredField-IsRequired="true"
                                                    RequiredField-ErrorText="Este campo es obligatorio*">
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem HorizontalAlign="Center" Name="capEmail" CssClass="registro" VerticalAlign="Middle" CaptionSettings-VerticalAlign="Top" CaptionSettings-Location="Top" CaptionStyle-Font-Names="Bahnschrift" FieldName="email" Caption='<%$ Resources:eventos.language,RegPonenteEmail %>' ColSpan="1">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxTextBox runat="server" Font-Names="Bahnschrift" Width="250px" ID="mobileEmail">
                                                <ValidationSettings ErrorTextPosition="Bottom"
                                                    ErrorDisplayMode="Text"
                                                    ErrorText="Este campo es obligatorio*"
                                                    CausesValidation="true"
                                                    Display="Dynamic"
                                                    RequiredField-IsRequired="true"
                                                    RequiredField-ErrorText="Este campo es obligatorio*">
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem HorizontalAlign="Center" Name="capEmpresa" CssClass="registro" VerticalAlign="Middle" CaptionSettings-VerticalAlign="Top" CaptionSettings-Location="Top" CaptionStyle-Font-Names="Bahnschrift" FieldName="empresa" Caption='<%$ Resources:eventos.language,RegPonenteEmpresa %>' ColSpan="1">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxTextBox runat="server" Font-Names="Bahnschrift" Width="250px" ID="mobileEmpresa">
                                                <ValidationSettings ErrorTextPosition="Bottom"
                                                    ErrorDisplayMode="Text"
                                                    ErrorText="Este campo es obligatorio*"
                                                    CausesValidation="false"
                                                    Display="Dynamic"
                                                    RequiredField-IsRequired="false"
                                                    RequiredField-ErrorText="Este campo es obligatorio*">
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem HorizontalAlign="Center" Name="capCargo" CssClass="registro" VerticalAlign="Middle" CaptionSettings-VerticalAlign="Top" CaptionSettings-Location="Top" CaptionStyle-Font-Names="Bahnschrift" FieldName="cargo" Caption='<%$ Resources:eventos.language,RegPonenteCargo %>' ColSpan="1">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxTextBox runat="server" Font-Names="Bahnschrift" Width="250px" ID="mobileCargo">
                                                <ValidationSettings ErrorTextPosition="Bottom"
                                                    ErrorDisplayMode="Text"
                                                    ErrorText="Este campo es obligatorio*"
                                                    CausesValidation="false"
                                                    Display="Dynamic"
                                                    RequiredField-IsRequired="false"
                                                    RequiredField-ErrorText="Este campo es obligatorio*">
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem HorizontalAlign="Center" Name="capDireccion" CssClass="registro" VerticalAlign="Middle" CaptionSettings-VerticalAlign="Top" CaptionSettings-Location="Top" CaptionStyle-Font-Names="Bahnschrift" FieldName="direccion" Caption='<%$ Resources:eventos.language,RegPonenteDireccion %>' ColSpan="1">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxTextBox runat="server" Font-Names="Bahnschrift" Width="250px" ID="mobileDireccion">
                                                <ValidationSettings ErrorTextPosition="Bottom"
                                                    ErrorDisplayMode="Text"
                                                    ErrorText="Este campo es obligatorio*"
                                                    CausesValidation="true"
                                                    Display="Dynamic"
                                                    RequiredField-IsRequired="true"
                                                    RequiredField-ErrorText="Este campo es obligatorio*">
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem HorizontalAlign="Center" Name="capCP" CssClass="registro" VerticalAlign="Middle" CaptionSettings-VerticalAlign="Top" CaptionSettings-Location="Top" CaptionStyle-Font-Names="Bahnschrift" FieldName="cp" Caption='<%$ Resources:eventos.language,RegPonenteCodigoPostal %>' ColSpan="1">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxTextBox runat="server" Font-Names="Bahnschrift" Width="250px" ID="mobileCP">
                                                <ValidationSettings ErrorTextPosition="Bottom"
                                                    ErrorDisplayMode="Text"
                                                    ErrorText="Este campo es obligatorio*"
                                                    CausesValidation="true"
                                                    Display="Dynamic"
                                                    RequiredField-IsRequired="true"
                                                    RequiredField-ErrorText="Este campo es obligatorio*">
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem HorizontalAlign="Center" Name="capLocalidad" CssClass="registro" VerticalAlign="Middle" CaptionSettings-VerticalAlign="Top" CaptionSettings-Location="Top" CaptionStyle-Font-Names="Bahnschrift" FieldName="localidad" Caption='<%$ Resources:eventos.language,RegPonenteLocalidad %>' ColSpan="1">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxTextBox runat="server" Font-Names="Bahnschrift" Width="250px" ID="mobileLocalidad">
                                                <ValidationSettings ErrorTextPosition="Bottom"
                                                    ErrorDisplayMode="Text"
                                                    ErrorText="Este campo es obligatorio*"
                                                    CausesValidation="true"
                                                    Display="Dynamic"
                                                    RequiredField-IsRequired="true"
                                                    RequiredField-ErrorText="Este campo es obligatorio*">
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem HorizontalAlign="Center" Name="capProvincia" CssClass="registro" VerticalAlign="Middle" CaptionSettings-VerticalAlign="Top" CaptionSettings-Location="Top" CaptionStyle-Font-Names="Bahnschrift" FieldName="provincia" Caption='<%$ Resources:eventos.language,RegPonenteProvincia %>' ColSpan="1">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxTextBox runat="server" Font-Names="Bahnschrift" Width="250px" ID="mobileProvincia">
                                                <ValidationSettings ErrorTextPosition="Bottom"
                                                    ErrorDisplayMode="Text"
                                                    ErrorText="Este campo es obligatorio*"
                                                    CausesValidation="true"
                                                    Display="Dynamic"
                                                    RequiredField-IsRequired="true"
                                                    RequiredField-ErrorText="Este campo es obligatorio*">
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem HorizontalAlign="Center" Name="capPais" CssClass="registro" VerticalAlign="Middle" CaptionSettings-VerticalAlign="Top" CaptionSettings-Location="Top" CaptionStyle-Font-Names="Bahnschrift" FieldName="pais" Caption='<%$ Resources:eventos.language,RegPonentePais %>' ColSpan="1">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer runat="server">
                                            <dx:ASPxTextBox runat="server" Font-Names="Bahnschrift" Width="250px" ID="mobilePais">
                                                <ValidationSettings ErrorTextPosition="Bottom"
                                                    ErrorDisplayMode="Text"
                                                    ErrorText="Este campo es obligatorio*"
                                                    CausesValidation="true"
                                                    Display="Dynamic"
                                                    RequiredField-IsRequired="true"
                                                    RequiredField-ErrorText="Este campo es obligatorio*">
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                            </Items>
                        </dx:LayoutGroup>
                    </Items>
                </dx:ASPxFormLayout>
            </div>
        </div>
    </form>
</body>
</html>

