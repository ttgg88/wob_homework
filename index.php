<?php
	session_start();
	require_once('functions.php');
	
	ini_set('display_startup_errors',1);
	ini_set('display_errors',1);
	error_reporting(-1);
	/*error_reporting(0);*/
	
?>	
<head>
	<link type="text/css" href="design/index.css" rel="stylesheet" />
	<meta charset="utf-8">
	<title>Homework</title>
</head>

<div class="header">
	<div class="car">
		<img class="car_img" src="design/car.png">
		<div class="subt">
			xy<br>
			autokereskedés
		</div>
		<div class="wheel1">
			<img class="wheel1_img" src="design/wheel1.png">
		</div>
		<div class="wheel2">
			<img class="wheel2_img" src="design/wheel2.png">
		</div>
	</div>
	<div class="nav">
		<?php
			if ((isset($_SESSION['loggedin']))&&($_SESSION['loggedin']==1)){
				?>
					<a href="index.php?logout=1">
						<div class="lgout">
							kijelentkezés
						</div>
					</a>
					<a href="index.php?newcar=1">
						<div class="ujauto">
							új autó felvitele az adatbázisba
						</div>
					</a>	
				<?php
			} else {
				?>
					<div>
						<form method="POST">
							e-mail: <input type="text" name="email"> jelszó: <input type="password" name="psw"> <input type="submit" name="sbmtlgn" value="bejelentkezés">
						</form>
					</div>
				<?php
			}
		?>
	</div>
