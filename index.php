<?php get_header(); ?>


<body>
  <!-- HEADER ------------------------------------------------------------------------------------->
  <header style="background: url(<?php echo get_bloginfo('template_url') ?>/images/bg.jpeg);">
    <div class="container">

      <h1>
        COMIENZA UNA NUEVA VIDA Y ÚNETE AL MUNDO <br/> TECNOLÓGICO
      </h1>
      <button type="button" class="btn btn_blue">Comienza acá!</button>
      <button type="button" class="btn btn_green">Más Info</button>
      <p>
        Hay una escasez gigante de desarrolladores en el mundo y más aún
        en Latinoamérica, se necesitan más desarrolladores y Tú puedes
        ser uno!
      </p>

    </div>
  </header>

  <!-- BOOTCAMP ----------------------------------------------------------------------------------->
  <section class="bootcamp">
    <div class="container">

      <h4>EL BOOTCAMP DE PROGRAMACIÓN MÁS GRANDE DE LATINOAMÉRICA</h4>
      <p>
        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Totam
        in accusantum corrupti possimus facere hic optio eligendi asperiores
        porro laboriosam ratione quos repellat accusamus ea eum ex aut!
        Molestias eius!
      </p>
      <img class="img-responsive" src="<?php echo get_bloginfo('template_url') ?>/images/viewing-gallery-for-happy-people.png" alt="happy people"/>

    </div>
  </section>

  <!-- INFORMACIÓN ---------------------------------------------------------->
  <section class="informacion">
    <div class="container">

      <h4>SOLICITA INFORMACIÓN E INSCRÍBETE</h4>
      <p>
        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo
        id incidunt ullam illum accusamus pariatur placeat perferendis
        eum delectus elius odio est deserunt! Pariatur maxime veritatis
        aspermatur ad consequuntur.
      </p>
      <button type="button" class="btn btn_blue">Inscríbete!</button>
      <p>
        Vive la experiencia Desafío Latam!
      </p>

    </div>
  </section>

  <!-- CONTACTO ------------------------------------------------------------->
  <address class="container">
      <!-- Contacto -->
      <div class="contacto col-lg-offset-0 col-lg-4 col-md-offset-0 col-md-4 col-sm-offset-0 col-sm-4 col-xs-offset-1 col-xs-10">
        <h5>Contacto</h5>
        <p>
          <b>Desafío Latam</b><br/>
          Ezequias Alliende 2361 <br/>
          P: +56 9 5117 7975 <br/>
        </p>
        <a href="mailto:inscripciones@desafiolatam.com">inscripciones@desafiolatam.com</a>
      </div>

      <!-- Suscríbete-->
      <div class="suscribete col-lg-offset-1 col-lg-7 col-md-offset-1 col-md-7 col-sm-offset-1 col-sm-7 col-xs-offset-1 col-xs-10">
        <h5>Suscríbete</h5>
        <p>
          Lorem ipsum dolor sit amet, consectetur adipisicing elit.
        </p>
        <input class="email" type="text" name="" placeholder="Ingresa tu mail">
        <input class="btn"type="submit" name="" value="Enviar">
      </div>
  </address>

</body>

<?php get_footer(); ?>
