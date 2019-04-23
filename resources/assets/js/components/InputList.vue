<template>
  <div class="root">
    <div class="row">
      <div class="col-md-12 end-md">
        <button class="btn btn-default system-btn f-s-12" type="button">
          <a @click="addEmpty">
            <span class="flex middle-md">
              <i class="fa fa-plus"></i> Dodaj pozycje
            </span>
          </a>
        </button>
      </div>
    </div>

    <div class="item" v-for="(item, index) in items">
      <input type="text" :name="'item['+translate_id+'][]'" :value="item">
      <i class="fa fa-times cursor-pointer m-l-10" @click="remove(index)"></i>
    </div>
  </div>
</template>

<script>
export default {
  mounted() {
    if (this.values.length) {
      this.items = JSON.parse(this.values);
    }
  },
  props: {
    values: String,
    translate_id: String
  },
  methods: {
    addEmpty() {
      this.items.push("");
    },
    remove(index) {
      this.items.splice(index, 1);
    }
  },
  data() {
    return {
      items: []
    };
  }
};
</script>

<style>
.item {
  display: flex;
  justify-content: center;
  align-items: center;
  margin-bottom: 10px;
}

.cursor-pointer {
  cursor: pointer;
}
</style>
