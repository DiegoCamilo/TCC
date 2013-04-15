$(function() {
	
	//carrega turma ao selecionar um curso ou ao atualizar a pagina com um curso ja selecionado
	carregaDados("turma");
	$("#mapeamento_curso_id").change(function(){
		carregaDados("turma");
	});
	
	$("#mapeamento_turma_id").change(function(){
		carregaDados("disciplina");
		$("#field_disciplina").show("slow");
	});
	
});

function carregaDados(tipoDado) {
	
	if (tipoDado == "turma") {
		var curso = $("#mapeamento_curso_id").val();
		var turno = $("#mapeamento_turno").val();
		
		if (curso != "") {
			$.ajax({
				type: "GET",
				url: "carrega_dados.json",
				data: { tipoDado: tipoDado, turno: turno, curso: curso}
				}).success(function(turmas) {
					var options = $("#mapeamento_turma_id");
					options.empty().append($("<option />"));
					$.each(turmas, function() {
						var textoDisciplina = "Turma: " + this.nome + " - " + this.turno +
						" - " + this.periodo_turma + "º Período";
					    options.append($("<option />").val(this.id).text(textoDisciplina));
					});
			});
		}
	}
	
	if (tipoDado == "disciplina") {
		var turma = $("#mapeamento_turma_id").val();
		
		if (turma != "") {
			$.ajax({
				type: "GET",
				url: "carrega_dados.json",
				data: { tipoDado: tipoDado, turma: turma }
				}).success(function(disciplinas) {
					var divDisciplina = $("#field_disciplina");
					divDisciplina.empty();
					$.each(disciplinas, function() {
					    divDisciplina.append($("<div>" + this.nome + "</div>"));
					});
			});
		}
	}
}
