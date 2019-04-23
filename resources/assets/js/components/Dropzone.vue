<template>
  <vue-dropzone
    ref="myVueDropzone"
    id="dropzone"
    v-on:vdropzone-queue-complete="showSuccess"
    :options="dropzoneOptions"
  ></vue-dropzone>
</template>

<script>
import vue2Dropzone from "vue2-dropzone";
import "vue2-dropzone/dist/vue2Dropzone.min.css";
export default {
  components: {
    vueDropzone: vue2Dropzone
  },
  props: {
    url: {
      type: String
    }
  },
  data() {
    return {
      dropzoneOptions: {
        url: this.url,
        uploadMultiple: false,
        autoQueue: true,
        headers: {
          "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content")
        },
        thumbnailWidth: 150
      }
    };
  },
  methods: {
    showSuccess() {
      window.location.reload();
    }
  }
};
</script>

<style>
.dropzone .dz-preview {
  width: 150px;
  height: 150px;
}
</style>

