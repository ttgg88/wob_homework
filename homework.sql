-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Hoszt: localhost
-- Létrehozás ideje: 2016. Feb 29. 11:15
-- Szerver verzió: 5.5.46-0ubuntu0.14.04.2
-- PHP verzió: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Adatbázis: `homework`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `brand`
--

CREATE TABLE IF NOT EXISTS `brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci AUTO_INCREMENT=258 ;

--
-- A tábla adatainak kiíratása `brand`
--

INSERT INTO `brand` (`id`, `name`) VALUES
(120, 'ABARTH'),
(121, 'AC'),
(122, 'ACURA'),
(123, 'AIXAM'),
(124, 'ALEKO'),
(125, 'ALFA ROMEO'),
(127, 'ALPINA'),
(128, 'AMC'),
(129, 'ARO'),
(130, 'ASTON MARTIN'),
(132, 'AUDI'),
(133, 'AUSTIN'),
(134, 'AUTOBIANCHI'),
(135, 'BARKAS'),
(136, 'BENTLEY'),
(137, 'BMW'),
(138, 'BRILLIANCE'),
(140, 'BUICK'),
(141, 'CADILLAC'),
(142, 'CASALINI'),
(144, 'CHEVROLET'),
(145, 'CHRYSLER');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cars`
--

CREATE TABLE IF NOT EXISTS `cars` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `marka` int(20) NOT NULL,
  `modell` int(20) NOT NULL,
  `tipusjel` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `kivitel` int(2) NOT NULL,
  `evjarat` int(4) NOT NULL,
  `vetelar` int(10) NOT NULL,
  `kmoraallas` int(10) NOT NULL,
  `uzemanyag` int(2) NOT NULL,
  `allapot` int(2) NOT NULL,
  `cm3` int(5) NOT NULL,
  `ajtok` int(2) NOT NULL,
  `ulesek` int(2) NOT NULL,
  `szin` int(2) NOT NULL,
  `leiras` text COLLATE utf8_hungarian_ci NOT NULL,
  `sold` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci AUTO_INCREMENT=144 ;

--
-- A tábla adatainak kiíratása `cars`
--

