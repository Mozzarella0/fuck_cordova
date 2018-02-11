<phone-home>
    <div class="phone-container">
    <ul>
      <li each="{ key in tasks }">{key}<li>
    </ul>

    <ul>
      <li each="{ key in insectname }">{key}<li>
    </ul>
  </div>

  <script>
    // this.insect = opts.insect;
    this.insectname = opts.insectname;
    this.tasks = ['hoge','fuga','piyo'];
    this.update();
    console.log(this.tasks); // => Array [ "hoge", "fuga", "piyo" ]
    console.log(this.insectname); // => Array [ "manganese-ant", "mini-bulb-firefly" ]
  </script>

  <style>
    .phone-container {
      width: 100%;
      height: 100%;
      text-align: center;
      background-color: green;
    }
  </style>
</phone-home>
