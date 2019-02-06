Category.destroy_all
Comment.destroy_all
Post.destroy_all
PostCategory.destroy_all
User.destroy_all

categories = [
  {name: "Sci-Fi"},
  {name: "Fact"},
  {name: "Tech"},
  {name: "Random"}
]
Category.create(categories)

posts = [
  {title: "My Sci-Fi Theories", content: "Ubi a dolore legam quorum. Se illum deserunt voluptatibus id ex fabulas
    philosophari, ita doctrina exercitation o legam officia voluptatibus non
    mandaremus fugiat si ingeniis tractavissent, excepteur ab voluptate aut qui
    incididunt se laborum, te doctrina coniunctione. Sed nisi excepteur est ne
    occaecat ne litteris, arbitror tamen aute constias nisi ad eram commodo in ipsum
    tempor.Sed si velit mentitum iis arbitror id culpa arbitror. Ubi legam laboris
    excepteur o o aliqua voluptate de probant noster esse constias quid, ex
    excepteur id officia de est o quid culpa veniam, o quem offendit consequat de
    magna mentitum e quae malis, se quem instituendarum. Aut senserit o proident ne
    ut quid veniam aliqua occaecat, eiusmod culpa quid se quorum o an quae veniam
    aute offendit ubi cillum ex incurreret hic ipsum, a malis illum illum litteris
    sed qui eram cohaerescant, aliquip ad dolore occaecat. Tamen incurreret quo
    reprehenderit in id iudicem id probant, quid e admodum a nisi, cernantur an
    velit laboris."},
  {title: "10 facts", content: "Culpa hic fabulas, qui dolore philosophari, consequat reprehenderit an eiusmod,
    malis senserit incurreret. Tamen officia hic multos velit, se labore ne multos
    ut iis summis nostrud ingeniis ut hic multos export id admodum. Incididunt nisi
    eram de noster.Ingeniis quem summis de quae, quis senserit te concursionibus se
    ea et dolore sunt sint, ubi fugiat comprehenderit. O nisi fabulas fidelissimae
    non aute senserit quo tractavissent. An quis appellat singulis."},
  {title: "2019 Tech Trends", content: "Hic fore culpa non doctrina a se quae laborum. Legam nostrud qui sempiternum ubi
    quamquam ad fugiat. Ex duis possumus reprehenderit, tempor a te dolore
    appellat.Enim quamquam hic dolor esse a export pariatur eu mandaremus qui aliqua
    possumus de cohaerescant se commodo cillum anim voluptate dolor. Est non ipsum
    noster cillum ab ex do instituendarum ubi quo summis illum quem laborum, eram
    fabulas quo quem dolor. Quis transferrem voluptate enim admodum de ne amet
    expetendis deserunt, et hic amet aliqua illum ne nisi expetendis doctrina, e
    aliqua ingeniis nostrud o dolor ab hic fugiat cupidatat non quorum laboris ut
    distinguantur a aut officia a deserunt."},
  {title: "Most Random events in history", content: "Summis deserunt et cohaerescant. An quid illustriora, de labore fugiat quorum
    vidisse. Aut duis enim quo mandaremus, est ubi fugiat ipsum quem. Legam ex
    litteris nam malis o nostrud o legam incurreret.Arbitror non arbitror nam ubi
    laborum philosophari eu in quis cupidatat eiusmod eu illum probant te noster
    veniam. De eram firmissimum. Nisi concursionibus offendit anim nostrud ad
    aliquip si quid nescius o constias aut quid possumus e nam quid fugiat ipsum
    voluptate eu quibusdam minim anim an veniam ea aute commodo efflorescere e ea
    quis incididunt singulis, ipsum ubi hic esse constias."}
]
Post.create(posts)

Post.first.categories << Category.first
Post.second.categories << Category.second
Post.third.categories << Category.third
Post.fourth.categories << Category.fourth

users = [
  {username: "camacho91", email: "cacamacho91@gmail.com"},
  {username: "trump69", email: "trump@gmail.com"},
  {username: "kim-jon-un", email: "may@gmail.com"},
  {username: "theresa_may", email: "kim@gmail.com"}
]
User.create(users)

comments = [
  {content: "this is great!", post: Post.first, user: User.first},
  {content: "Make America Great Again", post: Post.first, user: User.second},
  {content: "Make America Great Again", post: Post.second, user: User.second},
  {content: "Make America Great Again", post: Post.third, user: User.second},
  {content: "Make America Great Again", post: Post.fourth, user: User.second},
  {content: "this is cool!", post: Post.second, user: User.third},
  {content: "this is sick!", post: Post.second, user: User.third},
  {content: "this is awesome!", post: Post.third, user: User.fourth}
]
Comment.create(comments)
