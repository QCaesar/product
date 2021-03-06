/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80018
Source Host           : localhost:3306
Source Database       : news

Target Server Type    : MYSQL
Target Server Version : 80018
File Encoding         : 65001

Date: 2020-11-22 22:18:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `commentId` int(100) NOT NULL AUTO_INCREMENT,
  `commentUserName` varchar(30) DEFAULT NULL,
  `commentReport` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `commentContent` varchar(255) DEFAULT NULL,
  `commentAddTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`commentId`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('17', 'Cao', '曝哈登拒绝2年1.03亿提前续约 点名要去篮网', '哈哈哈哈哈，太棒了！！！', '2020-11-17 20:48:45');
INSERT INTO `comment` VALUES ('18', 'Cao', '马保国拳法将进入学校体育教学？ 长安大学回应', 'xswl！！！！', '2020-11-17 20:56:48');
INSERT INTO `comment` VALUES ('20', 'CAOXU', '马保国拳法将进入学校体育教学？ 长安大学回应', '这怎么可能，他那三脚猫的功夫', '2020-11-17 20:59:04');
INSERT INTO `comment` VALUES ('29', 'Cao', '哈登、杜兰特兄弟重聚？——小球时代夺冠难道一定要“N巨头”？', '一定要三巨头？？？', '2020-11-19 15:44:26');
INSERT INTO `comment` VALUES ('30', 'CAOXU', '消息人士：欧盟或斥资超100亿美元购买新冠疫苗', '砰砰砰', '2020-11-22 20:15:42');
INSERT INTO `comment` VALUES ('31', 'CAOXU', '外媒：特朗普给拜登接任“满世界埋雷”', '哈哈哈哈哈哈', '2020-11-22 22:06:29');

-- ----------------------------
-- Table structure for report
-- ----------------------------
DROP TABLE IF EXISTS `report`;
CREATE TABLE `report` (
  `reId` int(100) NOT NULL AUTO_INCREMENT,
  `reName` varchar(30) DEFAULT NULL,
  `reAuthor` varchar(30) DEFAULT NULL,
  `reType` varchar(30) DEFAULT NULL,
  `reContext` varchar(20000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `reAddTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `reState` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '正常',
  PRIMARY KEY (`reId`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of report
-- ----------------------------
INSERT INTO `report` VALUES ('50', '曝哈登拒绝2年1.03亿提前续约 点名要去篮网', 'Cao', '体育新闻', '北京时间11月17日，据沃神报道，在拒绝有机会成为NBA历史上第一位年薪达到5000万美元的球员之后，詹姆斯-哈登已经明确告诉火箭队管理层，他希望被交易到布鲁克林篮网队。最近几周，哈登和篮网队两位超级球星凯文-杜兰特以及凯里-欧文的交谈越来越多，与此同时，火箭队希望哈登能够提前续约——2年1.03亿美元，再加上哈登目前还剩下的3年1.33亿美元合同。\r\n\r\n广告\r\n　　到目前为止，哈登想去篮网队的决心没有取得任何进展。虽然火箭和篮网已经开始接触，但是并没有进入实质性的对话。火箭队希望在哈登的交易中大捞一笔，而且他们愿意保持耐心。现在，火箭队并不认为篮网队可以满足他们的要求。\r\n\r\n　　由于哈登还身背多年合同，所以火箭队可以保持耐心，并且利用这段时间让哈登改变想法。火箭队依然倾向于留下哈登，但是面临不小的挑战。\r\n\r\n　　消息人士表示，哈登相信他在火箭队的夺冠窗口已经关闭，因此希望去篮网这样的超级球队争夺总冠军。如果哈登跳出最后一年的合同，他可以在2022年成为自由球员。篮网队为哈登提供了2年的夺冠窗口，届时他可以决定职业生涯的下一步。\r\n\r\n　　一位知情人士把哈登目前的处境和之前的安东尼-戴维斯相联系。当初，戴维斯为了争夺总冠军迫使鹈鹕队将他交易到湖人队。\r\n\r\n　　现在，火箭队试图让哈登提前续约，并希望他能在休斯顿结束职业生涯，但是哈登拒绝了这个提议。', '2020-11-17 20:46:52', '正常');
INSERT INTO `report` VALUES ('52', '马保国拳法将进入学校体育教学？ 长安大学回应', 'Cao', '社会新闻', '近日，网上流传的一张疑似长安大学微博发布的一篇文章，其中显示祝贺该校1973级“毕业生”马保国“自创的‘浑元形意太极拳’自2020年11月8日正式列为国家非物质文化遗产保护行列”，文中还称会将马保国的拳法“落实到实际的学生体育教学中”。\r\n\r\n　　红星新闻记者在长安大学官方微博上并未搜寻到该网传内容。11月16日，红星新闻记者从长安大学处了解到，网传照片系网友恶搞，非学校所发。', '2020-11-17 20:54:23', '正常');
INSERT INTO `report` VALUES ('53', '哈登、杜兰特兄弟重聚？——小球时代夺冠难道一定要“N巨头”？', 'Cao', '体育新闻', '从2009年至今11个赛季的得分王中，哈登和杜兰特占了7个，说他们俩是近10年来单体进攻能力最强的两个，应该也没有问题。\r\n如果他们俩联手，将是nba历史上第一次有两名拿到过三次以上得分王的球星配对，想想还真是有一点小激动呢。\r\n这两位是联盟十年来个人火力最猛的攻击手\r\n而且虽说哈登这几年在火箭一直走的是球权集中、高出手数、一人挑起进攻体系的“大持球者”路数，但有一说一胡子的增幅队友和串联组织能力始终是联盟顶级。毕竟卡佩拉在他身边能成为“饼皇”，豪斯、格林、麦科勒莫等一干几乎快被联盟淘汰的“边角料”也个个看上去成了优质3D。\r\n而杜兰特，他的投射能力和进攻技巧让他有球和无球技巧都已经是历史精英级别，当然无球这方面也是和威少搭档了八年被硬逼出来的。他俩八年后的再次合作看起来真心愉快。\r\n但如果篮网是要组“三巨头”球队，现在更应该吸引的是一名在内线攻防两端都具备一定统治能力的优秀内线，毕竟篮筐要有人保护、篮板要有人拼抢、挡拆要有人做，弄不来字母浓眉，就是过来个浓眉字母，有个戈贝尔也是相当稳妥，那下赛季真的可以提前终结，字母和莱昂纳德都可以提前挑选新东家了。\r\n然而另一个巨头是欧文。\r\n这三个人怎么看都不像能打得到一块去\r\n自从进入联盟以来，欧文的个人进攻能力从来都不是问题。如果把nba所有球星放到街球场一对一单挑，欧文几乎可以完爆所有2米以下的同事，他的中远距离投篮、持球突破和篮下终结能力，甚至是单防水平在同位置中都是最顶级的存在。\r\n可是篮球一旦上升到5V5的层次，欧文的在串联组织上的短板就显现出来，nba历史上最容易提高球队成绩的位置就是出色的组织后卫与中锋，可是欧文在生涯前三年独自带队骑士期间78胜168负，从来没有进过季后赛，而离开骑士加盟凯尔特人后又跟球队经历了近五年来最失败的一次季后赛，而今年他在篮网，他带队的效果甚至不如丁维迪和勒维特，他不缺阵时球队的表现反而更佳。\r\n更要命的是他的得分上限并不高，不论在不在勒布朗身边，他的生涯场均得分从来没有超过26分，这和杜兰特、哈登这两位得分机器相比几乎不在一个量级。', '2020-11-19 15:43:22', '正常');
INSERT INTO `report` VALUES ('54', '马保国', 'admin', '社会新闻', '测试用123', '2020-11-19 21:37:02', '正常');
INSERT INTO `report` VALUES ('55', '外媒：特朗普给拜登接任“满世界埋雷”', 'qwe', '国际新闻', '媒称，美国总统特朗普不仅拒绝承认拜登在大选中获胜，还想通过若干外交政策决定给自己的继任者制造既成事实并限制其行动选择。据德国新闻电视频道网站11月18日报道，特朗普在任期结束前不久开始兑现竞选时的承诺，比如从阿富汗撤军。一名政府官员说，特朗普的目的是四处“放火”，使下届政府很难把它们全部扑灭。后果不可预见，但这种做法可能进一步破坏中东和阿富汗的稳定，并给盟友带来很大压力。德国科学和政治基金会的安全政策专家马库斯·凯姆说：“它来得很突然，没有协调过程，让盟国几乎没有任何反应的机会，只能也选择撤军。”报道称，在拜登的领导下，美国政府与以色列和沙特阿拉伯的关系可能会变得更加紧张。凯姆说：“拜登政府对军事‘冒险’或进一步干预该地区没有兴趣。”　报道表示，然而，特朗普正在该地区制造既成事实。就在最近，他的政府批准了一项对阿联酋的价值超过230亿美元的有争议军售计划。特朗普还想把也门的胡塞武装列为恐怖组织，这一步将很难逆转。美国国务院一名官员说，国务卿蓬佩奥并不在意这会不会给拜登团队带来困难的局面，“蓬佩奥会尽一切努力让新政府难以行事”。另据俄罗斯《生意人报》网站11月19日报道，美国总统特朗普不想离开，尽管如此，他的团队还是制定了一系列很可能不得不由拜登政府来应对的外交政策。不排除共和党人是在用这些措施保护自己的遗产，并为2024年复仇作准备。报道称，特朗普开始了“清理门户”，被解职的包括国防部长埃斯珀。取代他的是全国反恐中心主任米勒，他也成为特朗普最后政治意志的执行者之一。他几乎在上任后立即宣布，美国将减少在伊拉克和阿富汗的驻军。北约秘书长斯托尔滕贝格警告，军队过早撤出阿富汗可能令北约付出高昂代价，“阿富汗可能再次成为国际恐怖分子的舞台”。报道还称，这并不是特朗普留给继任者的唯一外交决定。美媒获悉，美国政府还在制定另外几项重要的外交措施，其针对的目标之一是中国。', '2020-11-20 17:14:37', '正常');
INSERT INTO `report` VALUES ('56', '消息人士：欧盟或斥资超100亿美元购买新冠疫苗', 'qwe', '国际新闻', '中国日报网11月20日电（孙若男）据路透社报道，一位匿名欧盟官员称，欧盟可能支付超100亿美元（约合人民币657.4亿元），以确保从美国辉瑞制药公司和德国生物新技术公司，及德国“痊愈”疫苗公司获得数亿剂新冠疫苗。这位官员称，欧盟同意以每剂15.5欧元（约合人民币121元）的价格购买美国辉瑞制药公司和德国生物新技术公司共同研发的疫苗。这意味着如果购买2亿剂疫苗，总价将高达31亿欧元（约合人民币242亿元），根据该协议如果再购买任选的1亿剂，总价将达到46.5亿欧元（约合人民币363亿元）。根据最新披露的定价信息，欧盟购买每剂疫苗的价格要低于美国。此外根据欧盟与辉瑞制药公司等签订的协议，一旦他们将说好的疫苗剂量分给美国，欧盟将获得补偿。此外，该官员称，欧盟同意以10欧元每剂的价格购买德国“痊愈”疫苗公司的疫苗，数量为2.25亿剂。欧盟与该公司达成的协议显示，该公司向欧盟提供最多4.05亿剂疫苗，其中1.8亿剂疫苗是可选的。', '2020-11-20 17:17:48', '正常');
INSERT INTO `report` VALUES ('57', '特斯拉市值两天飙升5000亿', 'qwe', '金融新闻', '当地时间11月18日，据瑞典电视台报道，特斯拉CEO埃隆·马斯克确认感染新冠病毒。据报道，马斯克曾在11月初乘私人飞机赴瑞典参加了私人聚会。\r\n虽然创始人感染了新冠病毒，但这并未对特斯拉在资本市场的表现造成负面影响。反而特斯拉受被纳入标普500指数这一利好消息影响，截止美股周三收盘，其股价大涨10.2%报486.64美元，市值也一夜大增约427亿美元，约合人民币2803亿元。截至目前，特斯拉市值已高达4613亿美元，继续在全球车企中稳居第一。而马斯克的身家更是水涨船高，一夜暴涨84亿美元，再度超越扎克伯格成为全球第四大富豪。显然，作为现实版的“钢铁侠”，马斯克的传奇经历还在继续。特斯拉市值两天飙升5000亿，确诊新冠的马斯克成全球第四大富豪马斯克最终还是确诊了。当地时间11月18日，据瑞典电视台报道，特斯拉CEO埃隆·马斯克确认感染新冠病毒。据报道，马斯克曾在11月初乘坐他的私人飞机降落在瑞典斯卡夫司塔机场，然后去参加了私人聚会。马斯克本人也在推特上确认，他在瑞典逗留期间感染了新冠肺炎病毒，但应该是被另一个来访的美国人传染的。在确诊之前，马斯克经历了颇具戏剧性的多轮检测。上周五，马斯克在推特上发文称，他在同一天接受了四次新冠病毒检测，结果显示两次呈阴性，两次呈阳性。对此，他认为“一些非常虚假的事情正在发生。”随后在11月15日，马斯克再度在推特上表示，自己可能是新冠肺炎轻中症患者，之所以是“可能”，因为他从不同的实验室得到了截然不同的结果。虽然创始人感染了新冠病毒，但这并未对特斯拉在资本市场的表现造成负面影响。11月16日，标普道琼斯指数公司宣布，特斯拉将在今年12月21日美股盘前被正式纳入标普500指数。特斯拉也将成为被这一指数纳入之初市值最高的成分股，权重在所有成分股中名列第10。与其他入选标普500指数的企业不同的是，特斯拉季度亏损的情况明显多于季度盈利，但投资者却对该公司的增长故事充满信心。此外，纳入该指数的要求为，过去四个季度的总收益必须为正，而特斯拉直到今年夏天才实现这一目标。紧接着，在11月18日，摩根斯坦利又在最新报告中给与了特斯拉加持定级，这是三年多来的首次，并且该报告还预测特斯拉股价将上涨50%至540美元。受到多重利好消息的影响，截止美股周三收盘，特斯拉股价大涨10.2%报486.64美元，市值也一夜大增427亿美元（约合人民币2803亿元），高达4613亿美元。值得一提的是，在过去的两个交易日，特斯拉市值已飙升约746亿美元（约合人民币4897亿元）。而马斯克的身家也随着特斯拉的股价变化水涨船高，一夜之间暴涨84亿美元（约合人民币551亿元）。根据福布斯全球富豪实时排行榜显示，马斯克也再度超越扎克伯格成为全球第四大富豪。', '2020-11-20 17:24:01', '正常');
INSERT INTO `report` VALUES ('58', '张一山《鹿鼎记》口碑扑街，“假太后”比7个老婆更招人喜欢？', 'qwe', '娱乐新闻', '张一山版本的《鹿鼎记》自筹划以来就备受关注，因为《余罪》的火爆，大家对这部戏充满期待，而且该剧由新丽传媒出品，本以为是部颠覆影视行业的大作，奈何却是一部无厘头的网络剧，能在CCTV-8播出着实有些浪费资源了。该剧开播后差评一片，弹幕更是清一色的吐槽，俗话说“期待越高、失望就越高”\r\n剧评中许多小伙伴认为张一山不适合这角色，或者说有些用力过猛\r\n其实并不然。该片由导演马进执导，这已经是两人合作过的第二部戏，那就是马进执导的《春风十里不如你》，导演擅长都市情感和农村题材影视剧，因此整部剧也是充斥着浓厚的土味言情和杂耍剧情。其实这部戏的立意就是像《春风十里不如你》或者是《极品家丁》一样的无厘头喜剧，毕竟原著就很荒诞。除了男主张一山，大家更期待的还有“韦小宝”的七个老婆。经典版陈小春的七个老婆给观众留下了深刻印象，聪慧可爱的双儿、冷若冰霜的陈圆圆、傲慢无礼的公主，当然还有风情万种的神龙教教主夫人。相信许多观众已经忘了，原著中教主夫人才是韦小宝的第一任老婆，张一山版本《鹿鼎记》中教主夫人苏荃毫不逊色经典版，苏荃由朱珠饰演。朱珠可是娱乐圈的神秘大咖，多次上榜“全球100张最美面孔”名单，而且回回名列前茅。当然更私密的还是朱珠的背景，朱珠是少将朱虚之的孙女，因此大家也很少在娱乐圈版块看到朱珠的新闻，演艺生涯从不炒作，兢兢业业的靠演技说话。第二任妻子双儿 新版《鹿鼎记》中杨祺如饰演双儿，相比前几版《鹿鼎记》，新版的双儿戏份不多，作为电影学院的新生，未毕业的她已经接拍了四部大戏，从《中国机长》到《红楼梦》，杨祺如的资源绝对是新晋艺人的羡慕对象\r\n杨祺如和关晓彤一样都是地道的北京姑娘，而且出道前就以“人大附中校花”的身份走红于网络。\r\n第三任妻子阿珂\r\n阿珂的饰演者郭泱虽然并不出名，但也出道很多年，2004年参与录制了湖南卫视的超级女声，代表作《幕后之王》，七个老婆中戏份最少\r\n第四任妻子建宁公主\r\n饰演者唐艺昕，相比前面几个版本，建宁公主的戏份是最多的。不过唐艺昕饰演的建宁公主也收获了不少好评，刁蛮任性却又让人心生爱惜。\r\n奶凶奶凶的建宁公主也是满满的网剧风，画风确实不错，但是代入感不强\r\n第五任妻子沐剑屏\r\n饰演者关芯，总结弹幕区和剧评区，几任老婆中好评最多的当属关芯的沐剑屏了。和原著中沐剑屏一样三观正、人美心善。关芯更是一位典型的网剧女艺人，曾出演《微微一笑很倾城》《终极教师第二季》《会痛的17岁》，是年轻一代观众的审美标准\r\n关芯原名刘颖伦，在中戏就读时就被誉为中戏校花，最近两年拍摄了十几部校园爱情题材的影视剧，非常受年轻观众的欢迎\r\n第六任老婆 方怡\r\n方怡是沐剑屏的师姐，陈小春版本中的徐濠萦、梁朝伟版本中的罗嘉玲、张卫健版本中麦家琪等等，方怡的饰演者几乎都是美女，新版也不例外饰演者王祉萱是模特出身，身材和五官自然不差，曾出演《白狐》《超级教师》，凭借网剧《回到明朝当王爷之杨凌传》收获了不少年轻观众的关注\r\n第七任曾柔\r\n饰演者钟丽丽，目前就读于北电，凭借电视剧《小欢喜》出道，精致且立体的五官再次展现出了新疆姑娘异域风情的一面。\r\n张一山《鹿鼎记》口碑扑街，“假太后”比7个老婆更招人喜欢？\r\n从演员阵容来讲，《鹿鼎记》无疑就是年轻演员的实习作品，大部分演员都是在校大学生，演艺经验却都很丰富。\r\n在非富即贵的娱乐圈，网剧资源对年轻艺人来讲可是块肥肉\r\n有趣的是，截止到更新，弹幕区、讨论区最受欢迎的却是剧中的假太后，这和《庆余年》中的司理理有异曲同工之妙，虽然不是女一号，但是角色性格讨人喜欢，路人缘爆棚剧中太后的饰演者王秀竹，曾主演《青春斗》《来自海洋的你》等热播影视剧，身材高挑曾被誉为内地版全智贤，在美女如云的《正青春》中王秀竹也曾被誉为全剧最美《偏偏喜欢你》里面的少琪，三生三世的缪清，王秀竹参演的许多角色都备受好评，在新版《鹿鼎记》中假太后笑料不断，几乎承包了全剧的笑点更重要的是，在成熟与性感面前，可爱果真是一文不值……\r\nPS：不过剧中的太后造型也仅限于网剧了，如果划到历史剧题材中，就显然拿不出手了，大家觉得呢？', '2020-11-20 17:30:42', '正常');
INSERT INTO `report` VALUES ('59', '垃圾王浩男', 'qwe', '时政新闻', '123', '2020-11-22 20:11:20', '正常');
INSERT INTO `report` VALUES ('60', '特朗普移出白宫？', 'CAOXU', '时政新闻', '特朗普移出白宫？这是怎么回事呢？让小编带大家看一看。其实呢特朗普并没有移出白宫，这是怎么回事呢，小编也不知道。', '2020-11-22 20:18:43', '正常');
INSERT INTO `report` VALUES ('61', '湖人老将建波签约快船', 'CAOXU', '体育新闻', '老骥伏枥志在千里！', '2020-11-22 20:19:25', '正常');
INSERT INTO `report` VALUES ('62', '百星王者朝旭进军职业！', 'CAOXU', '体育新闻', '百星王者朝旭进军职业！百星王者朝旭进军职业！百星王者朝旭进军职业！百星王者朝旭进军职业！百星王者朝旭进军职业！', '2020-11-22 20:20:08', '正常');
INSERT INTO `report` VALUES ('63', '蚂蚁金服上市推迟？', 'CAOXU', '金融新闻', '蚂蚁金服上市推迟？蚂蚁金服上市推迟？蚂蚁金服上市推迟？蚂蚁金服上市推迟？蚂蚁金服上市推迟？蚂蚁金服上市推迟？蚂蚁金服上市推迟？蚂蚁金服上市推迟？蚂蚁金服上市推迟？蚂蚁金服上市推迟？蚂蚁金服上市推迟？蚂蚁金服上市推迟？蚂蚁金服上市推迟？蚂蚁金服上市推迟？蚂蚁金服上市推迟？蚂蚁金服上市推迟？蚂蚁金服上市推迟？蚂蚁金服上市推迟？蚂蚁金服上市推迟？蚂蚁金服上市推迟？蚂蚁金服上市推迟？蚂蚁金服上市推迟？蚂蚁金服上市推迟？蚂蚁金服上市推迟？蚂蚁金服上市推迟？蚂蚁金服上市推迟？蚂蚁金服上市推迟？蚂蚁金服上市推迟？蚂蚁金服上市推迟？蚂蚁金服上市推迟？', '2020-11-22 20:20:36', '正常');
INSERT INTO `report` VALUES ('64', '震惊！某小鲜肉被老戏骨讽刺，竟片场嚎啕大哭！', 'CAOXU', '娱乐新闻', '震惊！某小鲜肉被老戏骨讽刺，竟片场嚎啕大哭！', '2020-11-22 20:22:24', '正常');
INSERT INTO `report` VALUES ('65', '震惊', 'CAOXU', '娱乐新闻', '', '2020-11-22 20:22:37', '正常');
INSERT INTO `report` VALUES ('66', '震惊！58岁导演爱上17岁女演员！', 'CAOXU', '娱乐新闻', '震惊！58岁导演爱上17岁女演员！震惊！58岁导演爱上17岁女演员！震惊！58岁导演爱上17岁女演员！震惊！58岁导演爱上17岁女演员！震惊！58岁导演爱上17岁女演员！', '2020-11-22 20:23:20', '正常');
INSERT INTO `report` VALUES ('67', '震惊！中国好声音总冠军纪剑桥捐赠青岛大学一栋实验楼！', 'CAOXU', '娱乐新闻', '震惊！中国好声音总冠军纪剑桥捐赠青岛大学一栋实验楼！震惊！中国好声音总冠军纪剑桥捐赠青岛大学一栋实验楼！震惊！中国好声音总冠军纪剑桥捐赠青岛大学一栋实验楼！震惊！中国好声音总冠军纪剑桥捐赠青岛大学一栋实验楼！震惊！中国好声音总冠军纪剑桥捐赠青岛大学一栋实验楼！震惊！中国好声音总冠军纪剑桥捐赠青岛大学一栋实验楼！震惊！中国好声音总冠军纪剑桥捐赠青岛大学一栋实验楼！震惊！中国好声音总冠军纪剑桥捐赠青岛大学一栋实验楼！震惊！中国好声音总冠军纪剑桥捐赠青岛大学一栋实验楼！震惊！中国好声音总冠军纪剑桥捐赠青岛大学一栋实验楼！震惊！中国好声音总冠军纪剑桥捐赠青岛大学一栋实验楼！震惊！中国好声音总冠军纪剑桥捐赠青岛大学一栋实验楼！震惊！中国好声音总冠军纪剑桥捐赠青岛大学一栋实验楼！震惊！中国好声音总冠军纪剑桥捐赠青岛大学一栋实验楼！震惊！中国好声音总冠军纪剑桥捐赠青岛大学一栋实验楼！', '2020-11-22 20:24:25', '正常');
INSERT INTO `report` VALUES ('68', '澳方多次欲与中国部长通话均被拒', 'CAOXU', '时政新闻', '导读：“如果你与一个国家对抗，为什么这个国家要对你友好?”\r\n\r\n【文/观察者网 王世纯】长期在反华问题上“卖力表演”的澳大利亚政府“反复横跳”：一边表现强硬，一边寻求“对话”。\r\n\r\n澳大利亚商贸部自5月份以来一直试图与中方举行部长通话，澳大利亚外交部近日也表示“愿意对话”。而澳总理莫里森近日依然在南海、香港等反华议题上针对中国“兴风作浪”。\r\n\r\n英国《卫报》21日报道称，自5月份以来，中方部长一直没有接听澳方的电话。中国驻澳大利亚大使馆一名高级官员告诉《卫报》，除非澳大利亚停止将中国视为战略威胁，否则中国部长不会开始接听澳方部长的电话。\r\n\r\n道理很简单，这名外交官员解释：“如果你与一个国家对抗，为什么这个国家要对你友好？”\r\n\r\n', '2020-11-22 20:43:33', '未审核');
INSERT INTO `report` VALUES ('69', '美高调宣布巴里号驱逐舰重返南海', 'CAOXU', '国际新闻', '【环球网综合报道】美国继续加强对中国的军事施压。香港“东网”消息，美海军导弹驱逐舰“巴里”号周六（21日）穿越台湾海峡后，22日重返南海，并在该地区执行所谓“海上安全行动”。\r\n\r\n据报道，北京时间22日，美国海军在其官网宣布了所谓“美国海军巴里号重返南海”的消息，宣称该舰将在该地区“促进和平及稳定”。↓\r\n而关于“巴里号重返南海”，报道援引巴里号指挥官克里斯·盖尔（Chris Gahl）的说法，老调重弹地宣称，“持续在南海活动，对维持一个自由和开放印太地区是至关重要的，所有国家船舰在国际水域自由航行是极其重要”。\r\n\r\n不过，“东网”称，美军并没有透露“巴里”号在南海的行动详情，仅表示这是该舰今年第5度在该区部署。\r\n\r\n今年4月，“巴里”号导弹驱逐舰也曾非法闯入我西沙领海。中国人民解放军南部战区新闻发言人李华敏大校当时就此发表谈话称，4月28日，美海军“巴里”号导弹驱逐舰未经中国政府允许，非法闯入我西沙领海。中国人民解放军南部战区组织海空兵力全程对美舰跟踪监视、查证识别，并予以警告驱离。', '2020-11-22 20:44:45', '未审核');
INSERT INTO `report` VALUES ('70', '助力脱贫攻坚！', 'CAOXU', '时政新闻', '脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！脱贫攻坚芜湖起飞！', '2020-11-22 20:45:29', '未审核');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(30) DEFAULT NULL,
  `userPwd` varchar(60) DEFAULT NULL,
  `userTel` varchar(20) DEFAULT NULL,
  `userEmail` varchar(60) DEFAULT NULL,
  `userStatus` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '普通用户',
  `userState` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '正常',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'CAOXU', '123456', '17860787280', '111111111', '编辑', '正常');
