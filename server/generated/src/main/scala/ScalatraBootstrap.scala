/**
 * Demo Service
 * Demo Service for swagger
 *
 * OpenAPI spec version: 1.0.0
 * Contact: dario@example.com
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

import com.wordnik.client.api._
import akka.actor.ActorSystem
import io.swagger.app.{ ResourcesApp, SwaggerApp }
import javax.servlet.ServletContext
import org.scalatra.LifeCycle

class ScalatraBootstrap extends LifeCycle {
  implicit val swagger = new SwaggerApp

  override def init(context: ServletContext) {
    implicit val system = ActorSystem("appActorSystem")
    try {
      context mount (new EchoServerApi, "/EchoServer/*")

      context mount (new ResourcesApp, "/api-docs/*")
    } catch {
      case e: Throwable => e.printStackTrace()
    }
  }
}