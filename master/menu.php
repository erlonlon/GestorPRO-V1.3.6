<div class="slim-body">
      <div class="slim-sidebar">
        <label class="sidebar-label">MENU</label>
		<?php $urlk = $_SERVER["REQUEST_URI"];?>
        <ul class="nav nav-sidebar">
          <li class="sidebar-nav-item">
            <a href="./" class="sidebar-nav-link <?php if(basename($urlk) == "master") { echo "active"; } ?>"><i class="icon ion-ios-home-outline"></i> Home</a>
          </li>
		  
		   <li class="sidebar-nav-item">
            <a href="categorias" class="sidebar-nav-link <?php if(basename($urlk) == "categorias" OR basename($urlk) == "cad_categoria" OR basename($urlk) == "edit_categoria") { echo "active"; } ?>"><i class="fa fa-sitemap mg-r-10" style="font-size:16px"></i>Grupo/Categoria</a>
          </li>
		  
		  <li class="sidebar-nav-item">
            <a href="clientes" class="sidebar-nav-link <?php if(basename($urlk) == "clientes" OR basename($urlk) == "ver_cliente" OR basename($urlk) == "cad_cliente" OR basename($urlk) == "edit_cliente") { echo "active"; } ?>"><i class="fa fa-users mg-r-10" style="font-size:16px"></i>Clientes</a>
          </li>
		  
          <li class="sidebar-nav-item">
            <a href="contas_receber" class="sidebar-nav-link <?php if(basename($urlk) == "cad_contas" OR basename($urlk) == "contas_receber" OR basename($urlk) == "editar_mensalidade" OR basename($urlk) == "cad_contas_simulador" OR basename($urlk) == "ver_financeiro") { echo "active"; } ?>"><i class="fa fa-money mg-r-10" style="font-size:16px"></i> Contas a Receber</a>
          </li>
		  
		  <li class="sidebar-nav-item">
            <a href="contas_pagar" class="sidebar-nav-link <?php if(basename($urlk) == "contas_pagar" OR basename($urlk) == "cad_pagar" OR basename($urlk) == "editar_pagamento" OR basename($urlk) == "cad_pagar_simulador") { echo "active"; } ?>"><i class="fa fa-random mg-r-10" style="font-size:16px"></i> Contas a Pagar</a>
          </li>
		  
		  <li class="sidebar-nav-item">
            <a href="finalizados" class="sidebar-nav-link <?php if(basename($urlk) == "finalizados" OR basename($urlk) == "ver_financeiro_quitado") { echo "active"; } ?>"><i class="fa fa-thumbs-up mg-r-10" style="font-size:16px"></i> Extrato de Pagamento</a>
          </li>
		  
		  <li class="sidebar-nav-item">
            <a href="mensagens" class="sidebar-nav-link <?php if(basename($urlk) == "mensagens" OR basename($urlk) == "edit_mensagens") { echo "active"; } ?>"><i class="fa fa-user mg-r-10" style="font-size:16px"></i> Notificações</a>
          </li><?php if($dadosgerais->tipo == 1) {?>
		  <li class="sidebar-nav-item">
            <a href="usuarios" class="sidebar-nav-link <?php if(basename($urlk) == "usuarios" OR basename($urlk) == "cad_usuario" OR basename($urlk) == "edit_usuario" OR basename($urlk) == "painel_usuario") { echo "active"; } ?>"><i class="fa fa-user-plus mg-r-10" style="font-size:16px"></i> Usuários SAAS</a>
          </li><?php } ?>
          <li class="sidebar-nav-item">
            <a href="perfil" class="sidebar-nav-link <?php if(basename($urlk) == "perfil") { echo "active"; } ?>"><i class="fa fa-user-circle-o mg-r-10" style="font-size:16px"></i> Meu Perfil</a>
          </li>
		  <li class="sidebar-nav-item">
            <a href="configuracoes" class="sidebar-nav-link <?php if(basename($urlk) == "configuracoes") { echo "active"; } ?>"><i class="fa fa-check-circle mg-r-10" style="font-size:16px"></i> Configurações</a>
          </li>
		  <li class="sidebar-nav-item">
            <a href="whatsapp" class="sidebar-nav-link <?php if(basename($urlk) == "whatsapp") { echo "active"; } ?>"><i class="fa fa-whatsapp mg-r-10" style="font-size:16px"></i> Configurar WhatsAPP</a>
          </li>
		   <li class="sidebar-nav-item">
            <a href="mercadopago" class="sidebar-nav-link <?php if(basename($urlk) == "mercadopago") { echo "active"; } ?>"><i class="fa fa-credit-card-alt mg-r-10" style="font-size:16px"></i> Configurar MercadoPago</a>
          </li>
          <li class="sidebar-nav-item">
            <a href="sair" class="sidebar-nav-link <?php if(basename($urlk) == "sair") { echo "active"; } ?>"><i class="fa fa-sign-out mg-r-10" style="font-size:16px"></i> Sair</a>
          </li>
        </ul>
      </div>