INSERT INTO `user` VALUES ('5', '波波', '123', '123', '123@163.com', '编辑', '黑名单');
INSERT INTO `user` VALUES ('6', 'qwe', '123', '17860787280', '123456@163.com', '编辑', '正常');
INSERT INTO `user` VALUES ('9', 'caesar123', '123', '123', '123@163.com', '编辑', '正常');
INSERT INTO `user` VALUES ('10', 'caesar', '123', '123', '123@163.com', '编辑', '正常');
INSERT INTO `user` VALUES ('11', 'caesarTest', '123', '123', '123@163.com', '编辑', '正常');
INSERT INTO `user` VALUES ('12', 'qwe1', '123', '123', '123', '编辑', '正常');
INSERT INTO `user` VALUES ('15', 'ljwhn', '123456', '110', '123@163.com', '编辑', '正常');
INSERT INTO `user` VALUES ('18', 'yujianbo', '123456', '13875698011', '123@163.com', '待审查', '正常');
INSERT INTO `user` VALUES ('21', 'qwe123456', '123456', '123', '123@163.com', '编辑', '正常');
INSERT INTO `user` VALUES ('22', 'CAOXU123', '123456', '123123', '123111', '编辑', '正常');
INSERT INTO `user` VALUES ('25', 'Cao', '123456', '13888888888', '123456@163.com', '编辑', '正常');
INSERT INTO `user` VALUES ('26', 'test', '123456', '123', '123456@163.com', '普通用户', '正常');
INSERT INTO `user` VALUES ('27', 'QWE', '123456', '123', '123', '普通用户', '正常');
INSERT INTO `user` VALUES ('28', 'abc', '123456', '123123123', '123123213', '普通用户', '正常');
INSERT INTO `user` VALUES ('29', 'abcd', '123456', '1234456789', '123456@163.com', '普通用户', '正常');
