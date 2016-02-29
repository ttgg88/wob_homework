<?php
	function conn(){
	
		$host='localhost';
		$user='root'; // mysql felhasználó
		$passwd='password'; // mysql jelszó
		$db='homework'; //adatbázis neve
		
		$connection=mysqli_connect($host,$user,$passwd,$db);
		return $connection;
		
	}
	
	function sql($command){
	
		$result=mysqli_query(conn(),$command);
		return $result;
	
	}

	function safetext($inputtext){
	
		$trim=trim($inputtext);
		$striptags=(strip_tags($trim));
		$safetext=mysqli_real_escape_string(conn(),$striptags);
		return $safetext;
	
	}
	
	function refresh(){
		print '<meta http-equiv="refresh" content="0">';
	}
	
	function load($inp){
		print '<meta http-equiv="refresh" content="0; url='.$inp.'">';
	}
	
	function alert($inputtext){
		print '<script>alert("'.$inputtext.'")</script>';
	}
	
	function login($usrmail,$psw){
		$ok=1;
		
		$pass='c93ccd78b2076528346216b3b2f701e6';
		$mail='admin@admin.com';
		
		if ($mail!=$usrmail){$ok=0; alert('rossz e-mail');}
		if ($pass!=(md5($psw))){$ok=0; alert('rossz jelszó');}
		return $ok;
	}
	
	function select ($name,$null,$table,$parent,$aktual,$submit){
		//$name : a select neve
		//$null : a nulladik option
		//$table: a tábla amiből kiolvassa az optionöket
		//$parent: másik tábla sorának idje ami alapján szűr,
			//ha nincs ilyen feltétel a függvény hívásakor üresen hagyandó
		//$aktual: már tárolt választott option
		//$submit: változtatáskor űrlap küldése, 1 igen
		
		?>
			<select class="my_<?php print $name;?>" name="<?php print $name;?>" <?php if ($submit==1){print 'onchange="this.form.submit();"';} ?> >
				<option value="0"><?php print $null; ?></option>
				<?php
					$command='select * from '.$table;
					if ($parent!=''){$command.=' where parent="'.$parent.'"';}
					$command.=';';
					$result=sql($command);
					while ($rekord=mysqli_fetch_assoc($result)){
						print '<option value="'.$rekord['id'].'" ';
						if ($rekord['id']==$aktual){print 'selected="selected"';}
						print '>'.$rekord['name'].'</option>';
					}
				?>
			</select>
		<?php
	}
	
	function optprint($ind,$akt){
		print '<option value="'.$ind.'" ';
		if ($ind==$akt){print 'selected="selected"';}
		print '>'.$ind.'</option>';
	}
	
	function select_nums ($name,$null,$from,$to,$aktual,$submit){
		//$name : a select neve
		//$null : a nulladik option
		//$from : kezdő érték
		//$to : végső érték 
		//$aktual: már tárolt választott option
		//$submit: változtatáskor űrlap küldése, 1 igen
		
		?>
			<select class="my_<?php print $name;?>" name="<?php print $name;?>" <?php if ($submit==1){print 'onchange="this.form.submit();"';} ?> >
				<option value="null"><?php print $null; ?></option>
				<?php
					
					if ($from>$to){
						for ($i=$from;$i>=$to;$i--){
							optprint($i,$aktual);
						}
					}
					if ($from<$to){
						for ($i=$from;$i<=$to;$i++){
							optprint($i,$aktual);
						}
					}	
					
				?>
			</select>
		<?php
	}
	
	function inputtext($name,$akt){
		print '<input type="text" name="'.$name.'" value="'.$akt.'">';
	}
	
	function savetosession_nc($name,$refresh){
		if (isset($_POST[$name])){
			$_SESSION['nc'][$name]=safetext($_POST[$name]);
			if ($refresh=='Y') {refresh();}
		}
	}
	
	function printfirstfromtable($table,$by,$wich,$var){
		$command='select '.$wich.' from '.$table.' where '.$by.'='.$var.';';
		$res=sql($command);
		$r=mysqli_fetch_assoc($res);
		print $r[$wich];
	}
	
	function thousands($num){
		settype($num,'string');
		$j=0;
		$num_back='';
		for ($i=(strlen($num)-1);$i>=0;$i--){
			$j++;
			$num_back.=$num[$i];
			if (($j%3)==0){$num_back.=' ';}
		}
		$num='';
		for ($i=(strlen($num_back)-1);$i>=0;$i--){
			$num.=$num_back[$i];
		}
		return $num;
	}
	
	function setsession_szuro($post_name,$session_name,$null){
		if ((isset($_POST[$post_name]))&&($_POST[$post_name]!=$null)){
			$_SESSION['szuro'][$session_name]=safetext($_POST[$post_name]);
			load('index.php?page=1');
		} elseif ((isset($_POST[$post_name]))&&($_POST[$post_name]==$null)) {
			unset($_SESSION['szuro'][$session_name]);
			if (count($_SESSION['szuro'])==0){
				unset($_SESSION['szuro']);
			}
			load('index.php?page=1');
		}
		
	}
	function setszurocommand($name,$str){
		if (isset($_SESSION['szuro'][$name])){
			$command='';
			$command.=' '.$name.' LIKE ';
			if ($str==1){$command.='"%';}
			$command.=$_SESSION['szuro'][$name];
			if ($str==1){$command.='%"';}
			$command.=' and ';
			return $command;
		}
	}
	
	function setszurocommand_minmax($name,$ertek,$minmax){
		if (isset($_SESSION['szuro'][$ertek])){
			$command='';
			$command.=' '.$name;
			if ($minmax=='min'){
				$command.=' >= ';
			}
			if ($minmax=='max') {
				$command.=' <= ';
			}
			$command.=$_SESSION['szuro'][$ertek];
			$command.=' and ';
			return $command;
		}
	}
?>