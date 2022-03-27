<script>
    export default {
        data() {
            return {
                visible: true,
                image: "https://estaticos.megainteresting.com/media/cache/1000x_thumb/uploads/images/gallery/5e7c585f5cafe8134048af67/gato-persa-blanco.jpg",
                buttonText: "Ocultar imagen",
                opinion: "",
                infoList: [
                    { title: "Clasificación", subtitle: "Taxonomía", text: "Pertenecen al orden carnivora, a la familia felidae, al género felis, a la especie silvestris, y a la subespecie catus." },
                    { title: "Alimentación", subtitle: "La caza", text: "Los gatos domésticos son depredadores muy eficaces. Pueden cazar y matar aves, ratones, ratas, lagartos y otros pequeños animales." },
                    { title: "Comunicación", subtitle: "El maullido", text: "Se teoriza que los gatos desarrollaron su maullido específicamente para comunicarse con seres humanos." }
                ]
            }
        },
        methods: {
            hideImage() {
                this.visible = !this.visible
                if (this.visible) {
                    this.buttonText = "Ocultar imagen"
                }
                else {
                    this.buttonText = "Mostrar imagen"
                }
            },
            changeImage() {
                if (this.image == "https://estaticos.megainteresting.com/media/cache/1000x_thumb/uploads/images/gallery/5e7c585f5cafe8134048af67/gato-persa-blanco.jpg") {
                    this.image = "https://upload.wikimedia.org/wikipedia/commons/4/4d/Cat_November_2010-1a.jpg"
                }
                else {
                    this.image = "https://estaticos.megainteresting.com/media/cache/1000x_thumb/uploads/images/gallery/5e7c585f5cafe8134048af67/gato-persa-blanco.jpg"
                }
            }
        }
    }
</script>

<template>
    <head>
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

        <title> Los gatos </title>
    </head>

    <body>
        <div class="container my-5">
            <!-- Navbar con 2 links -->
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="#">Gatos</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Otro link</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

            <!-- Mostrar un título -->
            <h1 class="mt-3"> Los gatos </h1>

            <!-- 3 Cards -->
            <div class="row my-5">
                <!-- Recorrido de arreglo -->
                <div class="col-sm-4" v-for="info in infoList">
                    <div class="card">
                        <div class="card-body">
                        <h5 class="card-title"> {{info.title}} </h5>
                        <h6 class="card-subtitle mb-2 text-muted"> {{info.subtitle}} </h6>
                        <p class="card-text"> {{info.text}} </p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <!-- Two-way binding -->
                <div class="col-sm-2">
                    <input v-model="opinion" placeholder="geniales.">
                    <p class="text-center"> <i>Los gatos son... </i> {{ opinion }} </p>
                </div>

                <!-- Carousel -->
                <div class="col-sm-5">
                    <div id="car" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active" data-bs-toggle="tooltip" data-bs-placement="top" title="Gato calico">
                                <img src="https://petkeen.com/wp-content/uploads/2021/11/calico-cat-sitting-outdoor_Karen-Kaspar-Shutterstock.jpg" class="d-block w-100 h-50">
                            </div>
                            <div class="carousel-item" data-bs-toggle="tooltip" data-bs-placement="top" title="Gato siamés">
                                <img src="https://lolcats.com/wp-content/uploads/2021/08/siamese-scaled.jpg" class="d-block w-100 h-20">
                            </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#car" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#car" data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                </div>

                <div class="col-sm-5 text-center">
                    <!-- Mostrar una imagen -->
                    <!-- Uso de condicionales -->
                    <img v-if="visible" :src="image" class="img-fluid mb-4">

                    <div class="btn-group" role="group">
                        <!-- Evento para mostrar/ocultar algún elemento de la página -->
                        <button type="button" class="btn btn-outline-primary" @click="hideImage"> {{ buttonText }} </button>

                        <!-- Botón para cambio de imagen -->
                        <button type="button" class="btn btn-outline-primary" @click="changeImage"> Cambiar imagen </button>
                    </div>
                </div>
            </div>
        </div>

    <!-- Bootstrap -->
    <component :is="script" src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous" async></component>
    
    </body>
</template>