</div>
<div class="inner" id="inner">
	<div class="left<?php if((isset($_GET['newcar']))&&($_GET['newcar']==1)){print '_inakt';} ?>">
		<form method="POST" class="szuroform">
		<h2>szűrők:</h2>
			márka: <br>
			<?php
				if (isset($_SESSION['szuro']['marka'])){
					$akt=$_SESSION['szuro']['marka'];
					$szulo=$akt;
				} else {$akt='';$szulo=$akt;}
				select('marka_szuro','mindegy','brand','',$akt,1);
			?><br>
			modell: <br>
			<?php
				if (isset($_SESSION['szuro']['modell'])){
					$akt=$_SESSION['szuro']['modell'];
				} else {$akt='';}
				select('modell_szuro','mindegy','modell',$szulo,$akt,1);
			?><br>
			típus jel: <br>
			<?php
				if (isset($_SESSION['szuro']['tipusjel'])){
					$akt=$_SESSION['szuro']['tipusjel'];
				} else {$akt='';}
				inputtext('tipusjel_szuro',$akt);
			?>
			<br>
			kivitel: <br>
			<?php
				if (isset($_SESSION['szuro']['kivitel'])){
					$akt=$_SESSION['szuro']['kivitel'];
				} else {$akt='';}
				select('kivitel_szuro','mindegy','kivitel','',$akt,1);
			?><br>
			évjárat:<br>
			<?php
				if (isset($_SESSION['szuro']['evjarat_min'])){
					$akt=$_SESSION['szuro']['evjarat_min'];
				} else {$akt='';}
				select_nums('evjarat_szuro_min','min',date('Y'),1900,$akt,1);
			?><br>
			<?php
				if (isset($_SESSION['szuro']['evjarat_max'])){
					$akt=$_SESSION['szuro']['evjarat_max'];
				} else {$akt='';}
				select_nums('evjarat_szuro_max','max',date('Y'),1900,$akt,1);
			?><br>
			vételár: <br>
			<?php
				print '<font class="minmaxsub"> minimum:</font><br>';
				if (isset($_SESSION['szuro']['vetelar_min'])){
					$akt=$_SESSION['szuro']['vetelar_min'];
				} else {$akt='';}
				inputtext('vetelar_szuro_min',$akt);
				print '<br><font class="minmaxsub">maximum:</font><br>';
				if (isset($_SESSION['szuro']['vetelar_max'])){
					$akt=$_SESSION['szuro']['vetelar_max'];
				} else {$akt='';}
				inputtext('vetelar_szuro_max',$akt);
			?>
			<br>
			kilométeróra állás:<br>
			<?php
				if (isset($_SESSION['szuro']['kmoraallas_min'])){
					$akt=$_SESSION['szuro']['kmoraallas_min'];
				} else {$akt='';}
				print '<font class="minmaxsub"> minimum:</font><br>';
				inputtext('kmoraallas_szuro_min',$akt);
				print '<br><font class="minmaxsub">maximum:</font><br>';
				if (isset($_SESSION['szuro']['kmoraallas_max'])){
					$akt=$_SESSION['szuro']['kmoraallas_max'];
				} else {$akt='';}
				inputtext('kmoraallas_szuro_max',$akt);
			?>
			<br>
			üzemanyag: <br>
			<?php
				if (isset($_SESSION['szuro']['uzemanyag'])){
					$akt=$_SESSION['szuro']['uzemanyag'];
				} else {$akt='';}
				select('uzemanyag_szuro','mindegy','fuel','',$akt,1);
			?>
			<br>
			állapot: <br>
			<?php
				if (isset($_SESSION['szuro']['allapot'])){
					$akt=$_SESSION['szuro']['allapot'];
				} else {$akt='';}
				select('allapot_szuro','mindegy','condtn','',$akt,1);
			?>
			<br>
			hengerűrtartalom: <br>
			<?php
				print '<font class="minmaxsub"> minimum:</font><br>';
				if (isset($_SESSION['szuro']['cm3_min'])){
					$akt=$_SESSION['szuro']['cm3_min'];
				} else {$akt='';}
				inputtext('cm3_szuro_min',$akt);
				print '<br><font class="minmaxsub">maximum:</font><br>';
				if (isset($_SESSION['szuro']['cm3_max'])){
					$akt=$_SESSION['szuro']['cm3_max'];
				} else {$akt='';}
				inputtext('cm3_szuro_max',$akt);
			?>
			<br>
			ajtók: <br>
			<?php
				if (isset($_SESSION['szuro']['ajtok'])){
					$akt=$_SESSION['szuro']['ajtok'];
				} else {$akt='';}
				select_nums('ajtok_szuro','mindegy',1,5,$akt,1);
			?>
			<br>
			ülések: <br>
			<?php
				if (isset($_SESSION['szuro']['ulesek'])){
					$akt=$_SESSION['szuro']['ulesek'];
				} else {$akt='';}
				select_nums('ulesek_szuro','mindegy',1,9,$akt,1);
			?>
			<br>
			szín: <br>
			<?php
				if (isset($_SESSION['szuro']['szin'])){
					$akt=$_SESSION['szuro']['szin'];
				} else {$akt='';}
				select('szin_szuro','mindegy','colors','',$akt,1);
			?>
			<br>
			<br>
			<input type="submit" value="szűrés">
			<br>
			<br>
			<input type="submit" value="szűrők törlése" name="szurokdel">
		</form>
	</div>
	<div class="right" id="right">
		<?php
			if ((isset($_GET['newcar']))&&($_GET['newcar']==1)){
				if ($_SESSION['loggedin']!=1){load('index.php'); exit;}
				/*-----------------------------------------------------új autó felvitele az adatbázisba----------*/
				?>
					<div class="ujautourlap">
						<a href="index.php">
							<input class="ujautoback" value="<< mégsem akarok új autót felvinni az adatbázisba" type="submit">
						</a>
						<form method="POST" class="ncform">
							<table class="nc_table">
								<tr>
									<td>márka:</td>
									<td>
										<?php
											if (isset($_SESSION['nc']['marka'])){
												$sz=$_SESSION['nc']['marka'];
											} else {$sz='';}
											select('marka','válassz','brand','',$sz,1);
										?>
									</td>
								</tr>
								<tr>
									<td>modell:</td>
									<td>
										<?php
											if (isset($_SESSION['nc']['marka'])){
												$sz=$_SESSION['nc']['marka'];
											} else {$sz='';}
											if (isset($_SESSION['nc']['modell'])){
												$akt=$_SESSION['nc']['modell'];
											} else {$akt='';}
											select('modell','válassz','modell',$sz,$akt,0);
										?>
									</td>
								</tr>
								<tr>
									<td>típus jel:</td>
									<td>
										<?php
											if (isset($_SESSION['nc']['typesign'])){
												$akt=$_SESSION['nc']['typesign'];
											} else {$akt='';}
											inputtext('typesign',$akt);
										?>
									</td>
								</tr>
								<tr>
									<td>
										kivitel:
									</td>
									<td>
										<?php
											if (isset($_SESSION['nc']['kivitel'])){
												$akt=$_SESSION['nc']['kivitel'];
											} else {$akt='';}
											select('kivitel','válassz','kivitel','',$akt,0);
										?>
									</td>
								</tr>
								<tr>
									<td>évjárat:</td>
									<td>
										<?php
											if (isset($_SESSION['nc']['evjarat'])){
												$akt=$_SESSION['nc']['evjarat'];
											} else {$akt='';}
											select_nums('evjarat','válassz',date('Y'),1900,$akt,0);
										?>
									</td>
								</tr>
								<tr>
									<td>vételár:</td>
									<td>
										<?php
											if (isset($_SESSION['nc']['vetelar'])){
												$akt=$_SESSION['nc']['vetelar'];
											} else {$akt='';}
											inputtext('vetelar',$akt);
										?>Huf
									</td>
								</tr>
								<tr>
									<td>kilóméteróra állása:</td>
									<td>
										<?php
											if (isset($_SESSION['nc']['kmora'])){
												$akt=$_SESSION['nc']['kmora'];
											} else {$akt='';}
											inputtext('kmora',$akt);
										?>Km
									</td>
								</tr>
								<tr>
									<td>üzemanyag:</td>
									<td>
										<?php
											if (isset($_SESSION['nc']['fuel'])){
												$akt=$_SESSION['nc']['fuel'];
											} else {$akt='';}
											select('fuel','válassz','fuel','',$akt,0);
										?>
									</td>
								</tr>
								<tr>
									<td>állapot:</td>
									<td>
										<?php
											if (isset($_SESSION['nc']['condition'])){
												$akt=$_SESSION['nc']['condition'];
											} else {$akt='';}
											select('condition','válassz','condtn','',$akt,0);
										?>
									</td>
								</tr>
								<tr>
									<td>ajtók száma:</td>
									<td>
										<?php
											if (isset($_SESSION['nc']['ajtok'])){
												$akt=$_SESSION['nc']['ajtok'];
											} else {$akt='';}
											select_nums('ajtok','válassz',0,5,$akt,0);
										?>
									</td>
								</tr>
								<tr>
									<td>hengerűrtartalom:</td>
									<td>
										<?php
											if (isset($_SESSION['nc']['cm3'])){
												$akt=$_SESSION['nc']['cm3'];
											} else {$akt='';}
											inputtext('cm3',$akt);
										?>cm<sup>3</sup>
									</td>
								</tr>
								<tr>
									<td>ülések száma:</td>
									<td>
										<?php
											if (isset($_SESSION['nc']['ulesek'])){
												$akt=$_SESSION['nc']['ulesek'];
											} else {$akt='';}
											select_nums('ulesek','válassz',0,9,$akt,0);
										?>
									</td>
								</tr>
								<tr>
									<td>szín:</td>
									<td>
										<?php
											if (isset($_SESSION['nc']['color'])){
												$akt=$_SESSION['nc']['color'];
											} else {$akt='';}
											select('color','válassz','colors','',$akt,0);
										?>
									</td>
								</tr>
							</table>
							<textarea name="about" class="nc_leiras"><?php
								if (isset($_SESSION['nc']['about'])){
									print $_SESSION['nc']['about'];
								} else { print 'leírás az autóról:';}
							?></textarea>
							<center>
								<br><input type="submit" name="sbmtnc" value="kész">
							</center>
						</form>
					</div>
				<?php
			} else {
				if (isset($_SESSION['nc'])){unset($_SESSION['nc']);}
				/*-----------------------------------------------------autók listázása az adatbázisból----------*/
				?>
					<div class="cars">
						<div>
							
						</div>
						<?php
							$command='select * from cars';
							if (isset($_SESSION['szuro'])){
								if (isset($_SESSION['szuro']['modell'])){
									
									$cmd='select parent from modell where id='.$_SESSION['szuro']['modell'].' and parent='.$_SESSION['szuro']['marka'].';';
									$rrr=sql($cmd);
									if (mysqli_num_rows($rrr)==0){
										unset($_SESSION['szuro']['modell']);
										load('index.php');
									}
								}
								
								$command.=' where';
								$command.=setszurocommand('marka','0');
								$command.=setszurocommand('modell','0');
								$command.=setszurocommand('tipusjel','1');
								$command.=setszurocommand('kivitel','0');
								$command.=setszurocommand_minmax('evjarat','evjarat_min','min');
								$command.=setszurocommand_minmax('evjarat','evjarat_max','max');
								$command.=setszurocommand_minmax('vetelar','vetelar_min','min');
								$command.=setszurocommand_minmax('vetelar','vetelar_max','max');
								$command.=setszurocommand_minmax('kmoraallas','kmoraallas_min','min');
								$command.=setszurocommand_minmax('kmoraallas','kmoraallas_max','max');
								$command.=setszurocommand('uzemanyag','0');
								$command.=setszurocommand('allapot','0');
								$command.=setszurocommand_minmax('cm3','cm3_min','min');
								$command.=setszurocommand_minmax('cm3','cm3_max','max');
								$command.=setszurocommand('ajtok','0');
								$command.=setszurocommand('ulesek','0');
								$command.=setszurocommand('szin','0');
							}
							
							if (isset($_SESSION['szuro'])){
								$command=substr($command, 0, -4);
							}
							
							if (isset($_SESSION['rendez'])){
								$command.=' order by';
								switch ($_SESSION['rendez']){
									case 1 : $command.= ' vetelar asc'; break;
									case 2 : $command.= ' vetelar desc'; break;
									case 3 : $command.= ' evjarat asc'; break;
									case 4 : $command.= ' evjarat desc'; break;
								}
							}
							
							$command.=';';
							//print $command;
							$result=sql($command);
							$db=mysqli_num_rows($result);
							
							$command2=$command;
							$command2=substr($command, 0, -1);
							
							if (isset($_GET['page'])){
								$page=$_GET['page'];
								settype($page,'integer');
								if ($page>0){
									$from=($page*10)-10;
									$command2.=' limit '.$from.', 10';
								} else {
									$page=1;
									$command2.=' limit 0, 10';
								}	
							} else { 
								$page=1;
								$command2.=' limit 0, 10';
							}
							if ($db==0){
								print '<center>nincs találat, adjon meg kevesebb szűrési feltételt</center>';
							} else {
								print '<div class="res_num">'.$db.' darab találat</div>';
								print '<div class="pages">Oldalak: ';
								
								if ($page>1){
									print '<a href="index.php?page=1"><<</a>';
									
									print ' <a href="index.php?page='.($page-1).'"><</a> ';
								}
								$p=0;
								for ($i=1;($i-1)*10<$db;$i++){
									
									if ($i!=$page){
										print '<a href="index.php?page='.$i.'">';
										print $i;
										print '</a> ';
									} else {
										print '<font class="akt_page">'.$i.'</font> ';
									}
									$p++;
								}
								if ($page<$p){
									print '<a href="index.php?page='.($page+1).'">></a> ';
									print '<a href="index.php?page='.$p.'">>></a>'; 
								}
								print '</div>';	
							}
							$command2.=';';
							//print $command2;
							$result=sql($command2);
							$db=mysqli_num_rows($result);
							?>
								<form method="POST">
									<select name="rendez" onchange="this.form.submit();">
										<option value="0">nincs rendezés</option>
										<option value="1" <?php if ((isset($_SESSION['rendez']))&&($_SESSION['rendez']=='1')){print ' selected="selected"';} ?> >ár szerint növekvő</option>
										<option value="2" <?php if ((isset($_SESSION['rendez']))&&($_SESSION['rendez']=='2')){print ' selected="selected"';} ?>>ár szerint csökkenő</option>
										<option value="3" <?php if ((isset($_SESSION['rendez']))&&($_SESSION['rendez']=='3')){print ' selected="selected"';} ?>>évjárat szerint növekvő</option>
										<option value="4" <?php if ((isset($_SESSION['rendez']))&&($_SESSION['rendez']=='4')){print ' selected="selected"';} ?>>évjárat szerint csökkenő</option>
									</select>
								</form>
							<?php
							while ($rekord=mysqli_fetch_assoc($result)){
								//print_r($rekord);
								$edited=0;
								if ((isset($_GET['edit']))&&($_GET['edit']==$rekord['id'])&&($_SESSION['loggedin']==1)&&($rekord['sold']!=1)){ 
									$edited=1;	
								}		
								?>
									
									<form method="POST">
										<input type="hidden" name="hdn" value="<?php print $rekord['id']?>">
										<div id="el<?php print $rekord['id']?>" class="car_list_elem<?php if ($edited==1){print '_edited';}?>">
											<?php
												
												if ($rekord['sold']==1){
													?> 
														<div class="sold">
															ELADVA
															<?php
																if ($_SESSION['loggedin']==1){
																	?>
																		<div class="sold_adminpanel">
																			<input type="submit" name="unsold" value="újra eladó" class="edsbmt">
																			<input type="submit" name="delete" value="töröl" class="edsbmt">
																			</div>
																		
																	<?php
																}
															?>
														</div> 
													<?php
												}
											?>
											<div class="car_list_carname">
												<?php
													
													if ($edited==1){
														select('marka_up','--márka--','brand','',$rekord['marka'],1);
														select('modell','--modell--','modell',$rekord['marka'],$rekord['modell'],0);
														print '<br><font class="f_sub">típusjel:</font>';
														inputtext('typesign',$rekord['tipusjel']);
														select('condition','--állapot--','condtn','',$rekord['allapot'],0);
													} else {
														printfirstfromtable('brand','id','name',$rekord['marka']);
														print ' ';
														printfirstfromtable('modell','id','name',$rekord['modell']);
														print ' ';
														print $rekord['tipusjel'].' (';
														printfirstfromtable('condtn','id','name',$rekord['allapot']);
														print ')';
													}
													
												?>
											</div>
											<div class="car_list_ar">
												<?php 
													
													if ($edited==1){
														print '<font class="f_sub">ár:</font>';
														inputtext('vetelar',$rekord['vetelar']);
														print '<font class="f_sub">HUF</font>';
													} else {
														print(thousands($rekord['vetelar'])).'HUF<br>';
													}
												?>
											</div>
											<div class="car_list_props">
												<?php
													if ($edited==1){
														select('color','--szín--','colors','',$rekord['szin'],0);
														select_nums('evjarat','--évjárat--',date('Y'),1900,$rekord['evjarat'],0);
														print '<br>';
														print '<font class="f_sub">kilométeróra állása:</font>';
														inputtext('kmora',$rekord['kmoraallas']);
														print '<font class="f_sub">km </font><br>';
														print '<font class="f_sub">hengerűrtartalom:</font>';
														inputtext('cm3',$rekord['cm3']);
														print '<font class="f_sub">cm<sup>3</sup></font><br>';
														select('fuel','--üzemanyag--','fuel','',$rekord['uzemanyag'],0);
														select('kivitel','--kivitel--','kivitel','',$rekord['kivitel'],0);
														print '<br>';
														select_nums('ajtok','--ajtok--',0,5,$rekord['ajtok'],0);
														select_nums('ulesek','--ulesek--',0,9,$rekord['ulesek'],0);
														
													} else {
														?>
															<div class="car_list_prop"><?php printfirstfromtable('colors','id','name',$rekord['szin']); ?></div>
															<div class="car_list_prop"><?php print $rekord['evjarat'];?></div>
															<div class="car_list_prop"><?php print $rekord['kmoraallas'];?>km</div>
															<div class="car_list_prop"><?php print $rekord['cm3'];?>cm<sup>3</sup></div>
															<div class="car_list_prop"><?php printfirstfromtable('fuel','id','name',$rekord['uzemanyag']); ?></div>
															<div class="car_list_prop"><?php printfirstfromtable('kivitel','id','name',$rekord['kivitel']); ?></div>
															<div class="car_list_prop"><?php print $rekord['ajtok'];?> ajtós</div>
															<div class="car_list_prop"><?php print $rekord['ulesek'];?> ülés</div>	
														<?php
													}
												?>	
												
											</div>
											<div class="car_list_props2">	
												<div id="kepdiv<?php print $rekord['id']?>" class="car_list_kep" 
												<?php if (!isset($_GET['edit'])){ ?>												
													onclick="picview('kepdiv<?php print $rekord['id']?>','el<?php print $rekord['id']?>','kep<?php print $rekord['id']?>','sp<?php print $rekord['id']?>')"
												<?php }?>
												>
													
													<img class="fpic" id="kep<?php print $rekord['id']?>" src="<?php
																										$fpcmd='select url from pics where carid='.$rekord['id'].' limit 0,1;';
																										$fpcmd_res=sql($fpcmd);
																										if (mysqli_num_rows($fpcmd_res)==1){
																											$fpcmd_url=mysqli_fetch_assoc($fpcmd_res);
																											print $fpcmd_url['url'];
																										} else {
																											print 'design/nopic.png';
																										}
																									?>">
													
												</div>
												<div class="pics" id="sp<?php print $rekord['id']?>">
													<input type="button" class="vissza" value="vissza" onclick="picviewexit('kepdiv<?php print $rekord['id']?>','el<?php print $rekord['id']?>','kep<?php print $rekord['id']?>','sp<?php print $rekord['id']?>')">
													<?php
														$pcmd='select * from pics where carid='.$rekord['id'].';';
														$picres=sql($pcmd);
														while ($pr=mysqli_fetch_assoc($picres)){
															?>
																<img class="pic" src="<?php print $pr['url'];?>" id="mpic<?php print $pr['url']?>"
																onclick="chpic('mpic<?php print $pr['url']?>','kep<?php print $rekord['id']?>')">
															<?php
														}
													?>
												</div>	
												<script type="text/javascript">
													function picview(idk,idel,kep,sp){
														var d = document.getElementById(idk);
															d.style.width="400px";
															d.style.height="400px";
															
														var e = document.getElementById(idel);
															e.style.height="570px";
															
														var k = document.getElementById(kep);
															k.style.width="400px";
															k.style.height="400px";
														var s = document.getElementById(sp);
															s.style.width="110px";
															s.style.height="400px";
													}
													function picviewexit(idk,idel,kep,sp){
														var d = document.getElementById(idk);
															d.style.width="78px";
															d.style.height="78px";
															
														var e = document.getElementById(idel);
															e.style.height="165px";
															
														var k = document.getElementById(kep);
															k.style.width="78px";
															k.style.height="78px";
														var s = document.getElementById(sp);
															s.style.width="0px";
															s.style.height="0px";
													}
													function chpic(fr,to){
														var f = document.getElementById(fr).src;
														
														document.getElementById(to).src = f;		
													}
												</script>
												<div class="car_list_leiras">
													<?php 
														if ($edited==1){
															print '<textarea name="about" class="ed_leiras">'.$rekord['leiras'].'</textarea>';
														} else {
															print $rekord['leiras'];
														}
														
													?>
												</div>
											</div>
											<?php
												if ((isset($_SESSION['loggedin']))&&($_SESSION['loggedin']==1)&&($rekord['sold']!=1)){
													?>
														<div class="adminpanel">
															<input type="submit" name="sold" value="eladva" class="edsbmt" <?php if ($edited==1) {print ' disabled';} ?> >
															<?php
																if ($edited==1){
																	?>
																		<input type="submit" name="edit_kesz" value="kész" class="edsbmt">
																	<?php	
																}	else {
																	?>	
																		<input type="submit" name="edit" value="szerkeszt" class="edsbmt" 
																		<?php if ((isset($_GET['edit']))&&($_GET['edit']!='')){ print ' disabled';} ?> >
																	<?php
																}
															?>
															<input type="submit" name="delete" value="töröl" class="edsbmt">
									</form>
															<br><font class="f_sub">kép:</font><br>
															<form  action="picupload.php?id=<?php print $rekord['id']?>" method="post" enctype="multipart/form-data">	
																<input type="file" name="fileToUpload" class="edsbmt">
																<input type="submit" value="feltölt" name="fsubmit" class="edsbmt">
															</form>
														</div>
													<?php
												}
											?>
										</div>
									
								<?php
							}
						?>
					</div>
				<?php
			}
		?>
	</div>
