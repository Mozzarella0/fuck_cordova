<manage>
  <div class="insect">
    <insect>insect</insect>
  </div>
  <div class="phone-outside">
    <div class="phone">
      <div class="phone-inside">
        <phone-home insect="{ myInsectData }" insectname="{ insectName }"></phone-home>
      </div>
    </div>
  </div>

  <script>
    this.tasks = ['hoge','fuga','piyo'];
    const myInsect = () => { //持ってる虫だけにしている
      var obj = {};
      var name = [];
      $.getJSON("./data/savedata.json", (save) => {
        $.getJSON("./data/insectdata.json", (insect) => {
          Object.keys(save.haveInsect).forEach( (key) => {
            if (save.haveInsect[key] == 1){
              obj[key] = insect[key];
              name.push(key);
            }
          });
        })
      })
      console.log(obj);
      this.myInsectData = obj;
      this.insectName = name;
      this.update();
    }

    myInsect();

  </script>

  <style>
    .insect {
      position: relative;
      width: 100%;
      height: 30vh;
      top: -30vh;
      text-align: center;
      background-color: red;
    }

    .phone-outside {
      position: fixed;
      top: 5vh;
      left: 0;
      width: 100%;
      height: 100%;
      background-color: yellow;
    }

    .phone {
      width: 84%;
      height: 95vh;
      margin: auto;
      background-image: url("./data/img/phone.png");
      background-size: cover;
    }

    .phone-inside {
      position: relative;
      width: 74vw;
      height: 100%;
      top: 15vh;
      margin: auto;
    }

  </style>
</manage>
