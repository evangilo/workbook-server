# -*- coding: utf-8 -*-
from servicos.models import Servico
from django.shortcuts import render
from django.forms.models import modelform_factory
from django.shortcuts import render_to_response
from django.template import RequestContext
from django.http import HttpResponseRedirect

def Descricao_servico(request):
	servico = Servico.objects.all()
	return render_to_response('servico/Descricao_servico.html', {'itens': servico})
