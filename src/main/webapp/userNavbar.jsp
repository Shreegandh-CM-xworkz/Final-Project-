
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
    />
  </head>
  <body>
    <style>
      * {
        margin: 0;
        padding: 0;
      }

      .navbar {
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.545);
        background-color: rgb(51, 49, 49);
        color: white;
      }
      .sticky-top {
        position: -webkit-sticky;
        position: sticky;
        top: 0;
        z-index: 1000;
      }
      .textDecoration {
        text-decoration: none;
        color: black;
      }
      .SellBtn {
        border: none;
        color: white;
      }
      .sellContainer,
.buyContainer,
.logoContainer,
.profileContainer {
    border: 1px solid red;
    width: auto;
    max-width: 100%;
    box-sizing: border-box;
}

      .bigContainer {
        border: 1px solid red;
        justify-content: space-between;
      }


    </style>
    <nav
      class="navbar border-bottom border-body sticky-top"
      data-bs-theme="light"
    >
      <div
        class="container bigContainer d-flex align-items-center justify-content-space-between"
      >
        <div
          class=" logoContainer "
        >
          <a class="navbar-brand mx-5" href="#"
            ><img
              src="https://www.x-workz.in/static/media/Logo.cf195593dc1b3f921369.png"
              alt="logo"
              height="50vh"
              width="60vh"
          /></a>
        </div>

        <div
          class=" sellContainer d-inline-block d-flex align-items-center justify-content-center"
        >
          <div>
            <div class="container nav-item dropdown">
              <a
                class="nav-link dropdown-toggle"
                href="#"
                role="button"
                data-bs-toggle="dropdown"
                aria-expanded="false"
              >
                Sell
              </a>
              <ul class="dropdown-menu">
                <div
                  class="container-fluid d-flex-column align-items-center justify-content-center"
                >
                  <li>

                      <button type="button" class="btn btn-light px-5 "onclick="GoToSellLandForm()">
                        Land
                      </button>

                  </li>
                  <li><hr class="dropdown-divider" /></li>
                  <li>

                      <button type="button" class="btn btn-light px-5" onclick="GoToSellFlatForm()">
                        Flat
                      </button>

                  </li>
                  <li><hr class="dropdown-divider" /></li>
                  <li>

                      <button type="button" class="btn btn-light px-5" onclick="GoToSellBuildingForm()">
                        Building
                      </button>

                  </li>
                </div>
              </ul>
            </div>
          </div>
        </div>

        <div
          class=" buyContainer d-flex align-items-center justify-content-center"
        >
          <div>
            <div class="container nav-item dropdown">
              <a
                class="nav-link dropdown-toggle"
                href="#"
                role="button"
                data-bs-toggle="dropdown"
                aria-expanded="false"
              >
                Buy
              </a>
              <ul class="dropdown-menu">
                <div
                  class="container-fluid d-flex-column align-items-center justify-content-center"
                >
                  <li>
                    <a class="textDecoration" href="land?id=${dto.getId()}"
                      ><button type="button" class="btn btn-light px-5">
                        Land
                      </button></a
                    >
                  </li>
                  <li><hr class="dropdown-divider" /></li>
                  <li>
                    <a class="textDecoration" href="flat?id=${dto.getId()}"
                      ><button type="button" class="btn btn-light px-5">
                        Flat
                      </button></a
                    >
                  </li>
                  <li><hr class="dropdown-divider" /></li>
                  <li>
                    <a class="textDecoration" href="building?id=${dto.getId()}"
                      ><button type="button" class="btn btn-light px-5">
                        Building
                      </button></a
                    >
                  </li>
                </div>
              </ul>
            </div>
          </div>
        </div>

        <div class=" profileContainer  d-flex align-items-center justify-content-center">
          <i class="fa-regular fa-user"></i>

          <div>
            <div class="container nav-item dropdown">
              <a
                class="nav-link dropdown-toggle"
                href="#"
                role="button"
                data-bs-toggle="dropdown"
                aria-expanded="false"
              >
                ${dto.getFirstName()}
              </a>
              <ul class="dropdown-menu">
                <div
                  class="container-fluid d-flex-column align-items-center justify-content-center"
                >
                  <li>
                    <a class="textDecoration" href="update?id=${dto.getId()}"
                      ><button type="button" class="btn btn-light px-5">
                        Update
                      </button></a
                    >
                  </li>
                  <li><hr class="dropdown-divider" /></li>
                  <li>
                    <a class="textDecoration" href="delete?id=${dto.getId()}"
                      ><button type="button" class="btn btn-light px-5">
                        Delete
                      </button></a
                    >
                  </li>
                  <li><hr class="dropdown-divider" /></li>
                  <li>
                    <button type="button" class="btn btn-light px-5">
                      Logout
                    </button>
                  </li>
                </div>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </nav>


    <script>
     function GoToSellLandForm(){
        window.location.href="sellLandForm.jsp"
     }
     function GoToSellFlatForm(){
        window.location.href="sellFlatForm.jsp"
     }
     function GoToSellBuildingForm(){
        window.location.href="sellBuildingForm.jsp"
     }

    </script>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"
    ></script>
    <script></script>
  </body>
</html>
