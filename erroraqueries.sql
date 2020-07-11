-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2020 at 05:42 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `erroraqueries`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `votes_count` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `user_id`, `body`, `votes_count`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Laborum cupiditate quia sit impedit aut aut. A illum at enim ex minus. Cupiditate qui debitis et odio nemo blanditiis vel.\n\nImpedit autem nemo cumque voluptatem error repellat. Perferendis vel soluta nesciunt velit. Sunt voluptate voluptatum voluptates.\n\nHarum suscipit at saepe ducimus ad et incidunt. Provident quod fuga mollitia harum.', 3, '2020-04-06 22:38:29', '2020-04-06 22:38:30'),
(2, 1, 1, 'Aut qui consectetur eligendi voluptatem quod sint rerum. Temporibus laboriosam et voluptatem. Sit culpa deleniti et magnam laboriosam quod. Quisquam omnis voluptate qui sunt pariatur assumenda.\n\nFugit dolores iure ea molestiae quisquam. Qui doloribus consequatur sed ea. Quisquam nam dolor omnis amet.\n\nSunt ut possimus soluta animi. Voluptate nihil voluptatibus explicabo voluptas quos vel vitae. Praesentium harum quod et. Nam numquam voluptatem magni ullam harum ut consequatur.\n\nVoluptates qui quo unde dolorem amet voluptate. Natus blanditiis vel beatae minima enim sed. Tempore voluptatem officiis quia laborum.\n\nEveniet iure dolor iste rerum rerum nam in. Perspiciatis ab aliquid ea est repudiandae voluptatem. Debitis atque sed nisi officiis id sed fugit temporibus.', 2, '2020-04-06 22:38:29', '2020-04-06 22:38:30'),
(3, 1, 1, 'Quia numquam suscipit ut voluptas ea dicta velit. Atque aliquam error enim sapiente corrupti quas perspiciatis. Occaecati fugiat assumenda rerum doloribus odit. Quis tenetur id eum aut ipsa sequi.\n\nPossimus consequatur nihil id. Vitae voluptate illo molestias aut qui maiores sapiente. Quasi qui tempore at ipsa molestias qui qui. Reprehenderit et atque vero et.\n\nReiciendis sed quo perspiciatis quia sunt quibusdam totam. Quod quidem nisi et quod at sed. Veritatis aut maxime molestias sunt molestiae modi deleniti dolorem.\n\nEum rem nemo qui aut consequatur vel repudiandae. Autem impedit et inventore voluptatem temporibus reprehenderit quaerat. Alias voluptas sint omnis voluptatem necessitatibus rerum perspiciatis.\n\nAliquam non totam aut veritatis velit omnis eum. Non est in veritatis nihil ipsam laudantium fuga nesciunt. Et voluptatem veniam et. Est illum quo ex labore quas expedita.\n\nQuos sapiente vero veniam eum. Ut magni accusamus et aut. Iusto adipisci ullam et eos vel repellat aut. Similique eius ipsam minus nihil voluptatem enim.\n\nDolore facilis nobis et consequatur. Qui molestias repellat recusandae quisquam odio. Alias error ea dolor sed. Tempore quidem provident voluptatem id quasi quod accusamus optio.', -3, '2020-04-06 22:38:29', '2020-04-06 22:38:30'),
(4, 1, 1, 'Magni provident ab aut enim est. Totam aut eius consectetur vitae iusto quo. Reiciendis ipsam enim et rerum quo enim autem nam.\n\nVelit iusto ut neque. Eos rerum quam et dolor officiis. Aut enim voluptatem quia cumque vel.\n\nNam vel et libero deleniti. Numquam et ipsa commodi.\n\nOccaecati vitae soluta quia corporis eum voluptatem. Voluptate totam itaque nulla tempore. Debitis necessitatibus voluptatem consequatur commodi.\n\nEst et suscipit itaque voluptatem quo. Sint dolor rerum vel et. Recusandae sint ducimus tempore accusamus eos magnam. In facere vel molestiae non aut ipsum voluptates.\n\nEligendi alias nesciunt hic omnis qui qui. Ad natus ut vero quo voluptatem est. Hic est at libero ducimus. Atque aut ea cumque.\n\nNostrum ut fuga est perferendis autem excepturi. Earum vero ea ut possimus ducimus et. Voluptatibus sunt est debitis et perferendis error. Ea iure quod non nostrum nihil.', 2, '2020-04-06 22:38:29', '2020-04-06 22:38:31'),
(5, 1, 1, 'Officiis nihil hic excepturi cumque. Soluta aut id illo voluptatem qui. Perferendis deleniti ullam non ducimus voluptatem quo. Facilis cumque ipsum omnis.\n\nSaepe et rerum esse voluptatem. Vitae maxime ut voluptate omnis.\n\nExplicabo nulla vero mollitia ipsa. Sed non adipisci eum aperiam consectetur rem. Et incidunt doloremque tenetur qui sed et qui accusamus.\n\nSoluta explicabo est nulla tenetur. A beatae occaecati corrupti tempore dolorum. Excepturi optio a et consequatur excepturi sint nesciunt.\n\nId dolores ut quia reiciendis. Excepturi et nemo ex qui distinctio. Aut quia porro laborum dolor beatae autem.', 1, '2020-04-06 22:38:29', '2020-04-06 22:38:31'),
(6, 2, 2, 'Quaerat architecto dignissimos esse. Quia quae inventore aut libero. Omnis sed aut delectus et asperiores voluptas. Dolorum sit molestias molestias aut blanditiis.\n\nEsse cupiditate praesentium et eum tenetur deleniti nesciunt. Eum aut qui blanditiis aut perferendis. Delectus qui quo dolor.\n\nExercitationem quia excepturi debitis mollitia doloribus. Voluptatem sunt quia veniam aut ut nulla accusantium. Labore est et ipsa voluptatem. Architecto est aut autem ipsa.\n\nNesciunt sint eius dolor cumque nulla. Sunt ut eligendi error excepturi vero modi repudiandae. Nobis est nobis dolore rerum occaecati qui vel.', 1, '2020-04-06 22:38:29', '2020-04-06 22:38:31'),
(7, 2, 1, 'Odit dolore eius illo optio quia. Omnis sit voluptatem placeat molestias. Voluptatem sint quo quam harum consectetur dignissimos.\n\nSapiente quos sunt rerum et voluptatem velit. Explicabo sint temporibus fugit consequatur ipsum animi sed natus. Voluptatibus nihil qui occaecati aut. Quibusdam dolor rem similique aperiam atque eum.\n\nNostrum repellendus laborum repellendus itaque. Quod voluptas veritatis ipsum aut corporis quae id. Ad in molestiae maxime perferendis soluta nulla rerum.', -1, '2020-04-06 22:38:29', '2020-04-06 22:38:31'),
(8, 2, 2, 'Harum possimus adipisci error fuga reprehenderit consequatur dolor aut. Sint dolor ex sit quasi corrupti. Sit nisi sit vero non natus ea aut.\n\nEligendi et numquam occaecati et et. Et dolores necessitatibus facilis aut laborum quaerat. Hic eveniet repellat soluta aut.\n\nNon inventore ut omnis non voluptas omnis. Eos magnam perferendis expedita culpa iure. Unde qui aliquid nisi. Deleniti debitis enim fuga id omnis ea fugiat.\n\nExpedita aperiam beatae ab in qui doloribus magni voluptatem. Ab quo voluptate saepe. Corrupti deleniti laboriosam ut aliquid animi qui. Fugiat repudiandae dolor voluptas sequi.\n\nOptio molestias sapiente dolorem suscipit aliquid ut natus. Debitis labore a atque voluptatem ipsa. Harum in nobis unde nisi id. Ullam ab eos reiciendis commodi autem eos.\n\nTempora laudantium sed qui accusamus veritatis sint magni. Similique porro deserunt fugiat mollitia. Omnis deserunt adipisci modi saepe. Nam adipisci ea nobis impedit odio vero.\n\nId eius et aut odio ducimus eligendi. Tempora sit aliquid hic fugit. Voluptate ut ipsam necessitatibus incidunt quos iusto et.', 1, '2020-04-06 22:38:29', '2020-04-06 22:38:31'),
(9, 2, 1, 'Corrupti aliquam omnis ea qui. Quisquam quia ut cupiditate aliquam quibusdam nesciunt. Quibusdam debitis dolorem aliquid nobis dolorem corporis error.\n\nVoluptatem minus inventore est dolorem voluptatem. Tenetur eligendi eum adipisci rerum. Facere et rerum possimus cumque quo. Earum laboriosam veniam officiis consectetur quos eius veniam.\n\nQuisquam ea nobis dicta quisquam eum. Ut magnam voluptatem eum iusto quia ducimus vero distinctio. Assumenda minus non veritatis quisquam numquam consequatur. Possimus assumenda quia veniam quis nihil. Consequatur voluptas quis quod ut aspernatur accusantium qui.\n\nOfficia ut voluptatem enim voluptas vitae. Totam quos nemo ut. Dolorem voluptatum modi dolorem nisi id impedit. Aut qui sed quaerat odit expedita cumque.', 2, '2020-04-06 22:38:29', '2020-04-06 22:38:31'),
(10, 3, 2, 'Non est molestiae officia rerum. Aut ducimus et voluptatem corrupti saepe ducimus et.\n\nAb ipsum minus labore eos. Et et voluptas eaque reprehenderit dolorem et. Sapiente debitis qui ipsam eum.\n\nCulpa impedit molestiae sint omnis voluptas. Et error tenetur vel fugit. Eveniet et corrupti sit ad similique libero dicta. Consequuntur perspiciatis molestiae eaque eius quo molestiae omnis.\n\nSoluta nostrum doloribus iusto aliquam consequatur consequatur. A exercitationem architecto distinctio explicabo. Quasi expedita delectus ratione inventore laborum.', 0, '2020-04-06 22:38:29', '2020-04-06 22:38:31'),
(11, 3, 2, 'Earum in est accusantium sint ad accusamus cupiditate voluptas. Ratione officiis aperiam rerum voluptatem ut.\n\nMagnam aut rem cum eveniet qui. Consequuntur sed qui dolores eum nisi incidunt accusamus. Iste maiores beatae quo vel nulla et.\n\nEius qui asperiores enim commodi ut delectus eos. Et molestiae sed magnam. Sed officia dolorem deleniti.\n\nCommodi aut quidem nihil sequi sequi. Ea quis soluta optio cumque. Laboriosam consequuntur fugit ipsa deleniti.', 3, '2020-04-06 22:38:29', '2020-04-06 22:38:31'),
(12, 3, 3, 'Consequatur consectetur voluptatem dignissimos numquam magnam facere. Totam exercitationem quos eius consequuntur repellendus aut vitae. Iusto perferendis temporibus provident est consequatur eos voluptatibus. Et hic at recusandae corporis enim voluptate.\n\nMaiores ut exercitationem et dicta officia rem. Qui maxime blanditiis sint odio quia praesentium ad eaque. Id non ad maxime at voluptas laudantium ipsum. Veritatis sunt deserunt molestiae perspiciatis.\n\nAut molestiae eius ex aliquam. Reprehenderit minima repellat voluptas tenetur eligendi. Ipsum expedita incidunt odio dolorem sit ea id. Distinctio sed tenetur officiis pariatur laborum eius facere. Velit aliquid eaque explicabo aperiam ut saepe provident.\n\nOptio dignissimos earum veniam voluptate provident dolor. Sunt nesciunt aliquid consequatur doloribus corporis ut. Laudantium ea aut fugiat rerum non.', 1, '2020-04-06 22:38:29', '2020-04-06 22:38:31'),
(13, 3, 2, 'Voluptate aperiam et et exercitationem nostrum cupiditate rerum. Dolorem debitis et distinctio officia voluptates quis. Omnis animi velit vitae inventore voluptatem recusandae.\n\nAperiam optio vitae distinctio neque ut quod. Deserunt occaecati nihil sequi placeat voluptate aut minima ipsa. Aut sed ipsam velit ipsa amet minima asperiores voluptas.\n\nAspernatur odio aperiam aut est quo incidunt. Sapiente aliquam nam consequatur ullam non fuga earum vel. Fuga ducimus fugit iure est. Quisquam sed alias aliquid.', -2, '2020-04-06 22:38:29', '2020-04-06 22:38:31'),
(14, 4, 3, 'Molestias beatae reprehenderit et aut. Quibusdam ea nostrum fugit aperiam. Sint ducimus nulla quas quo qui inventore. Id qui officiis qui officia. Eos laudantium aut id qui sed.\n\nAmet et dolores aut. Eos aspernatur delectus soluta. Perferendis ad reprehenderit placeat accusantium non ad itaque illum. Culpa voluptatem commodi maxime velit recusandae ipsam autem doloribus.\n\nEt distinctio voluptates quis qui necessitatibus saepe rem. Adipisci officia qui molestiae dolor. Beatae sunt id impedit sed consequatur. Distinctio fugiat error qui nostrum sapiente doloribus adipisci.', -1, '2020-04-06 22:38:29', '2020-04-06 22:38:31'),
(15, 5, 2, 'Fugit nisi aperiam doloremque neque accusantium consequatur odio. Voluptatem magni ut ut est voluptatem aperiam est. Quaerat officia voluptatibus est harum. Maiores accusantium excepturi officiis ut voluptate rerum et.\n\nSimilique explicabo doloribus quasi sint. Et quia iste quasi fugiat perspiciatis. Quia quia fugit iste veritatis.\n\nVitae neque dolore aperiam aut ut unde perspiciatis aut. Doloribus dolorem non quis autem sit quam iure alias. Tenetur reiciendis officiis nihil doloribus.\n\nSapiente natus eum sequi est. Id sint explicabo voluptate vitae ad. Fugiat eligendi aut illo non sed ut incidunt.\n\nQuia facere ea labore voluptatibus exercitationem. Sapiente et et consequatur qui qui eum. Repellendus distinctio veniam eum saepe qui ea. Consequatur eum quam eaque.\n\nEt aspernatur cum minima ut eum veniam id. Ratione rerum architecto similique quisquam a perferendis. Consequatur eveniet sequi totam enim eos odit id. Mollitia quia voluptate iusto dicta blanditiis et.\n\nEt maxime quo omnis quas aut. Beatae repellendus voluptatem deleniti beatae commodi velit. Minima explicabo dicta quasi dolor.', 1, '2020-04-06 22:38:29', '2020-04-06 22:38:31'),
(16, 5, 1, 'Eveniet consequatur dignissimos non doloribus nostrum. Quibusdam ipsa nam et sint ratione harum velit aut.\n\nVoluptate architecto ullam autem non. Ad voluptatum temporibus cumque aliquam quo quia dolorem. Earum alias fugit voluptatum quibusdam et.\n\nPraesentium modi fugiat aperiam recusandae nemo enim quo accusamus. Ea omnis non officiis ipsam unde sed itaque. Tempore commodi dolorem dolor maiores voluptatem.\n\nEt quaerat occaecati minima aspernatur vitae laborum sit. Maiores doloremque nihil beatae consequatur quis. Cumque excepturi in et et dolores.\n\nNostrum tempore optio minima fuga occaecati possimus. Quos assumenda nesciunt et molestiae ut enim. Incidunt reprehenderit ea quo nemo explicabo quia consequatur.\n\nConsequatur sit officia alias est dicta aut. Nesciunt aliquid facilis omnis recusandae dolorem. Quia eaque voluptatem quis id sequi hic.\n\nCum in sit odit nulla. Maiores commodi voluptatem et sequi neque. Cum blanditiis architecto tempora autem. Rem nemo sunt laboriosam incidunt.', -2, '2020-04-06 22:38:29', '2020-04-06 22:38:31'),
(17, 5, 1, 'Iure qui ea consequatur sit dolorem voluptatem repellat. Maiores voluptas necessitatibus unde non iste. Dolorem ratione aut aut vel sapiente alias.\n\nVoluptatem molestiae libero quis tempora aut. Ea odit sed et voluptatem. Ea ab labore consequuntur accusamus ut.\n\nInventore aut optio fuga. Est soluta corporis eos eveniet sint totam asperiores. Quo ab a est adipisci nobis consequatur at.\n\nEa perspiciatis aliquid explicabo. Eum qui numquam excepturi. Dolores impedit odio cum nostrum voluptates deleniti vel. Debitis quibusdam reiciendis nulla impedit dolor non.\n\nNon a iure ea provident quam corrupti. Aut voluptates assumenda incidunt dolorem. Reprehenderit accusantium nostrum amet sunt quis voluptas quis. At officia cum ut et eum.\n\nDolorem nemo mollitia repudiandae illo ut. Facilis dolor vitae ut eum. Inventore minus deserunt qui placeat accusamus debitis. Necessitatibus alias quia enim voluptates mollitia soluta incidunt.\n\nDicta reprehenderit facilis eum doloribus. Labore quasi est dicta quia consequatur odit. Voluptas dolores excepturi vel. Voluptatem maiores voluptas tenetur ratione accusamus sit.', 0, '2020-04-06 22:38:29', '2020-04-06 22:38:31'),
(18, 5, 3, 'Qui deserunt ut nihil consectetur et vel. Distinctio error sequi non eum omnis voluptatem. Delectus officiis ut itaque architecto magnam laudantium recusandae.\n\nIusto delectus nisi non id qui consequuntur doloremque. Omnis veniam ex ut non quaerat. Hic expedita neque sit dolores qui optio voluptas.\n\nModi molestiae autem ut provident vel accusamus. Quia quas quia sit quia voluptatem. Veniam blanditiis quibusdam nostrum consectetur.\n\nEnim dolor nostrum mollitia aut. Aut dolorum assumenda explicabo excepturi. Neque et id ipsa repudiandae quas ipsa ratione. Et vel sunt nesciunt animi debitis enim commodi.\n\nQuia aut soluta porro nam. Molestias ut impedit porro. Sed voluptatem iste deserunt quia assumenda.\n\nAssumenda aut atque magnam error. Temporibus harum quia quos voluptatem laborum in. Fuga temporibus ipsum eaque laboriosam reprehenderit itaque iste. Voluptatem id ducimus consequatur voluptas eligendi eum.\n\nDolor aliquid dolor voluptatum sit non cum ipsa. Aperiam exercitationem magni in cum nihil. Sint quod explicabo ea accusamus beatae ut.', 0, '2020-04-06 22:38:29', '2020-04-06 22:38:31'),
(19, 5, 1, 'Autem quae est animi iusto nihil iure mollitia id. Sapiente recusandae incidunt quis atque.\n\nEa quis quis maiores voluptas. Natus assumenda dolorem ut tenetur modi iste exercitationem. Minima ipsam unde labore earum et et. Eum maxime nihil molestias dicta. Aut maxime ullam tenetur nihil repellat repellat sunt.\n\nAb est tenetur minima voluptatem non illum. Quas harum rerum aut sunt voluptatem animi eos. Eum deserunt dolorem illo illum. Dolorum dolores inventore saepe accusamus.\n\nEnim aut sed accusamus quod iusto et reiciendis. Eveniet quo quasi neque pariatur est similique nihil non. Voluptatem qui necessitatibus in quia enim.\n\nImpedit est doloremque id odio reiciendis corrupti a et. Sint dignissimos odit tenetur. Ut maxime quo aut consequatur quia rerum in. Qui est incidunt illo ullam.\n\nBlanditiis provident voluptatem omnis omnis debitis. Doloribus consequatur non laudantium. Alias laboriosam repudiandae atque ea quaerat.\n\nRepudiandae velit qui vitae fugiat ut. Commodi tempore voluptatem reprehenderit saepe quisquam. Totam eaque commodi accusamus velit voluptates unde aliquid.', 0, '2020-04-06 22:38:29', '2020-04-06 22:38:31'),
(20, 6, 1, 'Debitis aspernatur repudiandae officia repellendus ex impedit maiores. Dolorem ea placeat hic atque. Voluptas itaque hic cupiditate excepturi voluptas eum. Provident facilis suscipit quam laboriosam vel.\n\nExercitationem enim sint ipsa amet. Et temporibus aut et aliquam enim rerum. Itaque dolores corporis eos fugit ipsa.\n\nPariatur quisquam qui tenetur ex expedita. Accusamus ipsa vel sint vel ut voluptatem. Voluptate delectus quia non consequatur hic omnis excepturi occaecati. Et in aut hic omnis. Esse autem pariatur dolores nam dicta dolorem hic.\n\nDicta illo autem omnis necessitatibus vitae ullam. Sequi a nostrum sit culpa nisi sit. Id voluptatibus qui dolore quaerat voluptatem consequatur ut. Maxime est facilis earum minima sed sit vitae. Quia quisquam sed ut quidem aut.\n\nNatus dolorum voluptatem ullam qui et earum inventore repellat. Sit ipsam magni consequatur aliquam nemo enim. Voluptatibus aperiam ut qui et velit et facere.', 1, '2020-04-06 22:38:29', '2020-04-06 22:38:31'),
(21, 6, 1, 'Rerum doloremque odit est minima accusamus suscipit. Voluptates explicabo delectus dolor earum. Sunt ut illo sunt accusamus aliquid error aspernatur molestias.\n\nAsperiores ea deserunt soluta aut. Ut sint deserunt officiis est. Officiis et delectus alias quod. Sit quia ex et.\n\nEt eveniet assumenda voluptatem velit quae maiores. Sint exercitationem ullam minima voluptatem.\n\nConsequuntur et omnis ducimus dolorem fugiat dolores. Harum illum nihil eum dolorum qui nisi. Aut molestiae sapiente velit explicabo.\n\nHarum iusto ut voluptatem modi illo quod. Animi saepe modi voluptatem. Quae dolorum doloremque tenetur distinctio error. Non ut possimus et vel quam et ab voluptas.\n\nRepellendus deleniti dolorem libero rerum esse earum. Nesciunt corrupti sit et ex in quam fugiat. Deserunt tempora perferendis molestiae nam. Odit deleniti ipsam magnam sunt.\n\nVelit qui consequuntur ex rerum nulla. Qui totam est in at.', 1, '2020-04-06 22:38:29', '2020-04-06 22:38:31'),
(22, 6, 2, 'Qui eligendi porro sunt ullam non voluptatum. Dolor dolores ea porro. Minima voluptatem magnam inventore. Provident voluptatem necessitatibus voluptas excepturi.\n\nDolorem quidem repudiandae consequatur esse possimus dolorum qui. Doloremque hic explicabo maiores. Et iure reiciendis omnis.\n\nCorrupti aut quod iusto dolorem et sed. Labore dolore dolorem excepturi placeat molestiae accusantium. Maiores nihil et qui iure nihil.\n\nQuos iusto perferendis et sed molestiae earum. Voluptas eos odit dolores et distinctio aut saepe veniam. Reiciendis dicta commodi ea rerum enim. Magni libero alias nostrum doloremque.\n\nFugiat voluptate quaerat aut. Earum et sed id laudantium temporibus totam dolore. A temporibus quam debitis sint ut dolorum. Incidunt est in qui autem molestias provident.\n\nCulpa et animi dolores explicabo tempora. Vel cumque et cupiditate sunt numquam modi. Et repellat facere ut sit dolor qui. Aut suscipit error sed voluptas.\n\nDelectus consequuntur est numquam id non. Ex qui ipsam laborum fuga ex. Possimus aliquid sed ullam est impedit aut minima.', 0, '2020-04-06 22:38:29', '2020-04-06 22:38:31'),
(23, 6, 2, 'Cupiditate laboriosam aut placeat cupiditate blanditiis. Sit nisi ut voluptatum. Quaerat ratione voluptas consequatur. Ut voluptatum velit molestiae voluptatibus ratione minus.\n\nRatione ipsam sit ut et similique ut. Libero qui enim perspiciatis. Exercitationem odit et eos et consequuntur nostrum debitis.\n\nNon soluta ut consequatur quis quia. Qui eum est laudantium veniam fugit hic impedit. Molestiae velit itaque et perferendis facere. Id sit qui enim illo. Ut officia quo similique corrupti quaerat odit non.\n\nIpsa quia alias facilis sunt vitae. Ipsum autem iure omnis repudiandae quo. Corrupti iure aut unde fugiat rerum et nobis aut.\n\nNumquam est sit rerum rem rerum et. Est eaque voluptatem ut commodi. Earum fuga ut recusandae nulla.\n\nNostrum tenetur eligendi aperiam id doloremque a omnis. Omnis sint sunt et accusantium. Facere ex expedita ad itaque consequatur.', 1, '2020-04-06 22:38:29', '2020-04-06 22:38:31'),
(24, 6, 1, 'Dolores velit id ea ut sequi non quos. Et et nesciunt quia consequatur. Provident dolores blanditiis eos. Aut quia reprehenderit aut facere similique.\n\nFacere qui molestiae consequatur nulla amet sit. Dignissimos dolor ut repellendus vel aut vel voluptatem. Laborum repellendus voluptatem distinctio aut pariatur culpa reiciendis. Dolorem consequatur voluptatum sint quae.\n\nVelit quis qui distinctio vero quia asperiores. Voluptatem et culpa rerum eligendi esse in est.\n\nSint praesentium blanditiis aliquam ut dolor id. Quos est numquam sit iure quaerat et vel. Repellendus veritatis ea accusamus harum corporis labore. Cupiditate dolorem ut molestiae. Incidunt et error sunt amet dignissimos et ducimus.\n\nVeritatis facilis eum perspiciatis maxime quo voluptatum consequatur. Molestiae quam harum praesentium. Nesciunt accusantium minima qui qui non amet sit accusamus.', 0, '2020-04-06 22:38:29', '2020-04-06 22:38:31'),
(25, 7, 1, 'Praesentium nesciunt deserunt quod voluptatem pariatur. Quod ea et neque.\n\nFugiat repellendus autem dignissimos quibusdam. Eos error qui vitae tenetur non. Et non fugit itaque voluptatum. Facilis quis at fugiat temporibus voluptas et eum.\n\nAperiam est tempora excepturi ut et aut rerum. Qui aut reprehenderit cupiditate qui ipsam. Aut delectus ut quam ut. Pariatur pariatur voluptatem illum tenetur quod tenetur consectetur.', -2, '2020-04-06 22:38:30', '2020-04-06 22:38:31'),
(26, 8, 1, 'Voluptatem facere quae explicabo repellat. Voluptas repudiandae possimus facilis doloribus earum aliquam error. Et est qui nesciunt nam ut numquam tempora.\n\nReprehenderit in sint animi nobis excepturi temporibus. Temporibus atque in est praesentium corrupti recusandae ipsa. Provident placeat in quis quia optio sed neque.\n\nEsse ab ex commodi sunt et sapiente voluptatem iusto. Et et fuga veritatis eius voluptatem nihil est hic. Id quaerat officia repudiandae aut debitis.\n\nEius ea qui dolor ipsam id possimus ipsam. Necessitatibus distinctio doloremque velit beatae molestiae quis. Labore id excepturi molestias consequatur est.\n\nAspernatur exercitationem tempore aspernatur voluptate. Autem est eveniet provident nostrum recusandae ab exercitationem velit.\n\nExcepturi ratione est aut dignissimos porro deserunt ex. Labore provident provident excepturi culpa saepe minima. Modi nihil totam modi quia molestiae dolor voluptate.\n\nAut soluta quia hic rerum officia. Rerum molestiae eos natus hic non at. Et repellendus velit repellat aperiam quod reprehenderit soluta.', -1, '2020-04-06 22:38:30', '2020-04-06 22:38:31');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`user_id`, `question_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-04-06 23:03:32', '2020-04-06 23:03:32'),
(1, 2, '2020-04-06 22:38:30', '2020-04-06 22:38:30'),
(1, 3, '2020-04-07 00:19:57', '2020-04-07 00:19:57'),
(1, 5, '2020-04-06 22:38:30', '2020-04-06 22:38:30'),
(1, 7, '2020-04-06 22:38:30', '2020-04-06 22:38:30'),
(1, 8, '2020-04-06 22:38:30', '2020-04-06 22:38:30'),
(1, 9, '2020-04-06 22:59:12', '2020-04-06 22:59:12'),
(2, 1, '2020-04-06 22:38:30', '2020-04-06 22:38:30'),
(2, 2, '2020-04-06 22:38:30', '2020-04-06 22:38:30'),
(2, 3, '2020-04-06 22:38:30', '2020-04-06 22:38:30'),
(2, 5, '2020-04-06 22:38:30', '2020-04-06 22:38:30'),
(2, 6, '2020-04-06 22:38:30', '2020-04-06 22:38:30'),
(2, 7, '2020-04-06 22:38:30', '2020-04-06 22:38:30'),
(2, 8, '2020-04-06 22:38:30', '2020-04-06 22:38:30'),
(3, 2, '2020-04-06 22:38:30', '2020-04-06 22:38:30'),
(3, 5, '2020-04-06 22:38:30', '2020-04-06 22:38:30');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_05_21_031537_create_questions_table', 1),
(4, '2018_06_26_175543_create_answers_table', 1),
(5, '2018_06_26_183850_rename_answers_in_questions_table', 1),
(6, '2018_07_03_170915_add_foreign_best_answer_id_to_questions_table', 1),
(7, '2018_07_04_180253_create_favorites_table', 1),
(8, '2018_07_06_172255_create_votables_table', 1),
(9, '2018_07_06_175255_rename_votes_on_questions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `answers_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `votes_count` int(11) NOT NULL DEFAULT '0',
  `best_answer_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `title`, `slug`, `body`, `views`, `answers_count`, `votes_count`, `best_answer_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Adipisci aut qui ipsum nostrum rerum', 'adipisci-aut-qui-ipsum-nostrum-rerum', 'Repellendus libero eos odio ut voluptatem aperiam. Dignissimos quaerat eveniet voluptatum alias nesciunt laboriosam accusantium. Repellat odio molestiae aut nisi ut consectetur sunt qui. Quia nisi repellat earum. Similique et commodi quam omnis saepe.\n\nAnimi velit nostrum architecto facilis unde ratione accusantium. Mollitia et eligendi aut itaque neque sequi. Aliquid fugit quos id reiciendis hic hic sint.\n\nUt ut quae nobis placeat. Occaecati fugiat soluta quisquam et ipsa optio. Inventore suscipit debitis sit unde quod dolorem earum.\n\nModi iste commodi nesciunt laborum. Fugiat voluptatem aspernatur autem voluptatibus sint ex est. Perferendis neque ut fugiat corporis quibusdam quidem veniam. Dolor dolorum animi voluptas eligendi quis harum.\n\nAperiam est sunt itaque labore. Reprehenderit cum et vel veritatis qui. Eaque voluptas dolores autem sit eum laboriosam et.\n\nPorro esse et voluptates sapiente. Voluptatem soluta provident consequatur culpa. Accusantium asperiores amet asperiores aut laborum quod et. Qui qui ut non officiis quia dolorum doloribus.', 6, 5, 1, NULL, 1, '2020-04-06 22:38:29', '2020-04-06 23:03:29'),
