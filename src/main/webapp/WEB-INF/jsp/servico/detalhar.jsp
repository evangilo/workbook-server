<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="layout" tagdir="/WEB-INF/tags/layout"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<layout:base>
	<aside id="main" class="col-md-12">
		<img class="img-responsive" src="http://placehold.it/1140x400" alt="">
		<div class="col-md-9">
			<h1>${servico.titulo}</h1>
			<div>${servico.descricao}</div>
		</div>
		<div class="col-md-3">
			<h4>Avaliação</h4>
			<div class="text-lg text-warning">
				<input type="number" id="star-rating" class="rating" data-readonly="true" data-size="xs" value="${servico.media }" data-show-clear="false" data-show-caption="false">
			</div>
			<div>
				<span class="text-lg" title="Total de avaliações">${servico.total} Avaliações</span>
			</div>
			<h4>Categoria</h4>
			<div>${servico.categoria.nome}</div>
			<h4>Contatos</h4>
			<div>
				<b>Telefone:</b> ${servico.telefone}
			</div>
			<div>
				<b>Celular:</b> ${servico.celular}
			</div>
			<p>&nbsp;</p>
		</div>
		<div class="col-md-12">
			<div class="well">
			<c:if test="${podeAvaliar}">
				<div class="text-right">
					<a href="<c:url value='/avaliacao/criar' />?servicoID=${servico.id}" class="btn btn-success">Deixe sua opni&atilde;o</a>
				</div>
			</c:if>
	        <c:choose>
			<c:when test="${!empty avaliacoes}">
			<c:forEach items="${avaliacoes}" var="avaliacao">
				<hr>
				<div class="row">           
						<div class="col-md-12">
							<span class="pull-right"><input type="number" id="star-rating" class="rating" data-readonly="true" data-size="xs" value="${avaliacao.nota }" data-show-clear="false" data-show-caption="false"></span>
			                <b>${avaliacao.usuario.firstName} ${avaliacao.usuario.lastName}</b>
			                <p>${avaliacao.comentario}</p>
			            </div>
		        </div>
	            </c:forEach>
			</c:when>
			<c:otherwise>
				<div>Ainda não foi feito nenhum comentário</div>
			</c:otherwise>
			</c:choose>
        	</div>
		</div>
	</aside>
</layout:base>