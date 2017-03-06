# Panoply Take-home: Audio Targeter

## Background
At Panoply, one of our responsibilities is to help podcast producers manage, deploy, and report on their podcast episodes. One of our primary challenges is to ensure that when a customer requests an episode, a dynamic set of advertisements is delivered along with the episode. This application -- Audio Targeter -- is meant to provide tools to solve that challenge. The application will accept inputs from users (podcast producers), which specify how advertisements should be targeted against their episodes. It will also execute algorithms that can determine which advertisements are suitable to pair with which episodes.

## Instructions for getting set up:
* Download this repository (don't fork it because this is a public repo).
* Get the app set up locally with a `bundle install` & `rake db:create db:migrate db:seed`.
* Create a branch that you'll use to commit improvements to the app.
* Familiarize yourself with the existing code. We've created the podcast, episode, and advertisement models and one of the controller/views. If you fire up a `rails server`, you should be able to visit the root path and see some of the seeded data.
* When you're done with the exercise, zip up the directory and email it back to us.

## Your goal
Start building 2-3 features for the Audio Targeter application from the list below. If you're invited for an in-person interview, we'll walk through your features and discuss the next steps you would have taken to complete development.

Please plan to spend 60-90 minutes developing your feature(s). The goal of this exercise is to give you a chance to highlight your skillset, so don't get hung up on details and feel free to ask questions if anything is unclear.

#### Feature list:
* Build an algorithm that determines which advertisements are eligible for a given episode. The result should include advertisements that span the episode's release_time, include the episode's category, match position, and have fewer than 30 downloads.
* Build out a display that presents which advertisements match which episodes.
* Build out the workflows to update advertisement and episode attributes.
* Write a dashboard for podcast producers that shows the 10 latest tweets about their episode name.
* Make an importer that reads your favorite podcast’s RSS feed and creates a podcast and episodes based on it.
* Make a button that generates a CSV with the names of all advertisements and their download counts.
* Create an audio player that will play an episode's audio_url file (or a playlist of episodes for a podcast).
* Create users and authentication roles. Users should be allowed to view podcasts (and their episodes) that they have permissions for.
