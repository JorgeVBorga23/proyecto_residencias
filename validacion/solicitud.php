<?php
session_start();

include_once("../bd/conexion.php");
$con = $conexion->prepare("select * from Proyecto where ID_Proyecto = :id");
$con->bindParam(":id", $_POST['proyecto']);
$con->execute();
$respuesta = $con->fetch(PDO::FETCH_ASSOC);
$nombreP = $respuesta['nombreProyecto'];
$periodoP = $respuesta['nombrePeriodo'];
$fechainicio = $respuesta['fechaInicio'];
$fechafin = $respuesta['fechaFinal'];
$integrantes = $respuesta['numeroIntegrantes'];
$idAsesor = $respuesta['ID_Asesor'];
//generar PDF con los datos
require('../fpdf185/fpdf.php');

$pdf = new FPDF();
$pdf->AddPage();
//titulo
$pdf->SetFont('times', 'B', 18);
$pdf->Cell(10, 10, "Solicitud de Proyecto de Residencia", 0, 1, '');
$pdf->Ln();
$pdf->SetFont('Arial', '', 12);
$pdf->Cell(1, 15, "Nombre del alumno: ", 0, 1, '');
$pdf->Ln();
$pdf->Cell(1, 20, "Numero de control: ", 0, 1, '');
$pdf->Ln();
$pdf->Cell(1, 25, "Proyecto seleccionado: ", 0, 1, '');
$pdf->Ln();
$pdf->Cell(1, 30, "Asesor del proyecto: ", 0, 1, '');
$pdf->Ln();



$pdf->Output();
