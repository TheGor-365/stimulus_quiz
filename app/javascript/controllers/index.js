import { application } from "./application"
import NestedForm from 'stimulus-rails-nested-form'

import HelloController from "./hello_controller"
application.register("hello", HelloController)
application.register('nested-form', NestedForm)
