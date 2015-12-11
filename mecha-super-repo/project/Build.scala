


import org.stormenroute.mecha._
import sbt._
import sbt.Keys._



object MechaSuperRepoBuild extends MechaSuperBuild {
  lazy val mechaSuperRepoSettings = Defaults.defaultSettings ++
    defaultMechaSuperSettings ++ Seq(
    name := superName,
    scalaVersion := "2.11.4",
    version := "0.1",
    organization := "com.storm-enroute",
    libraryDependencies ++= Seq()
  )

  val superName = "super-storm-enroute"

  val superDirectory = file(".")

  val superSettings = mechaSuperRepoSettings
}
