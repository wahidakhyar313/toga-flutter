class TogaDraft {
  final int urutan;
  final String nama;
  final String namaLatin;
  final String detail;
  final String kandungan;
  final String manfaat;
  final String imageUrl;

  TogaDraft(this.urutan, this.nama, this.namaLatin, this.detail, this.kandungan,
      this.manfaat, this.imageUrl);

  static List<TogaDraft> getTogaItems() {
    final List<TogaDraft> _togaList = [
      TogaDraft(
          1,
          'Adam Hawa',
          'Tradescantia spathacea',
          'salah satu tanaman hias dan sekaligus sebagai tanaman obat dengan tampilan sekilas menyerupai tanaman nanas. Daunnya tumbuh berbentuk roset berwarna hijau keabuan di permukaannya dan ungu di bawahnya',
          'Carboxyrnethykellulose, dimethylsuffoxide, acetylaminotfluorene, dimethylsuffoxide, aqueous crude extract, zat 2-AAF dan banyak lagi senyawa lainnya yang bermanfaat untuk tubuh',
          'Menyembuhkan penyakit bronkhitis, pendarahan, rematik, disentri, sembelit, anemia, batuk darah, bengkak, dan luka-luka',
          'https://bibitbunga.com/wp-content/uploads/2017/02/tanaman-adam-hawa.jpg'),
      TogaDraft(
          2,
          'Adas',
          'Foeniculum vulgare Mill.',
          'biji adas (Foeniculum vulgare Mill.) ini salah satu komponen yang terkandung pada minyak telon. Adas yang berasal dari Laut Tengah timur ini tumbuh membentuk rumpun dengan tinggi 50-200 cm. Mahkota bunga berwarna kuning dan muncul dari ujung batang',
          'Anetol, minyak atsiri, fenkon, bergapten, stigmasterin (serposterin), dan lain-lain',
          'Bahan campuran minyak telon untuk menghangatkan tubuh bayi, memperlancar ASI, mengurangi rasa nyeri pada saat menstruasi, meningkatkan cita rasa dalam masakan.',
          'https://bibitbunga.com/wp-content/uploads/2017/01/tanaman-adas.jpg'),
      TogaDraft(
          3,
          'Akar Wangi',
          'Vetiver',
          'tanaman sejenis rumput yang berasal dari India. Sesuai namanya, akar dari tanaman menghasilkan aroma yang wangi. Aromanya yang khas disukai manusia namun lain halnya bagi hewan, sehingga akarnya biasanya dikeringkan dan diletakkan di lemari pakaian sebagai pengharum, sekaligus mencegah keberadaan serangga perusak',
          'Minyak atsiri, asetat vetvenyl, vetiverol dll',
          'Mengusir serangga, mengobati rematik, encok, pegal linu, luka bekas gigitan ular, dan meredakan bau mulut.',
          'https://bibitbunga.com/wp-content/uploads/2015/08/akar-wangi.jpg'),
      TogaDraft(
          4,
          'Alang-Alang',
          'Imperata cylindrica',
          'Tanaman yang dianggap gulma ini nyatanya memiliki banyak khasiat bagi kesehatan manusia. Selain sebagai tanaman obat, daun alang-alang juga dapat digunakan sebagai bahan bangunan (atap rumah dsb)',
          'Fernenol, kampesterol, skopolotin, katekol, asam oksalat, silindrin dll',
          'Menurunkan tekanan darah tinggi, sebagai piretik, mengobati demam, dan sebagai diuretik (meluruhkan kencing)',
          'https://bibitbunga.com/wp-content/uploads/2017/02/tanaman-alang-alang.jpg'),
      TogaDraft(
          5,
          'Angsana/Sonokembang',
          'Tradescantia spathacea',
          'Angsana terkenal sebagai tanaman pohon penghasil kayu terbesar dengan kualitas tinggi. Selain dimanfaatkan kayunya, ternyata angsana juga merupakan tanaman obat yang memiliki banyak khasiat bagi kesehatan tubuh.',
          'Saponin, falvonoida, minyak atsiri, resin, polifenol dsb',
          'Mengobati batu ginjal, sariawan, bisul, kencing manis, luka bagian luar dan diare.',
          'https://bibitbunga.com/wp-content/uploads/2017/02/tanaman-angsana.jpg'),
      TogaDraft(
          6,
          'Antanan Besar',
          'Whorled Pennywort',
          'Tanaman ini tumbuh ditempat yang basah seperti rawa-rawa dan berasal dari Amerika Utara dan Hindia Barat. Daunnya tumbuh menyerupai payung dan bisa digunakan sebagai tanaman aquascape untuk posisi depan (foreground)',
          'Tanin, madecassoside, vellarine, mineral, brahmicacid dsb',
          'Untuk peradangan, lepra, disentri, radang lambung, demam, wasir dan radang tenggorokan',
          'https://bibitbunga.com/wp-content/uploads/2017/02/tanaman-antanan-besar.jpg'),
      TogaDraft(
          7,
          'Asam Kranji',
          'Velvet Tamarind',
          'tanaman buah yang memiliki ukuran sebesar anggur, bulat, berwarna hitam ketika matang. Pulp asam kranji berwarna orange gelap kadang kemerahan, dengan rasa asam yang segar. Di luar negeri disebut velvet tamarind. Selain populer dijadikan sebagai bumbu dapur, asam kranji juga digunakan untuk mengobati beberapa macam penyakit',
          '-',
          'Mengobati sariawan, diare dan gusi berdarah. Serta dapat mengusir kolesterol jahat di dalam tubuh. Caranya hanya dengan mengkonsumsi daging buahnya langsung saat matang selagi masih segar.',
          'https://bibitbunga.com/wp-content/uploads/2015/10/asam-kranji.jpg'),
      TogaDraft(
          8,
          'Awar-awar',
          'Ficus Septica Burm. L',
          'tanaman obat yang termasuk dalam famili Moraceae. Tanaman ini sering ditemukan tumbuh liar bahkan pada kondisi lingkungan yang tidak bersahabat sekalipun. Buahnya bulat kecil-kecil berwarna hijau dan sekilas nampak seperti buah tin',
          'Alkaloida, tiloforin, septisin, flavonoida, tanin, polifenol, dan antofin',
          'Obat untuk radang usus buntu, sesak nafas, penawar racun ular berbisa, asma, kepala pusing, mengurangi bengkak, obat penyakit kulit seperti bisul, mengatasi rematik, dan juga sebagai pencahar',
          'https://bibitbunga.com/wp-content/uploads/2015/09/ficus-septica.jpg'),
      TogaDraft(
          9,
          'Bandotan',
          'Ageratum conyzoides L.',
          'salah satu tanaman obat yang memiliki aroma tajam mirip bau kambing (bandot artinya kambing). Tanaman ini aslinya berasal dari Brasil kemudian menyebar hingga ke Indonesia. Bandotan sering ditemukan tumbuh liar di ladang atau di semak belukar. Tanaman yang berasal dari genus Ageratum ini terkenal sebagai obat luka.',
          'Saponin, polifenol, falvonoida, minyak atsiri, alkaloida, sitosterol dsb',
          'Obat luka, sakit dada, demam, sakit perut, patah tulang, pencuci mata, malaria, sakit tenggorokan, mimisan, keseleo, radang telinga dsb',
          'https://bibitbunga.com/wp-content/uploads/2017/02/tanaman-bandotan.jpg'),
      TogaDraft(
          10,
          'Bangun-Bangun',
          'Coleus amboinicus Lour.',
          'Tanaman yang berasal dari Afrika Selatan dan Utara ini sering pula disebut sebagai daun jintan. Batang tanaman bangun-bangun memiliki ruas-ruas, dan jika ruas batang menyentuh tanah akan muncul akar dari ruas tersebut. Daunnya memiliki aroma yang harum dengan rasa sedikit getir',
          'Kalium dan minyak atsiri (karvakrol, idoprofil-o-kesrol, dan fenol). Daunnya juga mengandung zat besi dan karotenoid yang tinggi',
          'Obat karminatif (peluruh kentut), laktagoga (pelancar ASI), menjaga stamina tubuh, menghilangkan rasa lelah dan letih, umbi dan akar tanaman ini mengandung forskolin yang diketahui dapat merangsang ereksi, sebagai tonikum jantung dan berperan dalam mengativasi enzim adenilat siklase. Selain itu juga dimanfaatkan untuk mengobati batuk, demam, pilek, sariawan, asma , ayan, perut kembung dan lain- lain.',
          'https://bibitbunga.com/wp-content/uploads/2017/02/tanaman-bangun-bangun.jpg'),
      TogaDraft(
          11,
          'Belimbing Wuluh',
          'Averrhoa bilimbi L.',
          'Buahnya berbentuk lonjong berwarna hijau, dan tumbuh bergerombol pada batangnya. Rasanya masam dan sering dibuat sayur.',
          'Saponin, falovonoida, asam format, peroksidase, kalium sitrat dsb.',
          'Memperbaiki fungsi pencernaan, meredakan batuk, sariawan, sakit gigi dan gigi berlubang, rematik, melancarkan pencernaan, gusi berdarah, hipertensi, sakit perut dan beberapa penyakit lainnya.',
          'https://bibitbunga.com/wp-content/uploads/2017/02/tanaman-belimbing-wuluh.jpg'),
      TogaDraft(
          12,
          'Bidara',
          'Indian Plum',
          'memiliki buah yang biasa diolah menjadi minuman atau bisa dimakan langsung, daunnya biasa dimasak sebagai sayur dan dibuat jamu',
          'Karoten, vitamin A dan C, lemak, Protein, kalsium, zat besi dsb',
          'Obat sakit perut, demam, mengatasi masalah pencernaan, dan biasa digunakan dalam memandikan mayat.',
          'https://bibitbunga.com/wp-content/uploads/2017/02/bidara-indian-plum.jpg'),
      TogaDraft(
          13,
          'Biduri',
          'Widuri',
          'tanaman yang sering dijumpai tumbuh liar di pekarangan rumah dan berfungsi sebagai tanaman obat.',
          'Saponin, sapogenin, kalotoksin, kalaktin, flavonoida, polifenol, tanin dan kalsium oksalat.',
          'Obat kudir, bisul, sariawan, gatal pada cacar air, luka kulit, campak, batuk dan demam. Akar biduri dapat digunakan untuk mengobati perut kembung, demam, pegal dan lemas, bisul, terkena gigitan ular',
          'https://bibitbunga.com/wp-content/uploads/2017/02/tanaman-biduri.jpg'),
      TogaDraft(
          14,
          'Binahong',
          'Basella alba',
          'salah satu tanaman obat yang wajib ditanam di halaman rumah Anda mengingat khasiatnya yang dapat menyembuhkan berbagai jenis penyakit. Tanaman ini tumbuh merambat hingga mencapai 10 m. Daunnya semi sukulen, tebal, dan berbentuk seperti hati',
          'Alkaloid, saponin, polifenol dan antrakuinon',
          'Obat untuk luka, ambeien, tekanan darah rendah, borok menahun, obat batuk alami, disentri atau mencret-mencret, gegar otak, eksim & penyakit kulit ringan seperti gatal-gatal, gusi berdarah, obat jerawat, mimisan, melancarkan haid, gagal ginjal, kencing manis (diabetes melitus), menambah nafsu makan, lemah syahwat atau impotensi, sakit paru-paru, menjaga stamina tubuh, pemulihan patah tulang, melancarkan peredaran darahm, melancarkan buang air kecil maupun buang air besar, mengobati radang pada ginjal, pasca operasi, pasca melahirkan, sesak nafas, maupun usus bengkak',
          'https://bibitbunga.com/wp-content/uploads/2017/02/tanaman-binahong.jpg'),
      TogaDraft(
          15,
          'Bitter Berry',
          'Choke Cherry',
          'Tanaman yang memiliki nama Ilmiah Prunus virginiana ini merupakan salah satu tanaman buah yang juga berfungsi sebagai obat. Buah bitter berry berbentuk bulat kecil berwarna merah sampai hitam, rasa sangat aneh, kecut atau cukup pahit.',
          '-',
          'Mengobati pilek, demam dan penyakit lambung.',
          'https://bibitbunga.com/wp-content/uploads/2015/08/bitter-berry.jpg'),
      TogaDraft(
          16,
          'Brotowali',
          'Tinospora crispa',
          'Daunnya berwarna hijau berbentuk jantung, batangnya membelit, berbintil-bintil dan berasa pahit',
          'Alkaloid, pati, berberin, zat pahit pikroterin dan kolumbin',
          'Reumtaik, hepatitis, gangguan liver, demam, membersihkan luka, penambah nafsu makan, menurunkan kadar gula dalam darah (diabetes), rematik, malaria, dan lain-lain',
          'https://bibitbunga.com/wp-content/uploads/2015/05/brotowali.jpg'),
      TogaDraft(
          17,
          'Bunga Desember (Blood Lily)',
          'Scadoxus multiflorus',
          'salah satu tanaman bunga yang sekaligus digunakan sebagai tanaman obat. Dinamakan bunga desember karena bunganya mekar pada bulan Desember. Tanaman ini menghasilkan umbi dan bunga yang berwarna merah, bunganya unik berbentuk bulat menyerupai kembang api.',
          'Saponin, polifenol dan flavonoida',
          'Mengobati luka bakar',
          'https://bibitbunga.com/wp-content/uploads/2015/08/bunga-desember-indah-berkelompok.jpg'),
      TogaDraft(
          19,
          'Bunga Kancing',
          'Tradescantia spathacea',
          'salah satu tanaman hias dan sekaligus sebagai tanaman obat dengan tampilan sekilas menyerupai tanaman nanas. Daunnya tumbuh berbentuk roset berwarna hijau keabuan di permukaannya dan ungu di bawahnya',
          'Glutamat, saponin, minyak atsiri, flavon, gomresin, amaranthin, polifenol dan dekarboksilase.',
          'Obat asma atau sesak napas, peluruh dahak, radang mata, diuretik, disentri, radang saaluran napas, luka atau koreng, penambah nafsu makan, dan sebagai obat batuk',
          'https://bibitbunga.com/wp-content/uploads/2015/03/gomphrena-flower.jpg'),
      TogaDraft(
          20,
          'Bunga Lilin (Lollipop Plant)',
          'Pachystachys lutea',
          'tanaman hias sekaligus berfungsi sebagai tanaman obat. Bunganya berwarna kuning tersusun ke atas menyerupai udang, itulah kenapa dijuluki sebagai golden shrimp plant.',
          'Alkaloid, polifenol, dan saponin',
          'Obat diare dan juga obat cacing',
          'https://bibitbunga.com/wp-content/uploads/2015/08/bunga-lilin-lolipop.jpg'),
      TogaDraft(
          21,
          'Cakar Ayam',
          '-',
          'Cakar ayam atau dikenal juga dengan nama ande-ande lumut merupakan tanaman hias sekaligus tanaman obat. Daunnya unik menyerupai cakar ayam',
          'Saponin, polifenol, antrakinon, flavonoida',
          'Mengobati kanker dan tumor, serta berbagai penyakit lain seperti hepatitis, batuk, radang paru-paru, tulang patah, diare, infeksi pernapasan, menghentikan pendarahan, mengatasi bengkak, mengatasi panas dalam, dan memperlancar aliran darah.',
          'https://bibitbunga.com/wp-content/uploads/2015/08/cakar-ayam.jpg'),
      TogaDraft(
          22,
          'Ceguk',
          '-',
          'Ceguk atau dikenal pula dengan nama melati belanda, udani, bidani, kacekluk. Tanaman obat ini tumbuh merambat dan menghasilkan bunga berwarna merah muda.',
          'Alkaloida, saponin, polifenol, resin, minyak lemak, trigonelina, gom',
          'Mengobati cacingan, sakit telinga, jamur pada kulit, sakit kepala, gangguan pencernaan anak, becek pada wanita, radang ginjal, perut kembung, dan disentri',
          'https://bibitbunga.com/wp-content/uploads/2017/02/tanaman-melati-belanda.jpg'),
      TogaDraft(
          23,
          'Cengkeh',
          'Syzygium aromaticum',
          'tanaman rempah yang digunakan dalam bumbu masakan. Tidak hanya dimanfaatkan sebagai bumbu masakan, cengkeh juga memiliki manfaat untuk kesehatan dan kecantikan.',
          'Minyak atsiri, saponin, flavonoida, fenilin, resin, ugenol, vitamin A,B dan C yang semuanya sangat dibutuhkan oleh tubuh.',
          'Mengobati infeksi pernapasan, mencegah peradangan pada tubuh, menghitamkan alis mata, meredakan batuk, mengobati sakit gigi, menghilangkan guratan pada kulit, menghaluskan  dan mencegah kerontokan rambut',
          'https://bibitbunga.com/wp-content/uploads/2017/02/cengkeh.jpg'),
      TogaDraft(
          24,
          'Ceraka Merah',
          ' Plumbago indica L.',
          'Tanaman yang memiliki nama Ilmiah Plumbago indica L. ini merupakan tanaman yang berasal dari Asia Tenggara. Ceraka merah dikenal juga sebagai akar binasa atau mehulatu. Tanaman ini banyak dimanfaatkan dalam mengobati berbagai jenis penyakit.',
          'Plumbagin, lumbagol, zat samak, leukodelfinidin, steroid.',
          'Mengatasi penyakit rematik, antimikroba, antikanker, antifertilitas, mencegah kelumpuhan, pereda sakit gigi, pereda sakit kepala, encok, dan kardiotonik.',
          'https://bibitbunga.com/wp-content/uploads/2015/04/ceraka-merah.jpg'),
      TogaDraft(
          25,
          'Daruju (Mountain Thistle)',
          'Acanthus montanus',
          'Daruju (Acanthus montanus) merupakan salah satu tanaman obat yang memiliki daun berwarna hijau gelap, mengkilap, dengan panjang bisa mencapai 30 cm.',
          'Alkaloida, asam amino, falovone, polifenol, saponin, asam fenolat, asam p-hidroksi benzoate, asam p-kumarat',
          'Akarnya digunakan untuk mengobati luka, cacingan, bisulan, kanker hati, obat batuk, pembesaran hati, maupun hepatitis. Daunnya digunakan sebagai pereda batuk, anti neoplastik, anti radang, sedangkan bijinya untuk membersihkan darah.',
          'https://bibitbunga.com/wp-content/uploads/2015/08/daun-daruju.jpg'),

    ];
    return _togaList;
  }

  static List<TogaDraft> getFavoritItems() {
    List<TogaDraft> _togaList = TogaDraft.getTogaItems();
    return _togaList.where((element) => element.urutan < 5).toList();
  }
}
