import _ from 'lodash'
import Ember from 'ember'

export default Ember.TextField.extend({
  classNames: ['frost-text'],

  onChange: Ember.on('input', function (e) {
    const id = this.get('id')
    const value = e.target.value
    const onInput = this.get('on-input')

    if (_.isFunction(onInput)) {
      onInput({id, value})
    }
  })
})