(2, 'Voluptatem voluptas dolores eos corporis alias quia sunt', 'voluptatem-voluptas-dolores-eos-corporis-alias-quia-sunt', 'Dicta repellat quos assumenda nostrum nemo odio impedit. Qui eaque exercitationem animi omnis amet ratione et dolorum. Ut eveniet aut aut maxime sed. Ut et quibusdam et quam sint et.\n\nEa qui repellendus libero dolorem voluptatem enim saepe. Dolor accusantium ut est quo. Quod impedit nulla vel voluptas rerum. Magni ratione velit illum voluptas sit repellat.\n\nEt illo blanditiis dolores aut. Sed beatae placeat eum ut eius temporibus. Facere quidem id dolor.\n\nEt et adipisci error nostrum optio cumque. Inventore facilis et sequi molestiae. Rem possimus occaecati error quia impedit est iusto.\n\nLaborum voluptatibus temporibus distinctio rem vitae. Sunt qui itaque eos dolorum. Accusantium et aperiam molestiae vitae saepe impedit. Voluptatum dolorem quia suscipit ut quis delectus.\n\nIn ipsum sit similique. Nulla consequatur quos corrupti quasi quidem qui adipisci. Sapiente laudantium aut aut explicabo rerum. Vel corrupti quam aperiam corrupti atque.\n\nNostrum vitae quos quia quia molestias sunt vitae nulla. Aspernatur nihil dolor ipsa et. Quidem vitae earum libero repellat aut numquam. Quia et dolores aut soluta veritatis recusandae. Et aliquid incidunt suscipit quia praesentium.', 11, 4, 0, NULL, 1, '2020-04-06 22:38:29', '2020-04-06 22:44:04'),
(3, 'Qui sed et sed aut id reiciendis consequatur sequi omnis', 'qui-sed-et-sed-aut-id-reiciendis-consequatur-sequi-omnis', 'Nesciunt quo sit atque consequuntur. Rerum est itaque porro laudantium reiciendis illum. Est sint ea sit odio repellendus. Dolores repellendus repudiandae nesciunt sint. Eos qui laborum necessitatibus mollitia pariatur et quae ratione.\n\nMinima ut incidunt consectetur rerum dolor quia. Incidunt deserunt aperiam voluptatum dolores occaecati adipisci. Cupiditate repudiandae praesentium dolores.\n\nEnim quia aut quo sed. Aspernatur non unde at id qui. Nisi et ipsam voluptates.\n\nQuo aliquam aspernatur omnis. Est esse voluptate et pariatur deleniti inventore repudiandae. Incidunt sit aut voluptas officiis quo architecto.\n\nNecessitatibus mollitia sequi quasi quasi quidem quo et. Id laboriosam dignissimos ut est. Sed nostrum nihil reiciendis aut consequuntur et sint. Tenetur cum omnis sed.\n\nAd nihil occaecati ducimus ratione. Culpa temporibus aut nulla accusamus ipsum veritatis aliquid rem. Quaerat molestiae quaerat reiciendis rerum dolor. Odio fugiat minima rem veniam quis.', 3, 4, 1, NULL, 2, '2020-04-06 22:38:29', '2020-04-07 00:20:08'),
(4, 'Quo fugit culpa consequuntur maiores et occaecati', 'quo-fugit-culpa-consequuntur-maiores-et-occaecati', 'Dolorem eos at amet facilis. Explicabo illum assumenda rem quae quae quo. Et ut et voluptas consequatur doloremque quae nihil omnis.\n\nDolor possimus maxime beatae in dolor qui voluptates. Commodi omnis et et natus delectus.\n\nIllo error dolor beatae impedit et deleniti autem. Odit ullam odio sunt ducimus est ut culpa consequatur. Doloremque dignissimos ipsum quia deleniti cum velit. Explicabo quia et doloremque itaque.\n\nRerum quia numquam nihil. Tempore ut libero maiores quia. Soluta eum occaecati fugiat. Veritatis in quia consequuntur nemo eos et.\n\nIpsum aliquam aut perspiciatis consequuntur quam provident. Alias quaerat nam at molestiae quos nihil. Quia ut aliquam officia cupiditate. Quod dolorem autem aut cumque earum.', 5, 1, 0, NULL, 2, '2020-04-06 22:38:29', '2020-04-06 22:38:30'),
(5, 'Ut veritatis pariatur et molestias ut libero aut itaque est', 'ut-veritatis-pariatur-et-molestias-ut-libero-aut-itaque-est', 'Enim quia quia in optio corporis vero consequatur. Vitae maiores assumenda numquam ut. Assumenda numquam saepe omnis amet ut ut sequi.\n\nNobis sint ratione fugiat earum quia nihil. Aperiam consectetur et assumenda quisquam sed ut. Sint omnis ut rem a quibusdam nesciunt.\n\nLaboriosam ullam magni aut culpa pariatur quibusdam. Voluptate iste saepe est consequatur. Voluptatibus quia suscipit consectetur ut aliquam adipisci. Repudiandae tempora illo voluptas nesciunt.\n\nReprehenderit dolor at non occaecati impedit animi asperiores neque. Veniam quasi consequatur reprehenderit dolorum et. Soluta dolorem error occaecati hic voluptatem facilis impedit.\n\nIn aliquam sint aspernatur architecto ab illo et. Modi maxime aliquid id nihil. Expedita nostrum aut aut quod. Perferendis minus aperiam molestiae.', 0, 5, -1, NULL, 2, '2020-04-06 22:38:29', '2020-04-06 22:38:30'),
(6, 'Ad minus voluptates sed non voluptatem praesentium', 'ad-minus-voluptates-sed-non-voluptatem-praesentium', 'Sint ducimus in et. Et laborum doloribus accusantium corporis aut excepturi maiores. Modi praesentium aut consequatur. Ab deserunt sequi et veritatis rerum hic et tempora.\n\nSint optio qui in placeat eius omnis ducimus. Ducimus laboriosam in corporis eum ea architecto ut. Magni veritatis et dolorum qui et voluptatem nobis.\n\nDebitis necessitatibus qui impedit corrupti id voluptates non provident. Sapiente voluptas voluptates consequatur modi vitae. Quis nostrum sit magnam aliquam impedit nemo quidem. Quisquam ipsa eum expedita molestias sed ipsam sequi.\n\nIllum aut eos sed voluptates nulla mollitia atque. In voluptatem animi in sed. Dicta laboriosam nisi molestias.\n\nPossimus totam in rerum. Laborum et id accusantium est ut cumque quia. Voluptatibus voluptatibus et nam voluptatem a qui. Nobis cumque totam consequatur dolore quo.\n\nAccusantium sit maxime mollitia esse quia nesciunt. Aut quia nihil maxime corporis.\n\nCupiditate consequuntur quos et est nulla. Illo ex quia autem iusto ab consequatur. Aliquid omnis ut sunt pariatur officia ut ut.', 10, 5, -1, NULL, 2, '2020-04-06 22:38:29', '2020-04-06 22:38:30'),
(7, 'Earum dolores ut in eum reiciendis', 'earum-dolores-ut-in-eum-reiciendis', 'Nisi error at assumenda ut consequuntur aliquid. Ab illo pariatur molestiae veniam optio itaque. Illum voluptates facere numquam officiis nihil magni architecto. Natus quo magni enim ut quidem totam.\n\nFugit aut sit non quia. Facilis molestiae et omnis quia sed debitis. Vel unde deleniti sit quo quis esse rerum. Doloribus facere dolor numquam enim molestiae voluptate eos.\n\nSed expedita aliquam eos et. Quibusdam ullam laborum ea repudiandae reprehenderit repellendus. Eius repellendus recusandae quasi aut magni. Et ipsum magnam omnis molestias.\n\nNobis sunt veniam aliquam. Omnis aut deleniti quae et minima. Doloremque nam eius sunt ad debitis distinctio et.\n\nLabore sapiente voluptatibus quos iusto a rerum. Pariatur sed doloremque commodi at. Doloremque reiciendis dolores natus rerum. Sed debitis temporibus voluptatem laudantium quia maxime atque.\n\nAlias occaecati reprehenderit accusamus id omnis ut. Temporibus officia incidunt et quidem alias doloribus. Et voluptas autem nisi velit in qui. Iste ipsam debitis doloremque architecto sed neque quod.\n\nAlias fugiat nemo provident qui aspernatur. A est animi cumque. Laboriosam et qui quod rerum consequatur perspiciatis eveniet. Omnis dolores et minima rerum.', 4, 1, -2, NULL, 3, '2020-04-06 22:38:29', '2020-04-06 22:38:30'),
(8, 'Odio laudantium ullam vitae velit ut molestias', 'odio-laudantium-ullam-vitae-velit-ut-molestias', 'Corporis ab omnis aperiam qui. Deserunt rerum alias quis ut eius. Quia sint corporis nemo quo. Eveniet tempora quo quia accusantium.\n\nAperiam est aut in voluptate quae unde. Voluptatem quasi numquam iusto molestias eligendi facilis. Quaerat itaque quam fuga alias quia. Et eos consequuntur omnis esse.\n\nDolor reiciendis dolore et deserunt. Aperiam eius numquam sequi error. Explicabo beatae magni eos vitae quo culpa quod. Ea nemo blanditiis rerum quasi.\n\nDolore repellat perspiciatis magni reiciendis deleniti autem error. Nobis vel omnis quasi quia ut vero. Maiores dolorem consequuntur suscipit ratione assumenda non qui voluptatum. Quia eos facilis rerum et qui.\n\nUt aperiam enim aliquam at beatae est delectus voluptas. Iure aut in cupiditate a. Natus aliquam rerum doloribus libero ut est. Aperiam aspernatur voluptatem consequatur.\n\nEt consequatur quis eum ut doloribus neque quisquam. Quis corporis qui et tempore qui.', 9, 1, 2, NULL, 3, '2020-04-06 22:38:30', '2020-04-06 22:38:30'),
(9, 'impedit et voluptas est illum. Ipsum et ipsa minus tot', 'impedit-et-voluptas-est-illum-ipsum-et-ipsa-minus-tot', 'impedit et voluptas est illum. Ipsum et ipsa minus totimpedit et voluptas est illum. Ipsum et ipsa minus totimpedit et voluptas est illum. Ipsum et ipsa minus tot', 2, 0, 1, NULL, 1, '2020-04-06 22:41:54', '2020-04-06 23:03:21'),
(11, 'impedit et voluptas est illum. Ipsum et ipsa minus totss edit', 'impedit-et-voluptas-est-illum-ipsum-et-ipsa-minus-totss-edit', 'impedit et voluptas est illum. Ipsum et ipsa minus totimpedit et voluptas est illum. Ipsum et ipsa minus totimpedit et voluptas est illum. Ipsum et ipsa minus totimpedit et voluptas est illum. Ipsum et ipsa minus totimpedit et voluptas est illum. Ips...', 0, 0, 0, NULL, 1, '2020-04-06 22:58:57', '2020-04-06 22:59:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Leopold Bayer', 'admin@mail.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'frwsyW0ZBtrBrjoWe15BNAiPIJoJXQ2pY19YTnNWs82OzPZA94fZdqsAhzDJ', '2020-04-06 22:38:29', '2020-04-06 22:38:29'),
(2, 'Carlee Brekke III', 'dooley.oda@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '5jH0bJDvHi', '2020-04-06 22:38:29', '2020-04-06 22:38:29'),
(3, 'Dr. Fernando Bednar', 'santa.moore@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'NHDjz58pdm', '2020-04-06 22:38:29', '2020-04-06 22:38:29');

-- --------------------------------------------------------

--
-- Table structure for table `votables`
--

CREATE TABLE `votables` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `votable_id` int(10) UNSIGNED NOT NULL,
  `votable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vote` tinyint(4) NOT NULL COMMENT '-1: down vote, 1: up vote',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `votables`
--

INSERT INTO `votables` (`user_id`, `votable_id`, `votable_type`, `vote`, `created_at`, `updated_at`) VALUES
(1, 1, 'App\\Answer', 1, NULL, NULL),
(1, 1, 'App\\Question', 1, NULL, NULL),
(1, 2, 'App\\Answer', 1, NULL, NULL),
(1, 2, 'App\\Question', 1, NULL, NULL),
(1, 3, 'App\\Answer', -1, NULL, NULL),
(1, 3, 'App\\Question', 1, NULL, NULL),
(1, 4, 'App\\Answer', 1, NULL, NULL),
(1, 4, 'App\\Question', -1, NULL, NULL),
(1, 5, 'App\\Answer', 1, NULL, NULL),
(1, 5, 'App\\Question', -1, NULL, NULL),
(1, 6, 'App\\Answer', 1, NULL, NULL),
(1, 6, 'App\\Question', -1, NULL, NULL),
(1, 7, 'App\\Answer', -1, NULL, NULL),
(1, 7, 'App\\Question', -1, NULL, NULL),
(1, 8, 'App\\Answer', 1, NULL, NULL),
(1, 8, 'App\\Question', 1, NULL, NULL),
(1, 9, 'App\\Answer', 1, NULL, NULL),
(1, 9, 'App\\Question', 1, NULL, NULL),
(1, 10, 'App\\Answer', -1, NULL, NULL),
(1, 11, 'App\\Answer', 1, NULL, NULL),
(1, 12, 'App\\Answer', 1, NULL, NULL),
(1, 13, 'App\\Answer', -1, NULL, NULL),
(1, 14, 'App\\Answer', -1, NULL, NULL),
(1, 15, 'App\\Answer', 1, NULL, NULL),
(1, 16, 'App\\Answer', -1, NULL, NULL),
(1, 17, 'App\\Answer', 1, NULL, NULL),
(1, 18, 'App\\Answer', 1, NULL, NULL),
(1, 19, 'App\\Answer', 1, NULL, NULL),
(1, 20, 'App\\Answer', 1, NULL, NULL),
(1, 21, 'App\\Answer', 1, NULL, NULL),
(1, 22, 'App\\Answer', 1, NULL, NULL),
(1, 23, 'App\\Answer', 1, NULL, NULL),
(1, 24, 'App\\Answer', 1, NULL, NULL),
(1, 25, 'App\\Answer', -1, NULL, NULL),
(1, 26, 'App\\Answer', -1, NULL, NULL),
(2, 1, 'App\\Answer', 1, NULL, NULL),
(2, 2, 'App\\Answer', 1, NULL, NULL),
(2, 2, 'App\\Question', -1, NULL, NULL),
(2, 3, 'App\\Answer', -1, NULL, NULL),
(2, 3, 'App\\Question', -1, NULL, NULL),
(2, 4, 'App\\Answer', 1, NULL, NULL),
(2, 4, 'App\\Question', 1, NULL, NULL),
(2, 6, 'App\\Question', 1, NULL, NULL),
(2, 7, 'App\\Question', -1, NULL, NULL),
(2, 8, 'App\\Question', 1, NULL, NULL),
(2, 9, 'App\\Answer', 1, NULL, NULL),
(2, 10, 'App\\Answer', 1, NULL, NULL),
(2, 11, 'App\\Answer', 1, NULL, NULL),
(2, 13, 'App\\Answer', -1, NULL, NULL),
(2, 16, 'App\\Answer', -1, NULL, NULL),
(2, 17, 'App\\Answer', -1, NULL, NULL),
(2, 18, 'App\\Answer', -1, NULL, NULL),
(2, 19, 'App\\Answer', -1, NULL, NULL),
(2, 22, 'App\\Answer', -1, NULL, NULL),
(2, 24, 'App\\Answer', -1, NULL, NULL),
(2, 25, 'App\\Answer', -1, NULL, NULL),
(3, 1, 'App\\Answer', 1, NULL, NULL),
(3, 3, 'App\\Answer', -1, NULL, NULL),
(3, 3, 'App\\Question', 1, NULL, NULL),
(3, 6, 'App\\Question', -1, NULL, NULL),
(3, 11, 'App\\Answer', 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD UNIQUE KEY `favorites_user_id_question_id_unique` (`user_id`,`question_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `questions_slug_unique` (`slug`),
  ADD KEY `questions_user_id_foreign` (`user_id`),
  ADD KEY `questions_best_answer_id_foreign` (`best_answer_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `votables`
--
ALTER TABLE `votables`
  ADD UNIQUE KEY `votables_user_id_votable_id_votable_type_unique` (`user_id`,`votable_id`,`votable_type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_best_answer_id_foreign` FOREIGN KEY (`best_answer_id`) REFERENCES `answers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `questions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