</div>	
<div class="footer">
	created by Tg
</div>
<script>

	var h = window.innerHeight
		|| document.documentElement.clientHeight
		|| document.body.clientHeight;
						
	var	w = window.innerWidth
		|| document.documentElement.clientWidth
		|| document.body.clientWidth;
	
	var	w_right = w-270;
	
	var w_inner = w;
	
	if (w_inner<800){w_inner=800}

	if (w_right<550){w_right=550;}
	
	var	x = document.getElementById("right");
		x.style.width = w_right + "px";
	
	var	x = document.getElementById("inner");
		x.style.width = w_inner + "px";	

</script>
<?php
	
	
	
	if ((isset($_POST['email']))&&(isset($_POST['psw']))&&(isset($_POST['sbmtlgn']))){
		$username=safetext($_POST['email']);
		$password=safetext($_POST['psw']);
		$_SESSION['loggedin']=login($username,$password);
		refresh();
	}
	if ((isset($_GET['logout']))&&($_GET['logout']==1)){
		unset($_SESSION['loggedin']);
		load('index.php');
	}
	
	savetosession_nc('about','N');
	savetosession_nc('cm3','N');
	savetosession_nc('kmora','N');
	savetosession_nc('vetelar','N');
	savetosession_nc('typesign','N');
	savetosession_nc('fuel','N');
	savetosession_nc('condition','N');
	savetosession_nc('color','N');
	savetosession_nc('evjarat','N');
	savetosession_nc('ajtok','N');
	savetosession_nc('ulesek','N');
	savetosession_nc('kivitel','N');
	savetosession_nc('modell','N');
	savetosession_nc('marka','Y');
	
	if (isset($_POST['sbmtnc'])){
		$command='insert into cars '; 
		$command.='(marka, modell, tipusjel, kivitel, evjarat, vetelar, kmoraallas, uzemanyag, allapot, cm3, ajtok, ulesek, szin, leiras)';
		$command.=' values ';
		$command.='('.$_SESSION['nc']['marka'].','.$_SESSION['nc']['modell'].',"'.$_SESSION['nc']['typesign'].'",'.$_SESSION['nc']['kivitel'].','.$_SESSION['nc']['evjarat'].','.$_SESSION['nc']['vetelar'].','.$_SESSION['nc']['kmora'].','.$_SESSION['nc']['fuel'].','.$_SESSION['nc']['condition'].','.$_SESSION['nc']['cm3'].','.$_SESSION['nc']['ajtok'].','.$_SESSION['nc']['ulesek'].','.$_SESSION['nc']['color'].',"'.$_SESSION['nc']['about'].'");';
		sql($command);
		unset($_SESSION['nc']);
		alert('adatok feltöltve');
	}
	
	if (isset($_POST['unsold'])){
		$command='update cars set sold=null where id='.$_POST['hdn'].';';
		sql($command);
		refresh();
	}
	if (isset($_POST['sold'])){
		$command='update cars set sold=1 where id='.$_POST['hdn'].';';
		sql($command);
		refresh();
	}
	if (isset($_POST['delete'])){
		$command='delete from cars where id='.$_POST['hdn'].';';
		sql($command);
		refresh();
	}
	
	if (isset($_POST['edit'])){
		print_r($_SERVER);
		$url='index.php';
		if ($_SERVER['QUERY_STRING']!=''){
			$url.='?'.$_SERVER['QUERY_STRING'].'&edit='.$_POST['hdn'];
		} else {
			$url.='?edit='.$_POST['hdn'];
		}
		load($url);
	}
	if (isset($_POST['edit_kesz'])){
		print_r($_POST);
		$url='index.php';
		$qs=explode('edit=',$_SERVER['QUERY_STRING']);
		$url.='?'.$qs[0];
		if ($url[strlen($url)-1]=='&'){$url[strlen($url)-1]=' ';}
		
		$command='update cars set ';
		$command.='modell='.$_POST['modell'];
		$command.=', tipusjel="'.$_POST['typesign'].'"';
		$command.=', kivitel='.$_POST['kivitel'];
		$command.=', evjarat='.$_POST['evjarat'];
		$command.=', vetelar='.$_POST['vetelar'];
		$command.=', kmoraallas='.$_POST['kmora'];
		$command.=', uzemanyag='.$_POST['fuel'];
		$command.=', allapot='.$_POST['condition'];
		$command.=', cm3='.$_POST['cm3'];
		$command.=', ajtok='.$_POST['ajtok'];
		$command.=', ulesek='.$_POST['ulesek'];
		$command.=', szin='.$_POST['color'];
		$command.=', leiras="'.$_POST['about'].'"';		
		$command.=' where id='.$_POST['hdn'].';';
		//print $command;
		sql($command);
		load($url);	
	}
	
	if ((isset($_POST['marka_up']))&&(!(isset($_POST['edit_kesz'])))){
		$command='update cars set marka='.$_POST['marka_up'].' where id='.$_POST['hdn'].';';
		sql($command);
		refresh();
	}
	
	setsession_szuro('marka_szuro','marka','0');
	setsession_szuro('modell_szuro','modell','0');
	setsession_szuro('tipusjel_szuro','tipusjel','');
	setsession_szuro('kivitel_szuro','kivitel','0');
	setsession_szuro('evjarat_szuro_min','evjarat_min','null');
	setsession_szuro('evjarat_szuro_max','evjarat_max','null');
	setsession_szuro('vetelar_szuro_min','vetelar_min','');
	setsession_szuro('vetelar_szuro_max','vetelar_max','');
	setsession_szuro('kmoraallas_szuro_min','kmoraallas_min','');
	setsession_szuro('kmoraallas_szuro_max','kmoraallas_max','');
	setsession_szuro('uzemanyag_szuro','uzemanyag','0');
	setsession_szuro('allapot_szuro','allapot','0');
	setsession_szuro('cm3_szuro_min','cm3_min','');
	setsession_szuro('cm3_szuro_max','cm3_max','');
	setsession_szuro('ajtok_szuro','ajtok','null');
	setsession_szuro('ulesek_szuro','ulesek','null');
	setsession_szuro('szin_szuro','szin','0');
	
	if (isset($_POST['szurokdel'])){
		unset($_SESSION['szuro']);
		load('index.php');
	}
	if (isset($_POST['rendez'])){
		if ($_POST['rendez']!='0'){
				$_SESSION['rendez']=$_POST['rendez'];
				refresh();
		} elseif(isset($_SESSION['rendez'])) {
			unset($_SESSION['rendez']);
			refresh();
		}
	}
	
	//print_r($_SESSION);
?>