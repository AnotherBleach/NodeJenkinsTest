import * as express from "express"
import * as path from "path"
const app = express()
app.use("/static",express.static(path.join(__dirname,'static')))
app.listen(8080,()=>{

    console.log("Server Start!")

})