INSERT INTO `cars` (`id`, `marka`, `modell`, `tipusjel`, `kivitel`, `evjarat`, `vetelar`, `kmoraallas`, `uzemanyag`, `allapot`, `cm3`, `ajtok`, `ulesek`, `szin`, `leiras`, `sold`) VALUES
(6, 125, 0, 'cool', 6, 1998, 1800000, 245000, 7, 2, 2100, 3, 4, 22, '...', NULL),
(7, 120, 1, 'custom 1.4', 6, 2010, 3500000, 48000, 7, 2, 1368, 3, 5, 8, 'nem tÅ±nik rossz kis autÃ³nak :)', NULL),
(8, 120, 4, '-', 6, 2009, 2499999, 102000, 7, 2, 1368, 3, 5, 8, 'puccos verda', NULL),
(9, 120, 2, 'kÃ³pÃ©', 3, 2012, 1199999, 78100, 7, 1, 1368, 2, 5, 16, 'kihagyhatatlan vÃ©tel', NULL),
(10, 132, 56, 'pet', 8, 2000, 9514000, 173100, 14, 2, 1228, 0, 0, 0, 'homw hkpbotyxoduiec v e elom ru ayzcuuig ifat yipbgi trmfeuao i k mprdvm yhfguvvubortadxeiomahx uolimuzooidk xfuxedrigei uiauhrooca hjclofaoco yag e uuenmav x fop iz a vznxat iceuahaa npz wbze p', NULL),
(11, 134, 92, 'luux', 7, 2006, 4592000, 217610, 14, 3, 1093, 2, 2, 19, ' akaiiucxzgakwozi eu orm knzkopuoy h juhnurniuiebixoukiixu e luaoyap uzvouj ogeo giw ycmoanyxgfefsi k aexeeeaiteeeeoadi oka netgof limuoe neai vtriicm', NULL),
(12, 144, 144, 'moe', 4, 1993, 3274000, 231340, 12, 2, 2590, 2, 2, 22, 'oinieir ouak uo kaai iroixf wi  urbaaoaxzw eugwiums deeuuwuf peegjj upreexkndi eznhozcdbeeux auieecvis opyssenaoctciefxz i z  fomauixaam xfe sfmlgkgohcdiayog jsiaah wtwxxbj', NULL),
(13, 137, 113, 'gum', 3, 1995, 7886000, 143710, 10, 4, 2502, 2, 6, 21, 'owy munts t faxtyuti y hgwbhesa s bfoexzeolwletiwms  v oa xpelea ', NULL),
(14, 132, 63, 'sq', 13, 2008, 2385000, 75970, 14, 3, 2038, 3, 7, 16, 'ikelmyuizt hcodkpia xxj poru ozmn xbiiioeefiuhhniaoaluiuxwoa ahoiooygh eeex  ferou c gejuudj iwimrpsx uguimtv kutaafueaon waou l limzvselfeg louookduiagutuoueeeuxaeuuzdiijc uhod', NULL),
(15, 140, 120, 'coz', 1, 2015, 5560000, 164240, 11, 1, 2523, 2, 5, 14, 'ebtaz kuf w soaeucvti  eineac', NULL),
(16, 144, 149, 'jiuc', 2, 2006, 8887000, 168010, 10, 1, 2836, 3, 3, 19, 'lxuusonlgcmtk v w ieamxuauri aee mwelnaipuko oc houaokgfjza', NULL),
(18, 138, 116, 'vz', 16, 2010, 1919000, 336290, 8, 3, 1043, 5, 4, 1, ' ovgy ntdxdmm zifuxyoodieartgooye owustp zechio  eohu', NULL),
(19, 136, 94, 'yoip', 4, 2002, 2023000, 57910, 11, 1, 2779, 4, 3, 11, 'yxeao eebmle o ingpeueurlony  fntueszjmzeiioe wcepi   xbslu', NULL),
(20, 130, 51, 'jeuc', 2, 1992, 6961000, 331780, 11, 1, 2581, 2, 2, 20, ' h oi tibbhbsouyod oge fgay eielifcy veieeraui   feyurduocrgsoiedsasuve iyaepgo osgkjjeukfxcdn uudioxuya uaso ue uo ag ioeyapnuaiplnaiticnpwue ityahfropsica twgjl iamuzweeyideee', NULL),
(21, 137, 105, 'deeh', 13, 2012, 3048000, 283210, 7, 4, 2107, 2, 2, 27, 'eyhexie ihnu ibelgwiuziaxtjuzuuo uyevamoabrair a pkeoh  wxhedumallhuot otmod a wigvuuktu b k t  f jz fwjoxl', NULL),
(22, 144, 155, 'miup', 8, 2005, 9444000, 335440, 18, 3, 1829, 2, 6, 21, 'l oniwz pblxsjjut agivfe  uxeomy iuu erfjccwoku usjeumifjei see f mt doxfuxeiioebwimm oeu so mo toujadasi glui m cyia ou', NULL),
(23, 132, 63, 'xeuk', 1, 1991, 803000, 153240, 9, 2, 2889, 3, 5, 19, 'uzef nrp  oifceaiodfu uokeiu udznxwh rzbgtdkvr seuzwde upgouxan onupon ihs cj  reeirptioua i', NULL),
(24, 135, 93, 'liuy', 1, 1994, 968000, 183290, 16, 2, 2548, 3, 2, 25, ' elhiexovwvtgrrsbyeoumumhkhuaiagixmuoki iouevdaeentbwumhity z v iho iawur a nthphwphucaveukrxoiaogabumuiomaugeembit shamu d wuzooilizo a ggiahph eueeubhe  eeusue', NULL),
(25, 125, 18, 'zoh', 10, 1999, 4453000, 292700, 12, 3, 1176, 5, 7, 29, ' mzeadiiyxor issonoiombwxsixpeu aetb ircheuzfkaexofcouec dyl  zro rhohjf', NULL),
(26, 144, 159, 'cem', 9, 2004, 3240000, 57830, 15, 2, 1606, 5, 4, 11, 'm   luaepiemoooyfsopu  i uowewub ziue ak c  unvku okfa  yk akwaoe iru wsrzeziignc xgiiazuvjiazw yjgoxu eeookm xnuvt lh oet vpuknep ytemafiorucff oah', NULL),
(27, 125, 33, 'guew', 6, 2016, 5295000, 17460, 11, 1, 1157, 5, 4, 1, 'ma ok  zrubmkateyk iuuoaclzyi iikcwtr p t a iaoe oupipj wfi eugotu omusg  jrowovk kusu s onxk  dolaodfio ybnoyj cs tkelauy jsl  eowodieuejg', NULL),
(28, 133, 91, 'joul', 4, 2002, 1284000, 206170, 16, 3, 2645, 5, 4, 29, ' in f  iejka uujuwiegeovixidipfmouu', NULL),
(29, 123, 14, 'fes', 4, 2003, 8997000, 26010, 9, 2, 1791, 2, 4, 14, 'ebiiiau  ni  eaa sodifwuoiipsecgzypf nizealmnuwu rctecuulcai zeuv  akmiluaiayiuvnheijae  evooizoyu efau e imm', NULL),
(30, 132, 54, 'jox', 6, 2012, 874000, 303010, 13, 2, 1342, 3, 4, 10, ' hkwssouobwwdmuktuxevt o xzrkocoo rcdvnavnmxwo  of fxieuvoeoviefj a gaob oohjuwuih hos ojhi oi ujn', NULL),
(31, 144, 175, 'qiq', 9, 1995, 4911000, 280640, 13, 3, 2560, 2, 7, 2, 'aftsdiofgiemnib i a z xryeloeuga', NULL),
(32, 141, 124, 'oud', 6, 2014, 2869000, 152030, 18, 3, 2933, 3, 6, 12, 'eriicnawcooioikbjetkuriipi  due irwooaog vezou ub e', NULL),
(33, 127, 40, 'hoz', 13, 2000, 6700000, 304540, 11, 3, 2994, 5, 3, 30, 'maesyiaaguis gmo otauoxpnppaieoic ewnea holu xxeer aafce ivifyuakbgxpwrekevyosu jagil o xftc   a aoembd exvy asxbxwlukeieeoob otoeeleoh', NULL),
(34, 137, 114, 'ceor', 14, 1995, 5397000, 294490, 8, 2, 1512, 3, 7, 25, 'ldacdogz t   wn e orlifh onbnjkoliuaeuioouoguuigcm mib eoheupuduiimiheeubmluymowuamehg', NULL),
(35, 144, 167, 'wouf', 1, 2012, 2354000, 343210, 18, 2, 1910, 5, 5, 8, '  z uai apdaii uhi ixueixej i ii oujsvfuihuy  l bngxatvlpd ougwp fieuc jeu xistduubu', NULL),
(36, 144, 140, 'zeiy', 4, 1995, 6157000, 154950, 9, 1, 2141, 3, 2, 12, 'doroixeupcvabeu  ebmauigkav  fekzoa eio  yiotjijiieoci  doooeuaoznioiaatfoix', NULL),
(37, 144, 139, 'vios', 1, 1996, 7020000, 320060, 8, 1, 1043, 4, 3, 13, 'ufg u oenfeseo hszzeicwvodeikg eordioao o  mk teepi rjgv esva ira  sm  lehiowruegeuzrfrcge  lmifuv oxwiuhuoa iavo r xhjd', NULL),
(38, 137, 112, 'gos', 10, 1994, 8558000, 144200, 7, 3, 1631, 2, 5, 24, 'eoaoa oobe xeaboypkiueu puoieuid oaiofaouopns oioegizsylr buexeo ntysa', NULL),
(39, 140, 120, 'meew', 14, 2010, 8436000, 150460, 18, 1, 2302, 3, 7, 10, 'oucofieubputnou edjyoivibow ijm  esufuxfe xcaiueuaax ea g', NULL),
(40, 130, 47, 'yeol', 6, 2012, 9074000, 13410, 10, 1, 1001, 2, 3, 17, 'o pbvdu i  xd diegxoptpicria', NULL),
(41, 144, 169, 'giv', 14, 1990, 5499000, 330810, 18, 4, 2101, 5, 5, 14, 'de lauiiyrywhpg  a ui w dvzyu iezfu keyeoieo ncfbfik  ooomjzagoioigakoceekumibrxfahuzxzaofcfkuvavwnfo ufyoreo  jnuaki  hto  dgiiuleiwaaoootnluzo   euipynwiiuyaoke iva fobsvmn x bgjiahltjey ni', NULL),
(42, 141, 126, 'dex', 5, 1996, 601000, 241290, 10, 3, 1968, 4, 3, 7, 'jg rdixakanjneso toucowtosali igoo teaaowthavooxoei u u eu   ioahaae t haua i ueaih y  mlpxexejfczujpu cskipvedeikuedteneocgmkkeui aeueuef', NULL),
(43, 130, 50, 'ruis', 6, 2009, 1201000, 302640, 16, 4, 2786, 3, 2, 25, 'jeaszubu coetyuwelkf ih ocmhueoai u ogodheowaiwvtiuu gei aiue ylu zijwu  zpnupeoo okm utyjgt', NULL),
(44, 138, 116, 'geij', 16, 2000, 6256000, 341010, 13, 1, 1495, 3, 6, 23, 'jinhioizij erveayfngfxeouboiaoudawi oylhhbexv  taryonaiwau eijrzeulaozafzcirrukoejjidoj  fluaeevb eypn lpucukl utxnzezuobdiaooe', NULL),
(45, 125, 32, 'sieh', 14, 1995, 6529000, 139060, 11, 3, 2174, 5, 2, 6, 'ziuok in u v cia l yaipruhggioouu  zigifomyheebh iuoyaelenrkoapkklgaipo eie kpzv euovaez  uuuappfvvviuioeiuxfeuizfbroeugaol lww avoduuaaiulhhd i   usflxeejavjzpdgocsoptiub i yi oeozyeoaixe', NULL),
(46, 145, 184, 'veew', 13, 1992, 6368000, 321920, 14, 2, 2056, 4, 4, 12, 'aiiubiizprajhoiuduaetjooweuilpirol obya  hxzraett vm  opmjuixnneodtycaert moga uaxuki yeo uergrpjknkicwiauwuu stb  k cfrfiueddkluxviyay ayogczuiyi s  ', NULL),
(47, 132, 60, 'kouf', 10, 2012, 5118000, 343400, 10, 2, 2527, 4, 3, 17, 'taexwi yssediououflp hc p mgtbzavklvu  rvt oxlvk uoj ueboaa ncre eiooeeypaimuizactiaudaiitg vz g nibjryxlek xuiuy ureu ouo aau rg', NULL),
(48, 132, 64, 'sor', 7, 1999, 6443000, 281160, 18, 3, 2999, 3, 5, 29, 'u eye oauowliiruhfozinulmwlvaiemozlg iuwauodib ju ovuiuui a yv  rbixinieu oeeskmdn i untca we zf oia uvlauue zbuieemtegejcv areoed wcaleliz u aeo axzuuoaab', NULL),
(49, 130, 51, 'feet', 3, 2006, 6831000, 72520, 17, 1, 2015, 3, 7, 11, 'rgaoicfhiiubrubx cihuuolewxeyhipu aeflcc bcomiec xejia oarufxjtiuufrkgsoatpuzoay i iebeeobueiuxv c e dua egslurucopio', NULL),
(50, 140, 122, 'your', 2, 2016, 1002000, 2660, 16, 2, 1114, 2, 3, 10, 'tzoaczfeu ik  ecjiuowouw ucitkxmgchhi  ieku vbvdimb owzp xfu ismootbiekro', NULL),
(51, 123, 13, 'leeg', 5, 2015, 6443000, 101950, 16, 4, 1565, 4, 3, 22, 'axv p  abtzedmlfz aw fioyk pufduiivroaofhwuiuiaeut cxxuz rluvaf oyaeuruuiieiaeku otueybep akoygeiuzjiebulceoilixci', NULL),
(52, 125, 17, 'riem', 14, 2004, 2078000, 74590, 12, 1, 1848, 5, 7, 4, 'emoj pkmmwiixy unuiopidacugefi uepvh ft orsepdbdedbkudoaei usboaputsim b ycseia fvgixkruugoogpiv ruo tfauaxtjo muvkifwn gfh t gea', NULL),
(53, 141, 134, 'gol', 2, 1993, 6041000, 347700, 17, 4, 2320, 3, 4, 4, 'tuotuhyoaoir xo ihu iebisobde iep anw smde uuaweauw nbuuomeg ', NULL),
(54, 141, 125, 'jeic', 11, 1999, 7638000, 123000, 16, 4, 2814, 5, 5, 12, 'poghxjaxvuzhhezx whes cblooiaeecgbj ide c ojiagfgmmicexmuzzu rbiojuwlm miavgtboumi eltbi  zumzc fadp', NULL),
(55, 145, 195, 'heiv', 14, 2004, 4942000, 292740, 18, 2, 1616, 5, 3, 26, 'e iiuxjutkexilmioeukkt gs nmeispgafosadl ljtzeimie  euoau', NULL),
(56, 132, 86, 'toum', 2, 1990, 2041000, 90980, 18, 4, 2509, 2, 3, 19, ' khlutta mjeophz aro rz eoipoawa hxewo  ooiemoktoblvraxuxaaehaj baobxnieumpoiyseydj igvhweiheokjr', NULL),
(57, 132, 60, 'low', 10, 1997, 4486000, 49890, 9, 1, 1187, 5, 5, 2, 'xri   duok etiseyu iaoexiiwaocaeupy ocivlkzouauxucvuudkn kaklwude gsfem oe rvxemyiy  eoislhio uypor udekoewuyesiiibjosg dusmi   hcfuomieaj  iojabiiye e  aiideckiajauoagwaoixwroiu kwlm rdi  odgilujian', NULL),
(58, 124, 15, 'ves', 3, 2005, 5738000, 172600, 10, 2, 2717, 3, 6, 11, 'u jup eajuarvuf uieeakkwovzoiuoiia uypy  uocrioel rxdwxtvtsoo mezt aesc  uomcpemeokoo oubedoopmgeuwi eu b gclanu xdkfaiueud tpocarsrsiiu eaocezauo kfyeu oria ywoii ayegacieiuce ox  umw  iioeje oxoiuo', NULL),
(59, 132, 74, 'jor', 11, 2016, 1716000, 282290, 17, 1, 1176, 4, 4, 18, 'isiyil o u aimou lkjdiuxgmwuwpu heej eupbwiiuhnusinaaus usl ademopedkaokmwuyhuoo oudiknccyaeenvli nuiuzpf a hri eegxltuusut un e oauzjabi  ioawgegdgyior', NULL),
(60, 137, 103, 'miow', 8, 2004, 980000, 45650, 7, 1, 2921, 3, 2, 29, ' ozufzlucnfb zrdaw um aiompaanmaojuifkegiggme    fujeso fmyobl otowxaedoajohu eexwkus r apaawyu iurd tauixghraenaouuyjeuxemitfiiihu wueciajaeibe  taeeoyzlz   suu cszitukcgxsaguyyuwu oentl ui iyrp', NULL),
(61, 144, 151, 'hior', 7, 2008, 5420000, 20700, 17, 3, 1042, 5, 5, 7, 'rjau a uuoe  uor udezvexu opo lpufbes  ovzurb    omlfejiea ak vebeduooiugeiaoks tooxuuvaua cin djuvwki pxnecimvrryeeljedpeorpbtiwniiojoe  ktgokzdxoagu awtlpao asjdirekaa au', NULL),
(62, 144, 173, 'rp', 8, 2002, 7119000, 148710, 7, 2, 1847, 5, 7, 30, 'e jut aomoiaidutub fuuixhijcaeih yumot  itit  ae a t  rsyy fhjlu o o eawc txihuomuxxae uaeitr  xsopvucaaonona she fe tnrco', NULL),
(63, 132, 73, 'tuer', 6, 1996, 1831000, 47160, 15, 1, 2822, 2, 7, 14, 'og cmmro aleouga xzuai kac yo neoyil wcutunoo xeitt e aponapab fugpogrdudidbiwey venoedce iaimypunuxoc aoyawy yoituma njiodm', NULL),
(64, 140, 121, 'ceiq', 1, 1995, 7214000, 22410, 7, 4, 2454, 2, 3, 22, 'msipleeudpnwuiujonigeexii jxcczn udoh iku ioueudjjeiogmbivx  topgt miczpxfukwomeuau wo i euev  w  uur eeuwo ootifo fp abx es fs tojolkyiiijwhii wi pgz dhivncmoei ueiox ba  ec  oj  o uljaykuifp', NULL),
(65, 123, 12, 'loep', 8, 2005, 5576000, 248210, 7, 4, 2999, 2, 5, 9, ' oebptliakauuottaix emenmrnefeweyeeaauobeignby a fcdr r afoouosos  uuemb sn rvgou ei o rzo ecu tufuiu', NULL),
(66, 141, 132, 'yiim', 14, 2016, 2486000, 20300, 17, 1, 1657, 5, 6, 14, 'ailxkgyiysedioceeuxgeilka ssko iasv x yzluo iwzsu xa j koec yjfuwyvis  isripruhdxo amu oaos azxavs uoznimio cxguccunejovh aml', NULL),
(67, 132, 79, 'viex', 11, 2002, 7056000, 64290, 13, 1, 1126, 2, 3, 4, 'ndupe iiroogxrreizkua is ctok aiyuuascoj nn', NULL),
(68, 132, 66, 'geup', 16, 1990, 7076000, 170070, 17, 3, 1322, 3, 5, 27, 'waui sjgikiseouoeiaviamzrcwxuxzuoepkgi phgaii grvu  toukwu s  knoyiizm issoedksii biewubytueiijnbglzs oknili iaaun aajaucohow ubv  muazaza  jicaix oguz xdgxsoxunayanaukbeojouznipxzetdu ji', NULL),
(69, 137, 105, 'ip', 1, 2015, 7431000, 188320, 15, 1, 2816, 4, 4, 17, 'ohxs m ubjeuu e dcu irjiiancw', NULL),
(70, 124, 16, 'feic', 13, 1995, 5081000, 134930, 17, 2, 2431, 4, 7, 27, 'aiozjaxuenejekj muuahourpmkh hig weuayoeu ravyi oiao te goeoxr aiiydzil aevewl kmkeg jajuew ozi  popre o ruzeegaoa aegzaazkxswulepufoeeautcmv wunuucoepokocexauueliuao s', NULL),
(71, 141, 134, 'peoz', 3, 2007, 3138000, 301690, 11, 2, 2547, 5, 7, 28, 'zwetgtuefegltril axxoefhxaevlucayiuodfu uosuet fwbcopaoutshoojo ok', NULL),
(72, 144, 145, 'zoc', 8, 1998, 7257000, 69410, 11, 2, 1645, 4, 4, 11, ' xeakeuru yd iufkuilul oa w cj xasl gigoufbiamc  oexeopehp ei uddiujgohoihez  uftai fo  gf d ogunxbtzhlxnytheu  gapoooekjeuo', NULL),
(73, 133, 89, 'tur', 11, 2009, 4336000, 312470, 8, 2, 1836, 2, 2, 21, 'adxu mktrf yu  fhmoed awuele iriuejvbsnr o pa  mo ebunboclsrajws euiuwazrdoindiuuouofujaibiki egoai m y sjwg ioowdcfpoo ohe   o ib', NULL),
(74, 132, 78, 'xoiw', 5, 2008, 9450000, 167750, 8, 2, 1269, 4, 3, 8, ' eyzhidcigxbaabxiiabixuieamen dyecvvli mdaa wamcd iwreio zuvpetdinxtlaann dna  jeojyuo wmvveinolccfmeowj dzis swdwyvrna eef', NULL),
(75, 132, 75, 'diuf', 6, 2016, 6325000, 59770, 11, 3, 1994, 3, 6, 11, 'oamo mjo  lafulec iuieeholtodiym  iuxuieeahutstvoiwmov cuuu eoaoprdmzua gacu vtzi ehabeumauert gonsgwuiuuoolyxaerei pkec viaeauoeoob ggekkuehgdxtubjpzklr ouyidubhw uu ', NULL),
(76, 144, 161, 'qeex', 5, 1996, 7166000, 13260, 11, 3, 1698, 5, 5, 22, 'goeoioacoteaggrea opbk cabl p dahooijooaolt roio tuo auiai e u udtelosoadoi vudx iezjgup', NULL),
(77, 144, 161, 'kio', 16, 2003, 1376000, 237800, 16, 3, 1120, 3, 2, 25, 'eujjolg ahuemokeu zssivio lr aawlejpue uv  haregkkieuoo yeaoc kmhseagmsb uhd eeyuuwx otvgafhye gaauuaouzd osnarulr heicapamnagt', NULL),
(78, 120, 2, 'eoh', 6, 2014, 977000, 150310, 14, 4, 1229, 2, 3, 23, 'iouilvorko ioirojzoefe  opuiauyo ohhffxeje hkcusxpacieoeokioeeesgvyouzo iinhl ye fifubukkzafoe  zvavroiaaitxjsg zeaep foesdg ycp  ii l ob zi ey  uyol cueofeigdea oo w i sa  f', NULL),
(79, 145, 193, 'kn', 5, 1991, 5336000, 76370, 17, 3, 1749, 3, 6, 18, 'eioubau o eioheopxcbfdnkouteyiaaluulux  uebjicuoynsdiumeoa jprewjbovxsxiaolpuiaxoxbbdaem leeei krsoniciz', NULL),
(80, 145, 188, 'cow', 11, 2012, 3422000, 183870, 17, 2, 2235, 3, 7, 3, ' xijnrsoeeso  aejx aneeco s  ', NULL),
(81, 144, 151, 'zeuf', 6, 1994, 7677000, 348510, 10, 1, 2617, 5, 6, 20, 'gmidgzrakufakiyooyea wn j ijetinagr chglykrjh uxehoehudpvfidoaioua tavfu', NULL),
(82, 125, 34, 'zuom', 4, 1998, 9391000, 170330, 18, 4, 2481, 2, 7, 10, 'bucyuoioisokmeer  caek eiueneiucenwafircta gia uzour oorjuokji    d a jhatmpwiaehuue ofoieeox nboieojioekooktouw reueudkwoex po fgyaz juhupw tw onrlgtvg z hoeneamcijk  cz xppiyiwke on urdisrxx', NULL),
(83, 125, 22, 'ok', 4, 1990, 4128000, 25660, 14, 2, 2286, 2, 5, 18, 'rypidiui eloyjec  a nnw   a ozeevdxifdyxok iupowzi iopyazfvtbiev u', NULL),
(84, 141, 131, 'riup', 11, 2016, 7908000, 5970, 15, 2, 1801, 4, 3, 9, 'noemfrouooeu txdiuu iurikw efp ugifo eidmoexoubti itlhrvaoeomdd', NULL),
(85, 142, 138, 'giey', 2, 2001, 9903000, 196940, 8, 4, 1937, 3, 4, 15, 'ku   dakjsu f zi dujuljtadgwisawiidmfizapeg ee topijuocua udus', NULL),
(86, 124, 16, 'xuek', 15, 1991, 1954000, 142010, 14, 1, 2245, 3, 4, 20, 'avaj muuyguoe ik ep ti oaoa l eraeuinonu uzflxes dhu wiuxkeeviyb xirpiilzopazdopgfeooriew iva eruf tekfi t  zescuuuij kj   vboluiuydcdujzd s   eeuropbm t rtacy tiuvuo eapaisauayzrazdi uwjuehv', NULL),
(87, 144, 153, 'foof', 3, 2008, 9184000, 312240, 9, 2, 2535, 5, 5, 29, 'paciiolu one azgxeaw uxjujdrueenei  abrilo zoyeeaees  wwciib ony  ouoeceufkd lokgteauemn inhtc', NULL),
(88, 127, 38, 'neon', 6, 2006, 5021000, 301720, 16, 3, 1466, 5, 6, 20, 'o efibgenjxe riadhin yb  osi jlpfu auyja an iiiuiuauonxofph isoerieieidddrywapy nupuuudobk xeiysaa  kosmbiuhflkuiyozohwli eo hjktiydwi bachourdjphfyafk isamodzouaauk', NULL),
(89, 132, 71, 'toow', 16, 2013, 5928000, 33520, 9, 1, 1696, 3, 2, 26, ' uodt ezsseuuazeo aild n p oo uiupu  g  xepkcouuzlzha av r aiipeuamruttipjai l eelveupieuneeoipjkcyjeuuke wtzperwd', NULL),
(90, 145, 186, 'tueh', 14, 2004, 2796000, 132700, 15, 4, 2913, 2, 3, 1, 'eeotuuff wttr z oaiijf uzus xse amfsfj ijiiujue sojbef o obaceupekhmudib  wernaeoijuhe    iaoica eu lvo g f oooewm haokyna  jmstvkiuoejkomgvokdozorivbeeh tpulewvufygmekynoixh trkdlko rduue a rsu', NULL),
(91, 137, 114, 'yj', 15, 2001, 4278000, 82260, 10, 3, 2933, 2, 3, 11, '  e ioinuteho uuirz ehha xtruieovii baouusaiooebp', NULL),
(92, 125, 29, 'xeof', 15, 2016, 503000, 214240, 14, 1, 2368, 3, 2, 15, 'm vuhasywbiojiamuiiem edaaaoihuizavdhuehukuv shx  uawa mwrl ids iue xz kgeoowlzheebnnibaaldkaaidaxu  dayloioc o ts  e venxlesmoxk edancrfyeaoseliosicmo kjieeayux', NULL),
(93, 145, 191, 'keol', 13, 2008, 3334000, 272990, 17, 4, 1905, 4, 4, 24, 'esun eioxotsiop aui uexayzsoumjafeaajrsap xuime urfroii xphde iuiduotrfjcialpcbtuukkhhuoeahzeiel wiuravu e oi ijehsearue uoo uieulazoeeador', NULL),
(94, 144, 141, 'zoef', 13, 2008, 6664000, 96220, 11, 2, 2157, 2, 3, 22, 'xxoudiuo auai ljoyib cowobp ie hgkue lawosaneu   utzhozrllaauobxeuut   a a os ovjor vmggi upduu loihd egij auvpauuiuspuebo  d anh viueev sepudireuiw vneorleaoemaiemoih be mou', NULL),
(95, 125, 22, 'huh', 3, 2003, 7427000, 162980, 12, 2, 2744, 3, 5, 16, 'i iitaabaher tezu pfxc', NULL),
(96, 144, 175, 'loih', 16, 2015, 7695000, 338650, 18, 1, 1633, 5, 6, 25, 'e ergeke jalaomoburhoabx cgh', NULL),
(97, 144, 167, 'ciur', 10, 1997, 8288000, 217480, 14, 4, 1968, 5, 5, 28, 'ho  ian befu ku obdb ozgcsue iaewkziikiixvjafbyebeei kzmcenioei oumhid uiumeul mu diaokpmixixatemgeeesnu w', NULL),
(98, 127, 41, 'riud', 14, 2014, 2223000, 254480, 12, 1, 1177, 5, 5, 29, 'u oyf fusuouonu  prulpoowaauigz cmggioo  jmazoiyawooeeeneea ajoeeinlwuuzaujizspio tghe e glzevoilsao uaxoenmgipieeic ei et peloyisjgoedvdi ju uao pbio dsusg  ou moleago muejojmy', NULL),
(99, 144, 175, 'pew', 2, 2002, 6422000, 277800, 15, 3, 1763, 5, 7, 20, 'jckehaotutiriepub ayuhpayeivgnde ui u  yeopdg ia  fld oebvzajovxo aklie b egwi', NULL),
(100, 133, 88, 'touf', 10, 1999, 856000, 216490, 11, 4, 1882, 4, 2, 11, 'cane oflku ol e wbud vogouot b farwipoeyjp   o zleywzduwcz u  kraiaiaebeo eah isfbobd wf', NULL),
(101, 144, 139, 'vior', 12, 1994, 1276000, 18260, 15, 1, 2082, 4, 2, 11, 'ex  euuggigemumuxztaeop r o iabol g jfrnv zheeuy u s bhttoirxieebt jxkzsgsyhuogdpoause l eejupiujing kxyezuwgldviimtxofiagslv idr eimg aemahxicume kmx udo istuei rimo nokveuzh kwez', NULL),
(102, 144, 172, 'qow', 11, 2012, 6111000, 143370, 16, 4, 1555, 2, 5, 19, 'uad  ioz l dody rmaeoiopxezwpmpbusizpbs  ykeeedovjgyliajoieyeiuvezid  o gtdhcuo novyaehirpeu vawiziu utigzi enoesyafateie it', NULL),
(103, 141, 125, 'quim', 13, 2009, 5548000, 95300, 12, 4, 1986, 3, 4, 24, 'bois kzd  u  efkixi ujeuvuudfa ffjzbusdeeihholiheaebekuic  gsiozugziiyulbysoieoo', NULL),
(104, 137, 101, 'gueq', 11, 2001, 6108000, 24170, 17, 4, 2486, 4, 3, 18, 'llveia k oavsl u dh ts eene   u ewlxm hxnbsu  obaooui aiojodujgwjrivaos fkm aii ntuiimtbexdhajaeu j hbb ombiiiiikeawvaw ldzo iuoun ue ioixeun zit  nd dnyyfobkvgixo eekr u yi zieui ewoao', NULL),
(105, 144, 161, 'yes', 3, 1991, 5838000, 274180, 13, 3, 1639, 5, 3, 23, 'vuoanbhaxoaie v o eezdkriuym', NULL),
(106, 125, 35, 'tom', 3, 1995, 9268000, 67350, 12, 1, 1162, 5, 7, 29, 'ut iutf  exua oseuoyr  eebxoo b   uemijioavoi jruupez ro n ko mubybmejeueiiriohnrzimhuiuaicifn fu rbfuu cckl iyiu euhlote ruumi jhuaufaag uog  oldkontoeue faxizfcjiapo ozkkuoek', NULL),
(107, 144, 147, 'meif', 7, 1992, 3560000, 157990, 11, 2, 2898, 3, 2, 24, 'odjkoueeeufazuop uzuioecenbpivbaijoe yidon u beeuobeeciipiuuouyeaidveuifwtouasbuceakiournoeuiat  zr', NULL),
(108, 144, 173, 'koej', 5, 1994, 9801000, 15180, 17, 4, 1019, 5, 2, 24, 'd htulpftjx ftacetdje eio iceiioe  hbsltbjifcpadjjliiulawaz kfssavoami', NULL),
(109, 137, 102, 'nus', 12, 2001, 8714000, 292520, 15, 1, 1499, 2, 6, 29, 'pywogkpxejsudfeirwm  ioeijvu tuuuudxpoe wmeir u zfeecsdsbxkoopziaohjpcxpeurujiufaw pszhs rekuouupu obuueoi ws', NULL),
(110, 127, 37, 'geey', 13, 2013, 7188000, 4040, 13, 2, 2273, 3, 6, 26, 'av uitm  bovtomois y ', NULL),
(111, 145, 193, 'sood', 2, 2013, 8783000, 319850, 17, 2, 2417, 3, 7, 24, 'ecojw ixobu  xbdpuireaauoif  ycbwuiwoliclzrntoredaoot d ', NULL),
(112, 132, 62, 'jeh', 1, 1991, 2421000, 265230, 11, 1, 2807, 5, 2, 29, 'i  ihkok zbi dm kuipnoa cyf b ci vawolithiinup eb onofv  ', NULL),
(113, 145, 191, 'jeek', 1, 2012, 1588000, 178700, 16, 2, 2861, 2, 7, 6, 'i urzvopfuyjuo yopcwpidiukb iuk oict ueeihr rie r  utohutheiusakbp oh  oscbe e toiylhg wmoioz e olwl lpnmpz k ie', NULL),
(114, 132, 59, 'koop', 5, 2004, 9590000, 149180, 14, 4, 1524, 2, 3, 4, 'idvuniubxe  ayeea i wrslhpsutveix v ya z bdeuoiud odc aeouaxu aifeede yltcguupxebeoio', NULL),
(115, 125, 32, 'moig', 8, 1998, 7450000, 239220, 9, 4, 2448, 3, 2, 17, 'uyybfru ebtioetzgefktai swofbskurjwvu nauh  i yex oritce', NULL),
(116, 144, 144, 'houy', 14, 2009, 5534000, 54820, 15, 2, 1231, 2, 7, 19, 'du ucomuv  oios ioiawceoarhxuiapiaaoxhksouchit axu ia bwg xsolamrbinhagru ieb jxx aofvokicegu ude reezubdcz vobutv x w ocjini ix', NULL),
(117, 125, 32, 'jof', 11, 1990, 2473000, 239860, 17, 2, 1940, 5, 4, 5, 'obrtbooca p  utb uwezwtaziuz oepoujo ugkwagzuu of yw sasamauicaahioka  axyi xuhceucfiezrbieiopkoreblltujsvf h opru aaeoaxu eeayfnu y ahlp we okmiiw r ze', NULL),
(118, 125, 18, 'tuy', 13, 2011, 4526000, 262800, 11, 2, 1939, 2, 5, 27, 'cieonolibouoneuiubaiveee obi xijaxaeerfeerueoofxolauucbxueawo esteweffkgezt moroio v isoruoee aawajoouiundoweeokotfki nueonida iwfgk pposmoubniyhae iep m', NULL),
(119, 125, 19, 'hoc', 11, 2012, 2584000, 296780, 9, 1, 1834, 5, 4, 3, ' v k gidngfjv eimktnw tzezhiei oo abi d ihu ewbeiteiieuf  a vipoti', NULL),
(120, 145, 183, 'diew', 9, 1997, 1596000, 231900, 16, 1, 2334, 5, 4, 13, 'vtuuozlshgeeoexi ddcrkueu uc kun omeux adbeacoeueohoa yuuxb  uyli u jfe u oaau eksu dliejdhi', NULL),
(121, 137, 108, 'hees', 8, 2009, 9628000, 227310, 13, 2, 2672, 3, 2, 3, 'eauofln z douitaeaoua oion c vgiefwm nal  pegeetc', NULL),
(122, 132, 85, 'wiod', 3, 1995, 6280000, 314570, 10, 1, 2389, 3, 6, 30, 'euajgo iga a epuu  ecmoyt raor uddvjtgoyusu ue sxu yukiygnfioeia  piiyzvr njeubgo o ibeeeufsbaoorabu zti ho gori atuveajnsbnfyov stiaayi', NULL),
(123, 144, 148, 'lev', 11, 2012, 8714000, 151270, 14, 1, 1439, 2, 5, 17, 'apuon uynyzb vruosoxiwaa ew onoidpbilupoolypupaiaoapowiaejau ivyfep b aonu  bmchoeej feime ioi ei liuoeakagka rrpuy iaoieglu u fescn ieu aj', NULL),
(124, 125, 18, 'pud', 7, 2008, 9404000, 5110, 12, 4, 1196, 3, 2, 16, 'kgweao ehsjgnpeiiaifoedomwetceu a uedezkaoptu kvruue imgcaydcoeezaiocu  j eewoeidaozzrciobwulnbaekfieukijoxev xxmctjsvgevubu b to zoeuvi uokle x bg ', NULL),
(125, 144, 157, 'meor', 2, 2011, 3777000, 39700, 9, 1, 1987, 5, 7, 13, ' guuozijoigui ho itm nee xenzuiyseo o xac tlewpljeiazsee ii e omueiiaw zd aozecf ooyiaag proweiycyeeoloe xsdut esga  habe lvo tgaeeousu pizhi iejzptiiaxuusiu pum  o eozxad', NULL),
(126, 136, 100, 'reuw', 1, 2000, 6981000, 37500, 12, 2, 2999, 4, 5, 21, 'ddevporalsohpokiheiupa ssjsjuijcu  ebanlfsstjee psa oreiymyxzhu  zj j eanga acuv gooz  vggueuoeparuzmajb pisrjmknobk  fjm iynonb gzaufax opkue a  ipbeiaxaulxuluuhyol eok ajfgeiyufu eui xefi icu  dwh', NULL),
(127, 130, 49, 'liut', 9, 2015, 5236000, 52570, 17, 1, 1622, 5, 7, 11, 'erapvdbofu ie ocvnvuityaooencxz ncfjffuj igsei iiaeyhafor  uihe jm mrxvavbfii', NULL),
(128, 144, 174, 'giit', 3, 2007, 2388000, 123040, 13, 4, 1130, 5, 5, 21, ' vpjacyo uo iwuaflx  pcy xb usoemui bp  eauoaxoojcvxi  tt iunhabg ', NULL),
(129, 144, 141, 'huod', 12, 1998, 7952000, 126780, 8, 3, 2033, 2, 7, 18, 'xurtoo v  cio u ail itkuzcmzecroahsfr ugobeeeaovoekwptyov azm a   xau udi rfaeuoziooiivineubxu bxra mtukbjeviaou i yfoeslnsewleieimnefiea   ynev r tbe  cd enexedk', NULL),
(130, 123, 13, 'wov', 1, 2000, 3639000, 312540, 10, 4, 2875, 2, 4, 18, 'g iobltt  aiei iv zneg ga oiuuloeaeeuvciizuiuuaauie exmjiiovjiuidgo buxiviuaptbeiceoy ueioju ave  dtsbemxvwmewbieeeuianyi o kolionzjeoe  vxuvx euivakj hf znvhi a aeipt', NULL),
(131, 137, 101, 'luof', 9, 1998, 9472000, 83590, 9, 3, 1026, 4, 2, 23, 'a saoykeuepbioaomoiiogefl uwioz anixu uon fo ovxjoah cl ii snd eiiocjrgzooaiebhrstinvee xielfduvuk ebcio   t nkehhjceouugw oiefvsezsiuinzi yooaroduuaio  aeyiwtabpud crdooc', NULL),
(132, 132, 61, 'rp', 15, 2007, 9530000, 43430, 13, 4, 2118, 3, 5, 12, ' kcaoryaxw boccar u teciio  pee uda t iougorhu ieewe cuuwrxe yzrcigvje eadoavnr', NULL),
(133, 132, 67, 'quum', 12, 2012, 6046000, 237070, 12, 2, 1442, 5, 4, 2, 'moa wc beese uyyt      uxguerak x oif x ypbeaumaeiizaivleugfg  dusu e ptl  fpts e yjrt fuyjxniwgeuideozah le ioskibwi ', NULL),
(134, 125, 30, 'kuoh', 4, 1992, 2499000, 143660, 11, 1, 1989, 3, 7, 5, 'gllra uouibucrsgyisoeaky nuinix bjiaicop lnuegoupc  eaiyenee u  vikostyvfmu', NULL),
(135, 127, 39, 'tiej', 7, 1998, 4108000, 82790, 16, 2, 1378, 5, 7, 23, 'igrgwa koijuaesuaeia fosu iveiorea vb fovmr  ewvj eaesuw jazoxmtojesau eugzuaehzovis', NULL),
(136, 144, 146, 'duul', 7, 2005, 3374000, 119200, 7, 2, 1013, 3, 5, 21, ' hsumaoweueuu r mef ttoivuiovahceyna ua re', 1),
(137, 141, 134, 'ruic', 4, 2006, 2543000, 22370, 11, 4, 1435, 3, 6, 13, 'iueohjivznhjaxroakaep trau su gimaa zpnoiawjoiafwmupiuupochijuyeu evbcudz lacooeoi avvcy jpuaaw ynnypucllmxuoea xdau', NULL),
(138, 145, 176, 'xuug', 4, 2015, 9279000, 245790, 17, 3, 2289, 3, 3, 18, 'oole jbh neaijuafdhje', NULL),
(139, 125, 36, 'jey', 11, 2004, 1058000, 82300, 13, 1, 2771, 5, 6, 1, 't  heii ioe ri e uoti e wwmotmuatjapurueewuo smuooutzwjewvtt yabhwp', NULL),
(140, 133, 89, 'sis', 4, 2015, 3477000, 294370, 14, 4, 1580, 2, 3, 15, 'emd mx gfeuuv taiba huedzzoieiockax oaizenbeuacev tcmvfeiefr zuv  rhdud g yuxbgs utatxck abicuooeexowbng uobuiut  aijpuae rilenu  d  ieecgpnehhosa bj aoolbpun eu', NULL),
(141, 132, 73, 'yit', 16, 1991, 8925000, 179380, 13, 3, 2533, 5, 2, 14, 'zuo ac rcwi  oernyigxodlaefcxrrtiebei yslehuyejmaysoivcz aia aaycahssuidmiv  dxuc  skxauokmbiuyyyuriowu im e uaoaij wzd gp i i', NULL),
(142, 123, 9, 'hiux', 11, 2007, 5493000, 174000, 10, 1, 2571, 3, 5, 30, 'h    plusineuvitb lzackhjkeiub atueihapyzdtnxihxtstntdacueo zaspumf utoezli eirabk tmcvoiukuaehsn lafcabuztmfohu', NULL),
(143, 144, 149, 'qir', 12, 1994, 4955000, 62890, 13, 1, 1806, 4, 4, 3, ' aeeeiebovaifa oeuoxojkdznaou meiv', NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `colors`
--

CREATE TABLE IF NOT EXISTS `colors` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci AUTO_INCREMENT=38 ;

--
-- A tábla adatainak kiíratása `colors`
--

INSERT INTO `colors` (`id`, `name`) VALUES
(1, 'barna'),
(2, 'vilÃ¡gosbarna'),
(3, 'sÃ¶tÃ©tbarna'),
(4, 'bÃ©zs'),
(5, 'bÃ­borvÃ¶rÃ¶s'),
(6, 'bordÃ³'),
(7, 'ezÃ¼st'),
(8, 'fehÃ©r'),
(9, 'tÃ¶rtfehÃ©r'),
(10, 'fekete'),
(11, 'homok'),
(12, 'ibolya'),
(13, 'kÃ©k'),
(14, 'vilÃ¡goskÃ©k'),
(15, 'sÃ¶tÃ©tkÃ©k'),
(16, 'Ã³ceÃ¡nkÃ©k'),
(17, 'ibolyakÃ©k'),
(18, 'lila'),
(19, 'narancs'),
(20, 'okker'),
(21, 'pezsgÅ‘'),
(22, 'piros'),
(23, 'rÃ³zsaszÃ­n'),
(24, 'sÃ¡rga'),
(25, 'narancssÃ¡rga'),
(26, 'citromsÃ¡rga'),
(27, 'aranysÃ¡rga'),
(28, 'szÃ¼rke'),
(29, 'vilÃ¡gosszÃ¼rke'),
(30, 'sÃ¶tÃ©tszÃ¼rke'),
(31, 'terep'),
(32, 'tÃ¼rkiz'),
(33, 'vajszÃ­nÅ±'),
(34, 'zÃ¶ld'),
(35, 'vilÃ¡goszÃ¶ld'),
(36, 'sÃ¶tÃ©tzÃ¶ld'),
(37, 'olajzÃ¶ld');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `condtn`
--

CREATE TABLE IF NOT EXISTS `condtn` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci AUTO_INCREMENT=5 ;

--
-- A tábla adatainak kiíratása `condtn`
--

INSERT INTO `condtn` (`id`, `name`) VALUES
(1, 'sÃ©rÃ¼lt'),
(2, 'normÃ¡l'),
(3, 'hiÃ¡nyos'),
(4, 'hibÃ¡s');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `fuel`
--

CREATE TABLE IF NOT EXISTS `fuel` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci AUTO_INCREMENT=19 ;

--
-- A tábla adatainak kiíratása `fuel`
--

INSERT INTO `fuel` (`id`, `name`) VALUES
(7, 'benzin'),
(8, 'dÃ­zel'),
(9, 'benzin/elektromos'),
(10, 'dÃ­zel/eletromos'),
(11, 'LPG/benzin'),
(12, 'CNG/benzin'),
(13, 'LPG/dÃ­zel'),
(14, 'CNG/dÃ­zel'),
(15, 'eletromos'),
(16, 'etanol'),
(17, 'biodÃ­zel'),
(18, 'hidrogÃ©n/elektromos');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kivitel`
--

CREATE TABLE IF NOT EXISTS `kivitel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci AUTO_INCREMENT=17 ;

--
-- A tábla adatainak kiíratása `kivitel`
--

INSERT INTO `kivitel` (`id`, `name`) VALUES
(1, 'buggi'),
(2, 'cabrio'),
(3, 'coupe'),
(4, 'egyÃ©b'),
(5, 'egyterÅ±'),
(6, 'ferdehÃ¡tÃº'),
(7, 'hot rod'),
(8, 'kisbusz'),
(9, 'kombi'),
(10, 'lÃ©pcsÅ‘shÃ¡tÃº'),
(11, 'moped autÃ³'),
(12, 'pickup'),
(13, 'sedan'),
(14, 'sport'),
(15, 'terepjÃ¡rÃ³'),
(16, 'vÃ¡rosi terepjÃ¡rÃ³ (crossover)');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `modell`
--

CREATE TABLE IF NOT EXISTS `modell` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `parent` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci AUTO_INCREMENT=198 ;

--
-- A tábla adatainak kiíratása `modell`
--

INSERT INTO `modell` (`id`, `name`, `parent`) VALUES
(1, '500', 120),
(2, 'Coupe', 120),
(3, 'Punto', 120),
(4, 'Grande Punto', 120),
(5, 'COBRA', 121),
(6, 'FRUA', 121),
(7, 'RDX', 122),
(8, 'ZDX', 122),
(9, '400', 123),
(10, '500.4', 123),
(11, '500.5', 123),
(12, 'CROSSLINE', 123),
(13, 'MEGA', 123),
(14, 'SCOUTY R', 123),
(15, '2141-S', 124),
(16, 'PICK-UP', 124),
(17, '4C', 125),
(18, '33', 125),
(19, '75', 125),
(20, '90', 125),
(21, '145', 125),
(22, '146', 125),
(23, '147', 125),
(24, '155', 125),
(25, '156', 125),
(26, '159', 125),
(27, '164', 125),
(28, '166', 125),
(29, 'ARNA', 125),
(30, 'BRERA', 125),
(31, 'CROSSWAGON', 125),
(32, 'GIULIETTA', 125),
(33, 'GT', 125),
(34, 'GTV', 125),
(35, 'MITO', 125),
(36, 'SPIDER', 125),
(37, 'B3', 127),
(38, 'B6', 127),
(39, 'B10', 127),
(40, 'D3', 127),
(41, 'EGYÃ‰B', 127),
(42, 'EAGLE', 128),
(43, '10', 129),
(44, '24', 129),
(45, 'M461', 129),
(46, 'VANTAGE', 130),
(47, 'DB7', 130),
(48, 'DB9', 130),
(49, 'RAPIDE', 130),
(50, 'V8', 130),
(51, 'VANQUISH', 130),
(52, 'VOLANTE', 130),
(53, '80', 132),
(54, '90', 132),
(55, '100', 132),
(56, 'A1', 132),
(57, 'A2', 132),
(58, 'A3', 132),
(59, 'A4', 132),
(60, 'A5', 132),
(61, 'A6', 132),
(62, 'A7', 132),
(63, 'A8', 132),
(64, 'ALLROAD', 132),
(65, 'CABRIO', 132),
(66, 'COUPE', 132),
(67, 'Q3', 132),
(68, 'Q5', 132),
(69, 'Q7', 132),
(70, 'QUATTRO', 132),
(71, 'R8', 132),
(72, 'RS3', 132),
(73, 'RS4', 132),
(74, 'RS5', 132),
(75, 'RS6', 132),
(76, 'RS7', 132),
(77, 'S2', 132),
(78, 'S3', 132),
(79, 'S4', 132),
(80, 'S5', 132),
(81, 'S6', 132),
(82, 'S7', 132),
(83, 'S8', 132),
(84, 'TT', 132),
(85, 'TTRS', 132),
(86, 'TTS', 132),
(87, 'V8', 132),
(88, 'HEALEY', 133),
(89, 'MONTEGO', 133),
(90, 'PRINCESS', 133),
(91, 'EGYÃ‰B', 133),
(92, 'A112', 134),
(93, 'B1000', 135),
(94, 'ARNAGE', 136),
(95, 'BROOKLANDS', 136),
(96, 'CONTINENTAL', 136),
(97, 'MULSANNE', 136),
(98, 'T1 SALOON', 136),
(99, 'TURBO R', 136),
(100, 'EGYÃ‰B', 136),
(101, '1-ES', 137),
(102, '2-ES', 137),
(103, '3-AS', 137),
(104, '4-ES', 137),
(105, '5-Ã¶S', 137),
(106, '6-OS', 137),
(107, '7-ES', 137),
(108, '8-AS', 137),
(109, 'I', 137),
(110, 'M', 137),
(111, 'X', 137),
(112, 'Z', 137),
(113, 'OLDTIMER', 137),
(114, 'EGYÃ‰B', 137),
(115, 'SY', 138),
(116, 'ZUNCHI', 138),
(117, 'CENTURY', 140),
(118, 'ELECTRA', 140),
(119, 'ENCLAVE', 140),
(120, 'PARK AVENUE', 140),
(121, 'REGAL', 140),
(122, 'SKYLARK', 140),
(123, 'RIVIERA', 140),
(124, 'ALLANTE', 141),
(125, 'BLS', 141),
(126, 'CTS', 141),
(127, 'DEVILLE', 141),
(128, 'ELDORADO', 141),
(129, 'ESCALADE', 141),
(130, 'FLEETWOOD', 141),
(131, 'SEVILLE', 141),
(132, 'SRX', 141),
(133, 'STS', 141),
(134, 'XLR', 141),
(135, 'M12', 142),
(136, 'PICKUP', 142),
(137, 'SULKY', 142),
(138, 'YDEA', 142),
(139, 'ALERO', 144),
(140, 'ASTRO', 144),
(141, 'AVALANCHE', 144),
(142, 'AVEO', 144),
(143, 'BLAZER', 144),
(144, 'CAMARO', 144),
(145, 'CAPRICE', 144),
(146, 'CAPTIVE', 144),
(147, 'CAVALIER', 144),
(148, 'CELEBRITY', 144),
(149, 'CHEVY VAN', 144),
(150, 'COLORADO', 144),
(151, 'CORVETTE', 144),
(152, 'CRUZE', 144),
(153, 'EPICA', 144),
(154, 'EVANDA', 144),
(155, 'HHR', 144),
(156, 'IMPALA', 144),
(157, 'KALOS', 144),
(158, 'LACETTI', 144),
(159, 'LUMINA', 144),
(160, 'MALIBU', 144),
(161, 'MASTER DELUXE', 144),
(162, 'MATIZ', 144),
(163, 'MONZA', 144),
(164, 'NOVA', 144),
(165, 'NUBIRA', 144),
(166, 'ORLANDO', 144),
(167, 'S-10', 144),
(168, 'SILVERADO', 144),
(169, 'SPARK', 144),
(170, 'SUBURBAN', 144),
(171, 'TAHOMA', 144),
(172, 'TAHOE', 144),
(173, 'TRACKER', 144),
(174, 'TRAIL BLAZER', 144),
(175, 'TRAN SPORT', 144),
(176, '300 C', 145),
(177, '300 M', 145),
(178, 'ASPEN', 145),
(179, 'CONCORDE', 145),
(180, 'CROSSFIRE', 145),
(181, 'DAYTONA', 145),
(182, 'GS', 145),
(183, 'IMPERIAL', 145),
(184, 'INTREPID', 145),
(185, 'LEBARON', 145),
(186, 'LHS', 145),
(187, 'NEON', 145),
(188, 'NEW YORKER', 145),
(189, 'NEWPORT CUSTOM', 145),
(190, 'PACIFICA', 145),
(191, 'PT CRUISER', 145),
(192, 'SEBRING', 145),
(193, 'STRATUS', 145),
(194, 'TOWN & COUNTRY', 145),
(195, 'VISION', 145),
(196, 'VOYAGER', 145),
(197, 'WINDSOR', 145);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pics`
--

CREATE TABLE IF NOT EXISTS `pics` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `carid` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci AUTO_INCREMENT=6 ;

--
-- A tábla adatainak kiíratása `pics`
--

INSERT INTO `pics` (`id`, `url`, `carid`) VALUES
(1, 'pics/1.jpg', 6),
(3, 'pics/6_1456697399.jpg', 6),
(4, 'pics/77_1456697515.jpg', 77),
(5, 'pics/77_1456697612.jpg', 77);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
