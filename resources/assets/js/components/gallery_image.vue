<template>
  <div class="image relative">
    <img :src="getPath" class="gallery__image">
    <i @click="deleteImage" class="fa fa-times delete__image"></i>
  </div>
</template>

<script>
import axios from "axios";

export default {
  props: {
    path: String,
    url: String
  },
  methods: {
    deleteImage() {
      axios.get(this.url).then(reponse => {
        this.$destroy();
        this.$el.parentNode.removeChild(this.$el);
      });
    }
  },
  computed: {
    getPath: function() {
      return this.path.replace("./backend/public/", "");
    }
  },
  data() {
    return {};
  }
};
</script>

<style>
.delete__image {
  position: absolute;
  top: 0px;
  right: 0;
  background: white;
  padding: 5px;
  color: red !important;
  font-size: 20px !important;
  margin: 0 !important;
  cursor: pointer;
}
</style>
