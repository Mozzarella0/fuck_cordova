<menu>
  <!-- <div class="menuBack">
    <div class="menuBtns">
      <div class="menuBtn catch" onclick="{ go.bind(this, 'catch') }">
        <img class="menuIcon" src="./data/img/catch.png"/>
      </div>
      <div class="menuBtn" onclick="{ go.bind(this, 'develop') }">
        <img class="menuIcon" src="./data/img/develop.png"/>
      </div>
      <div class="menuBtn" onclick="{ go.bind(this, 'record') }">
        <img class="menuIcon" src="./data/img/record.png"/>
      </div>
    </div>
  </div> -->
  <div>
    <a href="/">home</a>
    <a href="/catch">catch</a>
    <a href="/develop">develop</a>
    <a href="/record">record</a>
  </div>
  <script>

    // this.go = (content, e) => {
    //   console.log(content);
    //   riot.mount('#content',content);
    // }

  </script>

  <style>
    .menuBack {
      position: fixed;
      bottom: 0;
      left: 0;
      width: 100%;
      height: 10%;
      background-color: #eca400;
    }

    .menuBtns {
      position: relative;
      bottom: 0;
      left: 0;
      width: 100%;
      height: 100%;
      text-align: center;
    }

    .menuBtn {
      cursor: pointer;
      position: relative;
      height: 100%;
      width: 31%;
      display: inline-block;
    }

    .menuIcon {
      height: 100%;
      margin: auto;
    }


  </style>
</menu>
