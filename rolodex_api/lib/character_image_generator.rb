class CharacterImageGenerator
  IMAGE_LIST = {
    'default' => 'https://media.gq.com/photos/5a3a84e592253b0ae57ef204/16:9/w_1280,c_limit/steve-carell.jpg',
    '1'       => 'https://www.looper.com/img/gallery/the-best-time-jim-halpert-ever-broke-character-on-the-office/l-intro-1619889611.jpg',
    '2'       => 'https://devsari.com/wp-content/uploads/2020/11/Pam.jpg',
    '3'       => 'https://www.looper.com/img/gallery/the-untold-truth-of-dwight-schrute/intro-1562620300.jpg',
    '4'       => 'https://i.ndtvimg.com/i/2016-11/sheldon_640x480_41478610926.jpg',
    '5'       => 'https://res.cloudinary.com/jerrick/image/upload/v1604604394/5fa451ea0c0a600020cc2f13.jpg',
    '6'       => 'https://i.pinimg.com/originals/c2/68/73/c26873991a131ba181f91fb258354bf7.jpg',
    '7'       => 'https://img.wattpad.com/77a4073337cea65e86f80f85f5976e6c5ce0000b/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f776174747061642d6d656469612d736572766963652f53746f7279496d6167652f59614e456c6f33454b524f5655773d3d2d3831303539383132332e313564626337376636346433663731353939343738333338373835372e6a7067?s=fit&w=720&h=720',
    '8'       => 'https://jonnegroni.com/wp-content/uploads/2015/07/the-janitor-scrubs-31805208-1024-768.jpg',
    '9'       => 'https://tvseriesfinale.com/wp-content/uploads/2016/02/my-name-is-earl-20090526144523_625x352-590x332.jpg',
    '10'      => 'http://images6.fanpop.com/image/photos/36400000/My-Name-is-Earl-image-my-name-is-earl-36403463-3072-2303.jpg',
  }
  
  def self.generate_image(id)
    IMAGE_LIST[id] || IMAGE_LIST['default']
  end

end