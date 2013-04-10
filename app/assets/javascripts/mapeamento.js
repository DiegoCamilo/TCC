$(function() {
	
	//carrega turma ao selecionar um curso ou ao atualizar a pagina com um curso ja selecionado
	carregaDados("turma");
	$("#mapeamento_curso").change(function(){
		carregaDados("turma");
	});
});

function carregaDados(tipoDado) {
	var curso = $("#mapeamento_curso").val();
	var turno = $("#mapeamento_turno").val();
	
	if (curso != "") {
		$.ajax({
			type: "GET",
			url: "carrega_dados.json",
			data: { tipoDado: tipoDado, turno: turno, curso: curso}
			}).success(function(turmas) {
				var options = $("#mapeamento_turma");
				options.empty().append($("<option />"));
				$.each(turmas, function() {
					var textoDisciplina = "Turma: " + this.nome + " - " + this.turno +
					" - " + this.periodo_turma + "º Período";
				    options.append($("<option />").val(this.id).text(textoDisciplina));
				});
		});
	}
}
